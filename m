Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136852E4266
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766490234; cv=none; b=u8GZalQBrH0ZMPaljKIPCexdHD+bIhLeSymG3x5Hscq7luREBPdQPw+RrtprSkohx0s8FVB1+pHTcMy3V3k7/ohdqqwGKhYPfurDxRCCAl8cigkSm0Iot3hQ6jCy6tsnP1IopREqo3T5ksVql+kIZcR4DLx6FxUVLXAgB6B3N4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766490234; c=relaxed/simple;
	bh=J4jiAJtsaePFZWWWODluH+EjDfV2dj6SliRwhE+afDw=;
	h=To:Subject:From:Message-Id:Date; b=VJkknlWJAouQDYyVe1PAD4420XrwB0cxsVoSiCOU9jck2BpZ2Lv/oAPpnq5qhb0g2izxoituRp9NEXCeXZ7Dlwf0fpPn1BVDTJTZkpIJh7I7+mrnctVvx5XVEktnQ6ouItS5GMCYMgRa2A00En6Y64B+i3e+dh2DCn9Pzx4giOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpVYK6ZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpVYK6ZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05EFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766490233;
	bh=J4jiAJtsaePFZWWWODluH+EjDfV2dj6SliRwhE+afDw=;
	h=To:Subject:From:Date:From;
	b=bpVYK6ZZroUJ6Ma4Gx7SY2kLBqrby1U1aAgB7uLmpEx0PNy7cK3gx6Nj+KK6vuL1j
	 vDLgNIm9gnt4qrKoF1qFqOqFP2kurpdO41eFNj33p/FjqteA/SxJ45+X6Rpu0abkTZ
	 LhIWxwSysNW1Dxq7zHELhgcESpN7TBNac9xR3uOd3qqHLh8zotwLgwZYDPl4rdlQ7w
	 oCaz46Es0aE+NRIcXY0szddmZSdchCgXmGzeg76/9MM9P/SBeHVLUjFaWZVdBzAlzG
	 TdmJi4o9Oi+dprvDPRWIqA473n27W8B0QRActitapby9/DcHKaihT2qfrO1x+Vxw0t
	 gdaah/qrWaGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC3E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649023358.11624.1120474623698161201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf276d475701835327e501bcfc4b1993310f594c6b63caab766cc9109b6c68cf
Date: Tue, 23 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766490233
