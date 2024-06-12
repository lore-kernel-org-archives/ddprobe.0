Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206F1865
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718153903; cv=none; b=FM+6kPWb5+JjhKVyHgO91Lm6BQ+6EfOy26gxU7SDMGBInkqYTYGeRfx1SqfQS5UezsjSsHT4QSS3pp20JVq0EAuCQbl+UGMb1SlL0ECrkME7FcajYOwow99KQc6kl9GOOR59RyVews60n7d1NUeyeexStPF35XRu3m5Bj+tKKaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718153903; c=relaxed/simple;
	bh=ypNDIFc9SkuR5zxcXzLRPPi3GEUANcP1/NEdTiY28Eo=;
	h=To:Subject:From:Message-Id:Date; b=Hrd4p5muBK/bZebuf3GqdpN8507Jwuuetwqc76kkc8wZEX5t/8UX+opgLLGPIQXxksk/qMgRkzxwXEyd8rhh7Zgeevw3EwW/JcMDpWiIxGRO3eIE8KmZZHPCp0yLiKShdgoM3NEdnONgzGyFzBLT03+r43d87BJ7RbO1nvo5EO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXnyS64u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXnyS64u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D574CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718153902;
	bh=ypNDIFc9SkuR5zxcXzLRPPi3GEUANcP1/NEdTiY28Eo=;
	h=To:Subject:From:Date:From;
	b=SXnyS64uy5s0x92FcRrixcN9d/p5kMJZvTsllqXqSDHH4EM3W0VAzTxaqwXs59dNa
	 ++NmdTSKZzlFpc/jpn29Z/H4Gq/EDGU8RAqGuvKFB+0XBYx+6XCsGctYZ0o5IPT7I4
	 uQhqr21r8kMEgJM29TH1eS2pYz5I/MJGTlX/kcCi/Leyp7UYv2Wj4InuEW/ho8EZcx
	 Tffu9rknuMZ3yfa+gxfUq6XJHb5449hkuHDNBjH3NQ6HGuKnTp26L1tReIFH9B/r45
	 Aa5A0fd4ybhG1yOLzxfCmTb5rWfe6zETuj3H91REZ3wGUC2Tv9CtmdcHbwhxQBYi2S
	 YgzaIHumNXqPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29B2C27C79
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815390278.19762.16211309278760123696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ccaec2d71d1869b34c1454f372bf71a65254d38e4b23c09f49d49562ed7e0c
Date: Wed, 12 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718153902
