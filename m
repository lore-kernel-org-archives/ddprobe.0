Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5A376E7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719044543; cv=none; b=onn4BEfQqvSJ5mtVGVNTstQoaj6D83RtToe0SP/UzwdxZO2GuMvd42ZC7WMJL73CnhtTKAieJZwBF8uyzewLL+7Wo+ajgbLOa1kaxbJl82Idc4bUR0vsEXdjNEGcuGTXgJ8TNSBSLDiFex68MFv9UDsI8quMf0srKbE+yGax6Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719044543; c=relaxed/simple;
	bh=ded/URXA/CgDBoEYa2Pj30udAAT6TapHpnADnqTRK0k=;
	h=To:Subject:From:Message-Id:Date; b=gy8hY4rvy0Hff0MuMpD9tTki2VyYU8I6LpekMaHmFWeeupwQh7pljZixgNW7IgdE8UG2oabkgRJR+SdCj022YX3bt8X3UQrUmlZbtxCrJQnCcKTXmLMZV495/58LrC5UoqO5Zdn3gipsCxGTg6uWSu7NQabPpPGikIywZkK/mks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAlEpm29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAlEpm29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2B5C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719044543;
	bh=ded/URXA/CgDBoEYa2Pj30udAAT6TapHpnADnqTRK0k=;
	h=To:Subject:From:Date:From;
	b=PAlEpm29C1zs+HewhkS+hlnjoh9KJpVNQ43aVRfktu88jfm49jBq9n9VVMn1cfrRM
	 r3Dsp/88VIb79YyHWHotO0tBGMRCeyI/4ulEvu+LJFbH0YzbJgCwPi8hM3Vzh+1iE2
	 guB27mGShsQkdxYzTctw0ZSiJSjyxdsvSSK0x9lBgalY1ElJkkO88zHsHe3PrMwnAK
	 kWFh9p0sWsmJTspYINumBUmCT+NjSbGo7oGGldw17IlKTq+CHtAgTul0ZBNdiugCgH
	 j0YTNGNyIfmT0r7ylJ4OileDtf9PKBRuZH9fyM/rUnBdFthCz8W6TLwXgbvCDaA8SS
	 SlLnI6BWlkzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D8CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904454280.24892.16284628096579014273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c53b6339b6054c43bd558a418ed9889e69995156f53ffdaf88957a07c5a3d59
Date: Sat, 22 Jun 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719044542
