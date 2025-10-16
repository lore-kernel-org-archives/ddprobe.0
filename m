Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145923346B5
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760633994; cv=none; b=HtKqK+kDPmK6c7wQfWZDRhjlafnlu1OpQoRpzTzSknh7S3O+ZfL86OBMiGOSGComf3NgB7K2xm1WUJmKRTPg9gy12zU7TP6mQe9IsX4Lcp+g3XKA1TOmzVIwVzociiLPJ6RFlLcg53otHk3jGaO4m9FsdVaB8nvbtm6rmFm7hlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760633994; c=relaxed/simple;
	bh=uExw9xV/PQ1WIxuqI6bGMncEwH34B/6cdHLwy99j154=;
	h=To:Subject:From:Message-Id:Date; b=SiUGYwr4AsFUFeryWbNlu8sVlsw2+W5LfAWfCZokQo7ikyAvFAMaapsWBUM13Es2+r5VDpD9/bt+xVJf2aP5qxy7PgSLIL8r63gZD4gais6NBVw1mEdUfO9/0+mepnIBP7mIBQ0ImsecGrwZdUd7KWZH9K6l2afNwnQrPM/54oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYJH+PsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYJH+PsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF0BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760633993;
	bh=uExw9xV/PQ1WIxuqI6bGMncEwH34B/6cdHLwy99j154=;
	h=To:Subject:From:Date:From;
	b=pYJH+PsSA6ncmU2T7Y69DSKxFcDmLKABenoG5Ep8QxRgGlUNsIRPgGmQ3gxgdiTQk
	 kBBvxXZp6A7BM6ajD9ljI+kdqm3qzhhr9K0v76Wnf+/UhtkHAya0PYwnTT0zSuEbzg
	 v19kX0AcO5EyKtmGhKPzpFmaeyho62TLiWprY/3jCUH/yFRweIj790fNVB3KaLf09H
	 nm4GRch19hDDg+1FY64lhzN9foI4vhRZ6FyIRhF2IO5abeAapNRvyscpi9UfD2iCa5
	 fTubsVzv0YQxuyBRCraY/nUtF/ca/OTo2SbH36yrXM0qx1q9ELU8wlbWFZnfdNJIP1
	 B4Nlo337whMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063399357.3311.6632647787618382254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9f55a7a0de4c34dcd27ddd4926010f6c6ab33612b54627a750c38117800cc2
Date: Thu, 16 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760633993
