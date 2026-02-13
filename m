Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DA8225775
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771022094; cv=none; b=BaPZz7+G/3wrKUNCKjaEDz6cCYBqVLX0xlavHftO73ZDwwG1WDuj3Y5nOjZRdTsghsj7wbAOCAa8HIgbo+uV/+r4o1JPA7NkFOg4spRyiLTPuA9UZGx7tLVigUXxOGrz29RscC/8a2KMY1Haau8N2xdo/QQdaer5zLbaFMl2Bd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771022094; c=relaxed/simple;
	bh=p8pjG576a9YNF2audXQK8mfpJ8MNpM5uDK2IAB5H4G8=;
	h=To:Subject:From:Message-Id:Date; b=iBhatHiKYpeK8gla9K0dioBUr2J0jzgoQPj0KkeOn7tpMwNDSsNGSvvNI5fo6TuK2uOvqSEaboPJpmH21m98G+QcswNuEuCedrLI1EjRGS6iQRlXRglS9NaN6qWx9+C2fUetO05yfRamfV75nKAJd6FwJ5qVkVf25r1vGQRuuWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCR31Jf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCR31Jf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20A5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771022093;
	bh=p8pjG576a9YNF2audXQK8mfpJ8MNpM5uDK2IAB5H4G8=;
	h=To:Subject:From:Date:From;
	b=qCR31Jf8tVjmZ/buZ0EVbgOvmejH53suHbIOMR0jFvepmUDGn6Es/PolYv9LZFNr5
	 WpYYurwr2X/lT8uWP9lHoeFp6ZIxyx1k59OYdyvassj1pBupOkAIdsBLf7r5H5iI72
	 DSr4ITk9bGQPrxJFKOHRn8jranKjU0R0tPX1SCLxElYThjRiwUho5a1OZ57VPa0SIf
	 TflIXZKAbbAkL6HZxCXhAFb5fgX7waCBQ6OIPDQjN2X7HKlW6wTFyaCzTjsIjECGPb
	 BMcmEDOM70P0o0flSZPzIlXsDgEFRDyOcFI/2qJEfXqhSMkp2z2fZT9Y+lxL2OlEYT
	 4df6YB5UACcxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9744AEF99E0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102209360.22560.3648931442533821226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb01a70b19b6eb473093451330b93db3f16d5ae6487f207ef022e49beee6c222
Date: Fri, 13 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771022093
