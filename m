Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FBE26C3BD
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786771234; cv=none; b=UcXsgRb/boRVuECn336CqUHnGBrdm6PuyGeRGMCyeaQzfrjDpcDgOKts3qgUl0zkTUv1UexHwss1dt/fkCpn9OVxYuhww4vqc2elHpUz23z+HWOYCC3stpUQPFIFRbbX4W5SSk4fxNKHmywM84KlEfJPWe59QVaVaNnjULgEW48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786771234; c=relaxed/simple;
	bh=x0jorxHJsZzc0cOIpD54haME3c3Xz8IU0zNVyxjif7c=;
	h=To:Subject:From:Message-Id:Date; b=Rq81n4kwH1rCW2S3dkPuL6vc4wQwKV1pECCxhZbPeMvbLIy/Q8VFCmKHynMGeu6th37yHrXyGyIYZtlK++tbWyxJvlzR7MKO4Y+LuXempJm8og/uOLaykjebJELxf1p8/gRoRaZv8pkISqY2soxPK9Nejv4JmcIZFmJM9gH3kcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV1ze8SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV1ze8SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD95CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786771233;
	bh=x0jorxHJsZzc0cOIpD54haME3c3Xz8IU0zNVyxjif7c=;
	h=To:Subject:From:Date:From;
	b=OV1ze8SEMV4SjDxPa60EUbRA8QoNRnID3ZgZoCJk+bXg4ZXuHgnJZTV3ww6Dr7xYP
	 x5yigN0b3yTikQ1jdOa3pd9Tttc9IAW1Y2w+ohR3RD98WLGjF5lRodsbt9Ceo1+Sve
	 GhVv++7BEKhFkN04VZJxSBfKGYDlbCp6NaZYS6FnekO/crVsbveoOktDL2Cb+rEK8a
	 688dnMDpH55qyApclieCRFedgmGntjnp5vSRNSc6y19ohM5qOT8HzZsDrESqmG7iuV
	 hcv5CF/ySHx3m0DSvA3p4iFMw0rNgSv3Q+dt73Sg2sfwsAL++a4HDzvTghXysi0OuB
	 w9O6TKReMJ7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6756C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677123373.9144.15906157612921630768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9203a9f39d220a6d2aa8bfd5770da11423c81761ec97b14ef283ffad258afaf6
Date: Sat, 15 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786771233
