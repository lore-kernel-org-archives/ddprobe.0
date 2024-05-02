Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA5219F6
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714629743; cv=none; b=FusLHk6nNvGOKAXIvxbeiiXL7X63ChvrS/P4u1It9DetR7mOtlSoC2EKqf2gnzdjFgsAWL2Za6IGgvqJP7+gskt3DtWpWQPxPcikx3PXOcWdmuxKYBHCdEfuQzdRvKkce43wmawMBHXcWgY3dllxHHngF6iKinqVAh0TXtE6K+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714629743; c=relaxed/simple;
	bh=5RdmhpC6p5FOUx7i2fJ+6zHf7mtNoYrMU/2ZkWtkMpk=;
	h=To:Subject:From:Message-Id:Date; b=gSyCrln+5kju4Zt9UJJWeoVJzmLEHxoTnjbNJDwSpqpfkvsg1XxXaNvu/5Th2/HZeWln+YjLXF/YmL1NetqgetP02FYy8W2VWhL3vZdxSWu5MnilAJDQ1oRCRIp98TDBzCAUQjCoUmsN2JCwJyL5L+AjnKf+BmrI3FONLs6a13k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBm3wtYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBm3wtYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B3CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714629742;
	bh=5RdmhpC6p5FOUx7i2fJ+6zHf7mtNoYrMU/2ZkWtkMpk=;
	h=To:Subject:From:Date:From;
	b=LBm3wtYbBhQT9ZTWv6rgskH4543muA7mAXTMOzasnOtDaXm6dj9eaBSSrYe4Qmvr9
	 zyvcOYuHCEIV/NjQvL5Pcfq7vqBTnh0X8rKD+Kpkrn9nbVgZYhsWAKagtk3r5caCPk
	 dy7HJQPU4oobMeLdWTFVksW3uYBcvT+ln3z0YKIk4/RjjYxLOprmnCiUG/PtDLYOqo
	 a2IMw6A0Z0g1c7VcZ4aFcDE77401P5zzNFeFZUQltOyAm9Wg2Li9C3gqieV02B6hVd
	 HSx3kawaK65QjY+TX9yMgzt7JxuOlHcKuZSKutJ+RXS3oK2G32QzSHk+WUyUvMI//3
	 J8BK5nw1HYhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BDDC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462974279.2801.13213258665182087869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69999a866fab58663162f6af26711086995fa0d6d7dc8f493187265456bcfbfa
Date: Thu, 02 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714629742
