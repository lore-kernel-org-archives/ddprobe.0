Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5368E188734
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744021195; cv=none; b=hDCJZiX7l4Ec1TrvoYiTxh73k3umgS0Ag5VzJXgOGy4UV+lwfIdV8Y2EdY4IPDqs7R8JtEFH2MbQP+gJhRMKOD5Jq+JuKEh9sZ8ilqza5tlBYJJAszhjxqZZBqvoJnTRpp2XQ3MpdKinFhQj3ZPtWwqcDSyC4iy6PRonZl5xkAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744021195; c=relaxed/simple;
	bh=jNFgXSFFralh5Z5Eh9Wi/MDzZTVrVpqsFvI7J9CecEQ=;
	h=To:Subject:From:Message-Id:Date; b=iqRHiEaMfavKvl7jhHnWCHpERNCq4GiJa6ChN0YIQtVFgL+nlu0y6OhICYZfLwBxLbohoGi6R38DKuH16//aIB0rKxmO0GnMetEFxAgwqxGqPS/uwnAV/ofKInkcBOsINdfGTRmcD4TMKaskZnc2xKk2Ov3xwDW8Xu+YXZfN794=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmB8t3Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmB8t3Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBCBC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744021193;
	bh=jNFgXSFFralh5Z5Eh9Wi/MDzZTVrVpqsFvI7J9CecEQ=;
	h=To:Subject:From:Date:From;
	b=GmB8t3CwpxtsyqlGMgf2AFbk5PxKh0f35+KsgiLuZHi1usWLdC2VPjlmEzMhBo89z
	 MxMXSxy7Th1/aZPC+OuldaKxlQUUvMASSOgTjgsPcae3nDjvXAhac82boGlFMHTM8Z
	 nDQmIKV1LKvGYTEAICwL6GRPHHEdHfkOPoGfgp3pClfA8FiXa0BBupM8NwFiIsGF+E
	 Ia+Vi6/xXfyOoY9+kbGWILHtZ5wE41MFE/3cOpJTEbo0lMosmmdVUfJvmFAaBeIvnW
	 aWaDUm8ePtV9nt40AtjHatzkVYQTpKenUdm4i+uH7d6Sh47OJYchtku0KZiSP+9LG+
	 KHB0rWkbCSGwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937CDC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402119358.379.16732195892277646838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9846cf0895c00a398920fede466d7649c8cecae8f92531386b64a8421a664e10
Date: Mon, 07 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744021193
