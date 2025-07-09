Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FC328C5B7
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752056394; cv=none; b=mcxwyvuTwyLO1NVHBqa8V+RczW1AVMcMHen/MKkeNO8hpzvBHjOtSHXnqKvhmxw744j338Vx/obfzWy1/vUiBX6PSD9jM0BSHNTrk5Ni04BMlPFsE6BcuURqlvZsJsuMge6oDfvSgcvDWca6L17Ewt0eA6ktYqZz5k4TLCSa5B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752056394; c=relaxed/simple;
	bh=bcf6yUkrHkxF86MB7zjSJHQpXVe0IRfDsjmp702g0WM=;
	h=To:Subject:From:Message-Id:Date; b=lQv2IyjozuzTldexbACrrVZD5bhXaiAwuXnl5aNUM+Bmui9RGoY6tkkC5E6WJUXFWFt5A3nE8gI2pF599BgYWPI3esvreWvWsd/XR3UGoob+tXpxTeNcMnjxO19NLthGomrwzhlEK4rQJRSuwn70GzMw40l3DcRUN+CgRdof8GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP/yn1r4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP/yn1r4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44CAC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752056393;
	bh=bcf6yUkrHkxF86MB7zjSJHQpXVe0IRfDsjmp702g0WM=;
	h=To:Subject:From:Date:From;
	b=sP/yn1r4dnaiVtMYj5aOf64dn/cv17xmaYv2fu5IFFUA5vXama4ETaw8amtPaQGf5
	 2Y2GtAz27c2QV4VeuDTFN6OMxATiWcoQrLk8Q5eJFYWGojAnXZ1xJqAQ88gCG1j+mO
	 Uoc2X2si8TJWyOGo+sBrLzfSuI6Fh4ItLOY8E2cHaRYQUJsD6QnPPo8z+1SvVNBLVC
	 7uQNkjnfZ2x9HqkNZ3LZ0M2gTEAT/+XMteTT/F9EzxrtczZD55BXGD62iFhQJF54GI
	 xV0c4wOZbIIHZ8lYKW4OoSt8oXByyZo5eMyCwXnkVts+2TXJHukWMq5iHHoxWyMYid
	 UaDABGGJJ+sxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CAC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205639359.14898.13852253621553279303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d6177c68d35c185334ccc29280a129596d96e1146c51ac81e7769dce13bf87
Date: Wed, 09 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752056393
