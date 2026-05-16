Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317D827AC4D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778919634; cv=none; b=CVB8YnhLQpAUqlB0+q+TjxG0eFPCatFHuSvYtG3QyVzShlvBOptgRqfeZkA46L2Psn6Tr0sdKiIS9H+pPvjtqa/LtzFTJPzGKSOxLXkE9x9aOtMP0pWf5TxYPpS8tVt1s+jPtLZ99ngCp0HREMguHJUnPrmb2e61AqBjPOSZHX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778919634; c=relaxed/simple;
	bh=WCN1yzgs/XB6jaHDIRsvglkxTsGwiK0RTqRPirhc/pg=;
	h=To:Subject:From:Message-Id:Date; b=ZS9VO+OdaabIR97NZAnr7Veqfp2n5N9kqeWXx9gaziswPnWJcSlXSpr2MsgcjGocaJZb38yYvcaT9tRK+3eK38hQ2/4BQOriw8J+pqkfx5K01xWe8qH7xd3t0Z2aHSPcZbCpTeQ+/2FNAujCC5bGbQIo+yvWScsKXIb3GAwXknk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huScsxeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huScsxeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4406C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778919633;
	bh=WCN1yzgs/XB6jaHDIRsvglkxTsGwiK0RTqRPirhc/pg=;
	h=To:Subject:From:Date:From;
	b=huScsxeDLMBMYWU9ILEnNmzYR3Zt1L70RX1K1kA3/ukXiuvsL5zlbfeWzt7dsp6rt
	 psgEeF+K5kJGCoijbRqfdU/KfO8pClpVy7F0ASwR9vtG36MayhFsbkgA0nujLXaYbq
	 r62KYWZLc4WCKLWwrLMGfqNsLgtbVHdJK7XpCFzo4elEpMB53GdUcYz5FESKv4GfIJ
	 wpHlbV799glc9vqHg8njeYADsdLU4EcNVe3JU1zY114t1bieydI/oQUGsmGbOulUop
	 FELa7op9kdXqMaFmK7LCMgNXv2hG58P7pmoRzVJyXvu4OHOMapB5SYZU54Tc24YdVA
	 IhqsIuoxBRolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF146CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891963370.16479.7476577440774178177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6b4c4e5575dc1fcbafe74707f4642efbbceaf12ba3ccb421cbeac2d555809b
Date: Sat, 16 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778919633
