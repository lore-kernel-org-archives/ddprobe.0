Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EA32FF144
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784723314; cv=none; b=C1ZRi/ustsi/07BGVwHnvKqH3mQCby/MnDHNv2Xj0/aUBe1kNhjvPC8K4NtvcHP9o02dtGwJZ6VhTZ+f+BY9ZqmDKR/J8tHmRPc7eZYrX+Jcg345EVvf8Lr9qgHU4Fu9oISQwksikk3rjxaUDEFDwIn1aadMZ4x1DvHnAO5AUpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784723314; c=relaxed/simple;
	bh=rCtxnLXjoI/NKaxUut6nyxLRX8JalyqYa7A8QKtZ8nM=;
	h=To:Subject:From:Message-Id:Date; b=ebpnROWlYGRPONs/yRFgFg6WFPFxbU2gW+10MOIGS/+mmLQHHAN2eIl2LNEl5WcufCCuIAiT56sD4NK0QyIZccjcNWx5Zez92/s44Y4kh/7YAumx7XCtU+B1k8Of7udw29i8bRoZPajgMjaPEkTRNJrGRYwIBl8UCS2sW1mYRdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smMy/4uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smMy/4uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EF8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784723313;
	bh=rCtxnLXjoI/NKaxUut6nyxLRX8JalyqYa7A8QKtZ8nM=;
	h=To:Subject:From:Date:From;
	b=smMy/4uzXB/tOOGChWyaSyNmeWD3g/uy7NdkAIiuF2TMVJKYGMZF2193H1FitOEzQ
	 hloDt9E25NGkLOL8dPhsY/swKrXzVJCMmhQQpUBlfNYYi1vEt2P6ZTnGCJFi5bWRG0
	 GnEF0O8Ef9sglJeUxDhyEChbB/zfb1rOUShchKjI18SAgS1Eyz96dGAq6vPmPTqCKf
	 zZL1PNi2PbgqqrgqXeV3jdANz+7LkQ0Kmu9KEYTW10qCbptHJG9xZ4CqVBKFp8d6Rd
	 z2SoCtXO2qNJpx91kEKwkDsK7E46x1pDI0AKkjuO4E/oyqdy2OUuraqK+9ZFh+iy4c
	 52KrHe9k2dHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F08C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472331374.30508.5379417030528048730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b0535c9379ea2c7006c8eb88e20c5b3b30feadb35e21031249d07b0306a88
Date: Wed, 22 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784723313
