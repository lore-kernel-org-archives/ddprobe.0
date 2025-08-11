Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF292E0B58
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754936394; cv=none; b=ZVInkSZlD7nYIVIhSWDM9XBjuszkQCYDD+ixl5qi/OD3DJhQdVz0MOceNr3rnJ+ttYuN7BCQ5z2Gp/lmZm2qrawaD3YpS+br4SG6QnjHR3BcZpE/rsAJ9L4bBfW+QBhRg6NZ5lTrJG+G2RAldtnXZNfmrVs/9FJT6RUVWbXrEdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754936394; c=relaxed/simple;
	bh=4+3lw1SBJ3TBO/KoQ2CP7T270FpcTgtK7TeQQ2XQY9M=;
	h=To:Subject:From:Message-Id:Date; b=HHu97hSwG4jKpqwexKGFm0Ivsg7orV2b0AcgSckGifnaRw5UI7Gw6g/GbmlUvg4k7Ma/I1AXtn6qsPOMFAOXEfhOcBqOFpWatehIYMncs9S9RNS4Td9YJAdOxe1brKmxdBjoBqL1PQYc4TWfAIgBbEFXdGepPwSfe7D3Dl2Hp/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVpGzUqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVpGzUqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D885C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754936393;
	bh=4+3lw1SBJ3TBO/KoQ2CP7T270FpcTgtK7TeQQ2XQY9M=;
	h=To:Subject:From:Date:From;
	b=pVpGzUqN7TzJt1Zo5n8WN14aDziYYXS3zVtUaIk5H7+eC91cvpxuyIhiF87NABvXz
	 gNHYGwlF/iE00+6WmiGHB0KsLS8rZhBhQbswmZbSorPoZJVx7ElmqlB7wLiN42AoFV
	 aOpmlsvbzw2xUQE3GI5Pqx7jcOCLLb4e72MVPC9BWmR9E+eR/IM62Ra1rXBka20Cnn
	 GROmnPpXuupqt1aGTnZt4+iGGWYUENPTrBbTZYDMnYS59L9ybAvFY/mz9J1gUmApCp
	 yt4qFMaye4vAoeCfiVddCsQavx1ToGOCRJQTIGeAj0iZaP7yAAxs9/aVcwH/lMRJAP
	 QOUPed0BLX9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25DCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493639357.30180.3097943787330568225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbf2c77e41348cedde22eb9fcd375c93c53ceda9ec9835365692478612b0f8a
Date: Mon, 11 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754936393
