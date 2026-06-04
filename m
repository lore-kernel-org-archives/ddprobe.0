Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBA01D7E41
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780616074; cv=none; b=hEX03zgjWBsvDIep5oX0WVTwqFm1TbJtbZ8KECtQ4P1P1Ph6rVHccfoozeuP9h7m7xorfNH0vyjzDjNFRVxq/EDv1hIWs2B1nZKuKFvtPO5v9ir4ZoMBKoSqHJBg+/GvIsYsxgDa0Iox8AUo+59/v+P/qhzfX/ZBNAqF9al8bYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780616074; c=relaxed/simple;
	bh=cfW1yLFaljcy+1McQIM8PZOR7VGPgOzpySiEDwiRAv4=;
	h=To:Subject:From:Message-Id:Date; b=hks7Wpox6jniQhjbfG2iit5Btc9h4bmEv0djGAirYx0MVBcHz3rDwawHH87Jokr8lZo3Pj5b5izZebNR3tw+mSUJ8r7W/M4w/SS4nlQR6mYUVhw5zfemhayKl6sicnUVX/vfMkZQ4204uTvRM0YVNGY9kflS+fHHes6gZe0etcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tkmi3zoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tkmi3zoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA5AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780616073;
	bh=cfW1yLFaljcy+1McQIM8PZOR7VGPgOzpySiEDwiRAv4=;
	h=To:Subject:From:Date:From;
	b=Tkmi3zoJiFF8+m0YCda8My1Ae6giRsSBCwze517TE5XcFR3EiE27vmHDp4ZIxPFfA
	 uOIQxzsOwnMFyiEBSG8VpRDhy9u4IV18fY0dv3Sor29tiEkiZ14QOuEnhW/mpiIAIL
	 USs/7cMVkZ4RbVYSwf8oXxmBajlO93cuB0RfyAnUMX7eDlfwteFzJ/MQqbT+c63JM6
	 g2oHMYJ2i3MQl91pWfUuPaN2nQejeDeax9lWDWG3KmoHYQXWWvgRjwHneWJeLGdQiU
	 hR7YSx5h2RLr/n/1XXXMgi1Ni/XES/8AICb1vAZyMmZCNutmW9B5oIzDEvJ0X2VNxP
	 2+gW9KBUFCoRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1462CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061607370.1110.9277277521057809397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a8dede96cb1041c8bc906a1b7d0639b68b5785497fa017436cb183cc8d0e95
Date: Thu, 04 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780616073
