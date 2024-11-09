Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC1913D502
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731182756; cv=none; b=VHKUNtMtP1a9r4B7HZxTYo1MlpbJMikXZmypv0KtFNOXUyHkQdp3/erix/c2fgOdcRtymD9n+DpTfPBoZALlNXhsxKBu7T3z2FD0JoLchjB0NuKqg5/5xxgnvAEbDfmk3Kt+r16LR7taRirZF2opolzRVH8uZMy3iqWDmvX4Gks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731182756; c=relaxed/simple;
	bh=p4ltX/RU58T8CGRCczu4ELD23y9IrVDA+7zvQtvVhsM=;
	h=To:Subject:From:Message-Id:Date; b=haJ/RwGxq7Lxy3zb/ssdVsbp6O1g8sdosOOybD3YSDjAgBnYMDAFOaggLYX/4L6d7DeBecfIWHnVOfTqbJch6hpZUKFzyH9JelwY9HUlFJe/YVB3CaQ8w3tfSwWh+QUWnx2FDhauZO2oHRKmNyIurhNFHUK2gcLp3Uc/zs4farg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECVtxLCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECVtxLCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA8BC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731182753;
	bh=p4ltX/RU58T8CGRCczu4ELD23y9IrVDA+7zvQtvVhsM=;
	h=To:Subject:From:Date:From;
	b=ECVtxLCLXzQalEz3iVYdQ/8NNDZgjE4KCUhOd4ckVeacnBKLRf5RR1ChUw0/qxrdW
	 KSu4MJvJalEA7YvdxOp2YLhk+WXzJmNVkkZM+KW4veBSblE/j8+u0Rs0ZI4c3e+Fg+
	 1hOzx8K0yGcVcXcqEqR/B5xzREQrlk4utFk02oo4r7pX3fiUHZha4xnTPii+vtF7u5
	 B0d3xmmmA3uXCGHU+QM1hAHGivblpaIU6GaHPBTrwVZPSBoNXhGiNuJLhQ+n/SqUYv
	 vLLR2KA2CHr/OBwH8KrZkKAMU9lqIe/KgEOmHs+Zqj2k4EH4qSzYS5jvvH4jpr1KLd
	 aQrDugxIi0ZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98695D5E37F
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118275359.6892.11373683514357846107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5918afa3d3b7466e0da80ff6c6c25629107f555433d50abd8c7b24b1b12fd8df
Date: Sat, 09 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731182753
