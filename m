Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13042A87
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746944394; cv=none; b=MNA0SO54a4XHXjfAlFVCbTbywqrikXsIkfFDB9YR9kASMpZaQ4hktzLCW18qHQSwGR8NhQ/e2358FQOcnGoCpWsqRJZU8pFjZtxbvB8vGRFsqcYUweetDPy03TMhhiFK7EnF+pVaDMXANPBTeC1/c2t687NFkPUCX4ZMEsOV+4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746944394; c=relaxed/simple;
	bh=/U7GR52QlKwokPfGSOMzduqrGBGL+kl02u7gAuPGA6c=;
	h=To:Subject:From:Message-Id:Date; b=Z5l0u3ZL9P7PMhfnSaJxq0/aXRhLBvh9qBrzqy30eueTTONoZVZgOKGdLo5/pf0XmeohJyVkUAgrmLAcz6znjQC4uSIVOnzVf+4uPCuTTG57dz6d8iQazhUGVPHKkl4KJtvWbAlOJNW6Odp96FgGs1yDvsMHgi4FlyURVTV/Cms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTwzLDxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTwzLDxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5927C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746944393;
	bh=/U7GR52QlKwokPfGSOMzduqrGBGL+kl02u7gAuPGA6c=;
	h=To:Subject:From:Date:From;
	b=oTwzLDxbdC1fEEkq271xHYJbZJJhTFvfVxZAdOqnBcO8m/ps1SBQdgPrayVvsE2ZZ
	 HNLNzPUxJI2x9uaQOPbWsLm6TzR0+B0c07PPpoON/TF53Sb/Qj1v1W0c0hhxDRFDdY
	 6Z6BbM6ssLLD+3TNFBah5CBW5fRVnoS1ZENAPJOvpwQcWljre2Ni6i3uOhZCfMtQQ6
	 Em8yCVtbNhG0D2nfYwOZTssWCqqJweqZ/6O5S5wUj6Ff6YO58XHcTl/yvZGt1LC+6g
	 YAhith7qp7c3l5UucVsIs8iB/aW04Js40uNXAxFiSePrp8VD9ngLkS+7XArZprQjk8
	 3HqHm6RjlJM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123DC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694439357.18321.4523908602935952299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd4829f9526d6ab8d503f5258d55bf2c120854930e9df8f68ceec614d66235f
Date: Sun, 11 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746944393
