Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6472773E0
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756406995; cv=none; b=F4nAy3xzQ8H5U6WbnefD/8Emr23kphzifRi0p/PerLu+5ewl3Gw5tVYP2mZy/0n5+VuPhA8el437GPGK2CUHJEhOwkOWk19u/b4XlsIbzDEmssijMb6cxzu2uQeWI8l7cxqGjGxPaGs6q4LF8N96nwE2Tb4u4xl10xlgvNmp6o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756406995; c=relaxed/simple;
	bh=f0juXWODbMoMwJDsx5M5UkNNojCA41KW9HX/AuAef3k=;
	h=To:Subject:From:Message-Id:Date; b=YgMEDjLJ0/bZkIPRNmsu8aaIqEGAIkPhszCiRvUW2o0WJ15L07DqGEgS7kgmiGMY6oPIKL5uNDJXgYHO79BT2Egen0wnXm/TeuhafkXbRw4ilMi/tGGm3pVlbTZiuH/SqsxclVDg/9cFf7DJscGv2y+PIS9gx8UX4xVkaM53GCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PttDbca/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PttDbca/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756406993;
	bh=f0juXWODbMoMwJDsx5M5UkNNojCA41KW9HX/AuAef3k=;
	h=To:Subject:From:Date:From;
	b=PttDbca//gMiph1LfyraZymY4EMKKD06Z+7Lcu+i6U/PV/g6YIs+dF3nLp6uQ/RaZ
	 nU6Quv8m9hQUtgqTIYKGWU1R+SIqW8XxD3mKjLTu00zbz+sqtPThty9r0EB4SliAj1
	 A1JACtiCv3BCYVqRavFV0ssFzj6khMIEc10Tvn5GV9TcnP0FJ3laWfnsv4BuUzqBaF
	 WR5Gh5EbcIZTRodcHz4sYI2fHZ1y1tLgt42uhtOik4IS8LniT7oB87cuPC3CUUGZsa
	 7A1pB8WFHULcoB1/eNsIW2cgpu8bmL0YK8Kz3sTg0fkX7EeQww8GbwSB5bxXQpshZr
	 Ssmo+FjL2mxlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F987C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640699358.21299.16017252468624324244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b7eb794c2ea7e651b2a36fabee9d292087f0346ea687b3963fb1c2c830943f
Date: Thu, 28 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756406993
