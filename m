Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DB013D503
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732731953; cv=none; b=kWall/ZTVcHJtkmenkiaB7NuyTKIDJErUJlVdyUZZGp0UQCMM9+MEvaaF8FQczs3xHmrMbPoVTeApw/M0pTP5wGWSa/FgewaA8izMgh+5yxxOzgpwKaurIHcIcnMJInf0Mxvb+238f5pQfqidSz0Jk8Y30CPsVbC2AckFckfjw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732731953; c=relaxed/simple;
	bh=GAhIQypfJ7ZNqzeDUDhZ0kyMJ4eHH3jTwZBNyOjeFgE=;
	h=To:Subject:From:Message-Id:Date; b=jP5GPiXd4HKrFAGdZkdN22ZSUFA/r7kl3M3jpH3Yg1iRlcj/3vGalVG7BxJNtPvS+vtA+ojzhWUd+bj0G0VmkcdD+GrxzbIqMyv601ugYEkMBy3YhKKBESzYbIP8FyaomJMEIYh0zFEhU4b/g/eUpwJT9LCIa527tAKDTy37HKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdmurAOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdmurAOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB374C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732731953;
	bh=GAhIQypfJ7ZNqzeDUDhZ0kyMJ4eHH3jTwZBNyOjeFgE=;
	h=To:Subject:From:Date:From;
	b=EdmurAOWm31wsYOyXS45J5XY/S71iD86nm5fj+Y+h8AKpyvf1/16N03eRqZ7yQl5h
	 29doo3PbCO4Q/Gjzmkr6pauQsNoTPn9oi2OqSDTUTjUT6hkKsdgdLaEMw4gvUmGlof
	 GUBM8wK9oHA33pp/hz5ZbG69W4xhoH+zoMz2dy5Zfd8Rdyj0H1DC+rZ61r0u4wCsnB
	 j/v5JD23QBUylSTEsc9dYLT6ZN9/MQUFuklbM95PIQVXTgZmFsKSZn0J/E4Ai3DaH1
	 zYwo4kGma3rzPVTLx0/k5uYz/sdKu86Ck1yatr7deTXKCY4u1LGpZpU2wOhcktz1X6
	 u0+EW9crdEvvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96514D6ACFD
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273195360.18837.7899104862832485172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55085140ca0d8b63611e61697ce6983faa1023c8bd50e0e75ae58ab901323eb8
Date: Wed, 27 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732731953
