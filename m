Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAD043AA1
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731422754; cv=none; b=AcikT2RiQVSwalCtQJykNIJA1AI5BdFq5mufdC9uFIJ0jTI1Uug77dSH/1Uk5/tzjOn4XVLMNTNbOKdopOKaWFJjTesgO9F5exrQhWqZD/38Bs+xZiNCXBsRLkRco3grJ8kSJfsSMbCOGh3xWBpsOUaxbuJ4vbTsfssHBU9AZz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731422754; c=relaxed/simple;
	bh=hfyJpMj4HORtO7Z2wiZqx8bKlEHImaac6T04ay8pD/s=;
	h=To:Subject:From:Message-Id:Date; b=AIMNW/lR9NoxnhNat+sq1joH03eKfbhC8/bp3zs3OIAnZQe5BCN4VXEV0E7WsrCPQrzzM1AfjncnGJxx7LlEvthCnfEo+XxPWXzfLCtw++CdiyjQjBtXYnzHAWwAsAoVOWLtLhqbADtsz8XLSTWIgX7xVimaVqGwTFpToXBjLlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqw1Sc+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqw1Sc+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE864C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731422753;
	bh=hfyJpMj4HORtO7Z2wiZqx8bKlEHImaac6T04ay8pD/s=;
	h=To:Subject:From:Date:From;
	b=dqw1Sc+p70KRTSoBjGD6BYAudL2qzyxOQqwRq5IYRslEH7L0iVO7UpAcu16x/2vyN
	 0GslXDxSmhzfRVi3gGm0Kv4bQ3nhxTTr6tiZI9pfIYRUC4hwBVMjcuZJh7hPXUCG8a
	 F5yZB/W8qcKDVqwxNLS05igboymd6+MhSoDMm24djcAHAbrizsmca8PSAiihubVRjv
	 ZVmhg2H5swmsRVX2XI3EL63PWMYue/y1NdoAhRwxwm/No6dglePgR4kSgbmVGsJgZn
	 PS2AYjI2d5ArYob0Um/GhGL1veHORHiSa32PzSVxDTGebms6iBoogVBEL1dt8iaxUF
	 /F6b+/0dONQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBF4D42B85
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173142275363.3331.7291020086686631002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42726c23c3a323a8d50dfa58929cdb191bcc8b3f88a0df1b3da94ba689dd3a00
Date: Tue, 12 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731422753
