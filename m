Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC51C69D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774484094; cv=none; b=mjmosArz/R2lgt3PAsKdK2A2zEyMN8xYFv5+W9dYNFNctjDEGiDMLhkxlEk8V1jzKmisZVyT6CIBS1nTVXrfNHz9U77DDGkpDmTKdNQtsATO96D7frKwDEx0gn1SbtZ1zV1BgVG7crvgNamOsn5CYbKe8iOgvfZy0ryTxysB3ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774484094; c=relaxed/simple;
	bh=HrBQlrQPDzlGHvo8iPusYTrB+AiS8UE1z2EGhm1QoJ8=;
	h=To:Subject:From:Message-Id:Date; b=hGMNDV2hDR4SdMEr+e1HRNQn+cGoLYMWo8Thua6tEcpf3ITo3qZnHoX1GaREPIfOsFYqMeDGrpb/7hwAQf0IroUKXsVUHORhi/U48+OKr+3Qf+8r1SaxR2LZ5xuD+BmLQqHwa3QTMdnHhpGrfkeoa26Z1vLYXZN+n79YKhJwf1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozoC0C6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozoC0C6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3487C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774484093;
	bh=HrBQlrQPDzlGHvo8iPusYTrB+AiS8UE1z2EGhm1QoJ8=;
	h=To:Subject:From:Date:From;
	b=ozoC0C6jlYaHkQrdpfu7bXU52wn5it9GQ/XCnqdqUasjYCpKYtmxJDK2hAq0fBLxv
	 Fazww/Vc3RjExqaAOQrfOye0kZkYPz9uS3NnaxwGvz1k9eYjEa6BkE1Nw5ORpKEmgY
	 QSpwTeBAiQSQfsI40KxCTCrQ5g2p/AyryI8nnYdTTN8EjJHA4P6LZ4elgTsDXmFldL
	 I80WcT7WT2HbRZGhprJmcq/GRbtljB7TpF3J3ojGn6etGOIIvi6lGMIHIOfreBBrvU
	 a1Ej4ECs/dUMvVNdntU+7PLhsiL8C2IpwEWx212DXIpKmDREFBap4emdo0rXHRFK5L
	 4dwOEtEvFwixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934A9109E52F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448409359.23951.5640928035996961064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac261c33e6f92393a1888ab39ea130b9294ff6c817fca816a2256103aa5e7b4a
Date: Thu, 26 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774484093
