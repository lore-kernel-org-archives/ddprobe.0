Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC5C30EF8F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757375994; cv=none; b=UIZZFwDTQCcuMXDF8lbOlVlydEfJvJeF7PcPhjuvgfEH1S1J15CuuoVq6Vqz29246KDWkTQ0tlCqKWtpffPBdB1XZcC4D319YD4VGVvQSinE0h7usVIafBSZERb4Khmnf3Jb2kvBBAOTvDXwGPeRo0y/00bL04qmFAycfhsYpD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757375994; c=relaxed/simple;
	bh=KvOmO4da9dKyPNEta9ctjHIiJZxaORqkIadIFbqQ45E=;
	h=To:Subject:From:Message-Id:Date; b=g4469pXYzalHpP5zqrjhmzBVinW+vHGqClkK+yCshzWJwdhoFIsyNo6LCT880wLBaV98uKOdW+TIrgF3FkjSZiNFOTf1oDoC9Wq7O/hlwL+DdrVrqzN5EWC7H1DkRH8ehNvVOr4CdkfF0qZboQ6ng4elewE+/LtpELlJ+gMcz+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm0HFBRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm0HFBRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A98C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757375993;
	bh=KvOmO4da9dKyPNEta9ctjHIiJZxaORqkIadIFbqQ45E=;
	h=To:Subject:From:Date:From;
	b=dm0HFBRpbKnCyJI71fHLzN2iVGFOJaY8EKKxzOkQ1zompBwmppGJLmwKRcQ/tFQeN
	 BYeIunQvMqr4zaIM/8DijvKYSGs2oUvZLH/puX60LvFK3/7IwuB+sZvnkyAwmFxITO
	 uF1/DCOUj7bRWUV557P5GUq15p6h8hG26PCGPoiBnpnfS8thwjznqfxFBY0cdyDy5m
	 D1IcaZfa0jAjgrvM+137F6rD/ZRgQaEUoVduzCeIdRpWoMvFZCL7WHta0eCWv4pxuJ
	 TrlG0Ms5G7phqEey+pwpfNNLXHXGhY2TjoAPgwt9pmRNt2DxhngxHa0zu+dMLFMRTM
	 Gyel/2DzVYX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F28CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737599357.16684.17130445380551397214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf27995caf9411257da8cc48e7577d77a5c11fc08523e7a62d3f6d9866be9260
Date: Mon, 08 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757375993
