Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E81274650
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761284993; cv=none; b=VC7/IG9Zog0CKEIgFd12QISgEIH9yb+U506r45QVnKzyWvsGNk2IrFL/DKGZ9WwkR1sZFTLPHKrB57djkmQj6sukDygtvDtoOo+d4/B/bsuZCUJ7/PrZkJItBDM3nF9YW0JNU7jQXzo8S+qiwKBmJdpeUfmvfX63KghTw9yhj40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761284993; c=relaxed/simple;
	bh=UqeBbOjME8N3LTZs6irW22IOBrTLguUo318S69uLNXE=;
	h=To:Subject:From:Message-Id:Date; b=cfxlHoxpw5zNGwsMCNVuMRjqZXX4lJQHgHWIoIGgg4LlQAOY43x5G8l7KEAas7T9714CK2QC/ofAIrzqcmPcFZ+vw0fdvYBBx/k9X6yl7NQ/0WpOhnMOPWmOZm3B4+TVIFjP8aYKcezemENR3QFaovt5Kbwv+8Rhp5BabCFPFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIEW4DJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIEW4DJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 963EBC116B1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761284993;
	bh=UqeBbOjME8N3LTZs6irW22IOBrTLguUo318S69uLNXE=;
	h=To:Subject:From:Date:From;
	b=nIEW4DJL3Q+nBsl6jbSc999UHUAgpAMpHkzS4akcZ79wzOH5tdouq4ODCHlMFwiF0
	 9uRljEOnL9evqDK4w9UNbNicIZ6IZQK6p1cg18es6JVl+Cj/skRhVOgmBBPc9Hs4hA
	 CwTnhQ4QRUqGlmxjlXxhXBVhAjm3FM8ynisUJ+StP08bMtHQFbcYEyhR1WGCm86BQY
	 1Q3Wqe+iiRHBemvct4QDmiORpp/yb/1ZFWSToCzU0/50XdB1oc7g5iRoNgJYKu0CuQ
	 vtzUqmR7CIkrOjCo6Ssn4pKgdCiaa+gKk0/pa7glask8cJ/A0x718R0eESbSxBuG8h
	 Hy0iHu5XSTlbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6CCCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128499358.17263.29164504487583609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06dcdbc212eff1f128b8b988aadb5b6d083bdf116f264d3ef8787f604888cf01
Date: Fri, 24 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761284993
