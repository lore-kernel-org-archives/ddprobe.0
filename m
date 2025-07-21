Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6EF293C78
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753096193; cv=none; b=CHU/AmxfoE8LHn1v3DKstFhadlyYOkKRcTd4PXuBuDmNfsrJPszNTftn3XZ9YfHx59lYCkPRwt9Gr+zbwkOUG/uLb9rvdk4yvrhXFDvbqu/8DO2qUFB43triD30izD2g4X/Ff2gFGk885Z18LnEWB5amSu6fSZoPyYuZNzUcMGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753096193; c=relaxed/simple;
	bh=4pcIZGKd8Ur1tXraBEQIPkuTgMTJfEkalvmy1ve8CDM=;
	h=To:Subject:From:Message-Id:Date; b=ichgP1Dg6QJY+yU1pcQSbbhECSwHTXn/aEHYlOsPkFPvPmyrRqHI2n6h5ViLdJy8S2LdfZod8qeirlcGFzgsRU3BReRdhxy4JbAVwm8Nji94ngjjtax2wtxYRVbVx2lrtkcBWFcD3jToCGHhNmATGZF2H0c7UAVb2Lb9wdshzxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/IR7M9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/IR7M9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD6CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753096193;
	bh=4pcIZGKd8Ur1tXraBEQIPkuTgMTJfEkalvmy1ve8CDM=;
	h=To:Subject:From:Date:From;
	b=T/IR7M9mtOMm2nGk+zRmINv4wAmQk/fOCRTCeMJGDaJBRtrslpY2t67ABo9D8IIcl
	 1JFCCjX3C5cYTdI8flIj1y8jqdjPqn2AuA/xr71X9tqKfmk0lV49P4Lf2zudDDjIHI
	 jS0efFXxlbsG+K6q2bUB4WhzjLRtUkEqnWni34WVLUZbW1/thV3F/mBNmL8xqj8Hlj
	 0JXzZWRkn1v2BXbeEOvTKaMVK8MIfVGzDeUHzxZ7X7y6bGaj+X+ruJTS37PXtzazJU
	 iLRvgKCIL4u25aSKGwF4SdRkfpZzROLqN4yV7O64+Lesn70FUVo2gEah7L4xGIhlPJ
	 ZzZsL2VY4K4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ADC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309619357.27214.10732443407086054520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad29c51de20cc0d8b91a627c76c25fc894a11f9c5deff2862898f44f3049ef8
Date: Mon, 21 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753096193
