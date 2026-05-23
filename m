Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153632D7D2E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779549154; cv=none; b=eF2dcHaAOCIE29uuMEmAUFMVJIO9WRUCDsDSOlQEQPMwzfoHZoKxnx2+9mpnJYUzUt3Vw0g2IyTcE3ikw24kDQdOhfXK1m+oxrQrMddtbS3XhQkj4PPziscRV6kR5Itvrgf1vu1z1x7+1L2wwC1I5qmVjPzl+FQWU79P1NvogV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779549154; c=relaxed/simple;
	bh=tqegnvMASYdEwg2hzgd480P0jdz+o1S0AXbxXIzJ0b8=;
	h=To:Subject:From:Message-Id:Date; b=J4FinARAf2X5PoAJ2cuezwAmqHr1xy2AkNHvCxE4Hd4ZjSzj4UCzFATUhwCu37U62ICEhjSYxuEo1ytsHnDq7tlojaOib0nBvGdevHbiDGGurW/TMoPglnSJsWhTHZOYFE2JMhtywbP1YgribOU3CzLRCuWWJFkkhflz+uDTOJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLoQp7nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLoQp7nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF727C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779549153;
	bh=tqegnvMASYdEwg2hzgd480P0jdz+o1S0AXbxXIzJ0b8=;
	h=To:Subject:From:Date:From;
	b=CLoQp7nYIqfmM5hPvmo3Frl+2D23sdn+ET9Q7rXs30poqCon6td7WI5gWnAtahF8T
	 3dmbxZPuFlrB3LiI6mbJjz3m/BmFQLzcubgL5L/+yGygFasqd/xtHxSRSnf/8rWqaC
	 UEpyQ9Pr8Tm5DBnvQr14tddCuJOAFOv7+H7heuqaCK6GI57QKWhspD+mNsPjtdYIGM
	 hA8pkUR40ER7bFieQPzfA4MUttDJ1nz3XN88swEd33F7ez3zTF3UuomyIieTSHv6c0
	 rAJkMNxYIlC2axydGUiTuCZvIdLh7Sh9XniDP7BxoGUqEq/Tl8TBfiqwP6AV2P+3Y+
	 hoJuTCpmZNWKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88EFCD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954915368.8214.1961538145779725070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5473c468321b5235014899cee0361bb4e4ab03a7494fde630cbb0618360b9b97
Date: Sat, 23 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779549153
