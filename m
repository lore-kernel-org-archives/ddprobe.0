Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FFF1465B4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600234; cv=none; b=frd4d/0N/vJH5FbXEC/sBCPAbxrYl4eOz3GkD+RcBu+0aEQzZkpAugkSgZ6g9LvAxXeavBRSFf0uNpP89OU+K1wDvFYl8JbROsE58zkK2EUMtpdDyVGcj6Zo+BlGXjzRxDw529OhXMf9vM1yDZJ3r06w3X5K6UQC3cST+JSjwKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600234; c=relaxed/simple;
	bh=OVkWD+hsd8q2PbqON3UaX9OyzKAjr/V6ZmX4SIbZqbw=;
	h=To:Subject:From:Message-Id:Date; b=eJXDd/xopMwv6CLyS9Go0vWf9soAN55FTMlatmtQPn0RVxsz0hmDXndE2PQUNocVII4V2YrFDWxeR8nNVSkgtaMwtZcnFAaWffiMKyVTC+YMNsLWDpP9JLaA3tUkfFg2gy6rrat214uIR2EHUdNCOEwUHImmNsN0Sbaw59NaPdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggROIHsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggROIHsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0EC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767600233;
	bh=OVkWD+hsd8q2PbqON3UaX9OyzKAjr/V6ZmX4SIbZqbw=;
	h=To:Subject:From:Date:From;
	b=ggROIHsfFLSMobc+Hj4vE6WkxG3xpF5ht1u0MtslWP2jBOiSy1DYLleVfweMSRpwb
	 mUbNuzUHFYc8q0N/BgYNArVH4NQ/itHkhI7SV7O0oR/1HbVCE0qrylTFc/8+iEkDi5
	 DY7sHmDb56bFPVTz5dITJ+pnyPn/RrYoM9SkoUlVtkuQLZFSmCk80xvhD7IeOvW30V
	 5IOjZWRAFpzYH7ESj2iZgoY755ZW/6IunmXf0O5QYoStCVqfvU40WfPb+VyqGHGmsa
	 i4ISjUtwZICDYcvNDiQFCdvzLtuRiM27Jt4Q2Y/zdkkOGao6lc+MObattZz+KKnYj2
	 ekm4twu9SDPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA8C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760023363.24906.10374716872379581846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab8bd8e8ea92ea78f4810231d2d35019c2f68c816bc6b474fae9ff321ffad2f
Date: Mon, 05 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767600233
