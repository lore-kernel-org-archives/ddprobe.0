Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4640B41686D
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791103234; cv=none; b=WmP8EPDP2yr9+z+DHk6Oh34wNbXerp+29tAFBOZth1Y2djs4DOaBxmRr0AApNZQyghXvZpsUJWjBEA5YLPKvFY7VEk7pLx2yNhOTaSC60NI/f/eGEjvBsQuoIUyousZ3B4T/ZSvUv6ThU90KVr0ulZq2z91suzf1r+7tYgppzQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791103234; c=relaxed/simple;
	bh=moHnIDjl2jxtvAkpndyWLmwgZLBmwqYxMakshfqD02g=;
	h=To:Subject:From:Message-Id:Date; b=LEKwoR0266ALp16UXwBIDFUvT7oKBuT2Bgth4Za5LPtSCNViT2hjzCMEs1+dFfGjBRjnYFrsogwn44pUvOBJxYo4s9oCZMQoAJM3IxADOXSjUHgYsXqr4LyMFncdLEjwXgToHX/mNm3DrW0OD+gt3RYMezcYb2dVxpYFrVIk9+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmBG//A2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmBG//A2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA76DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791103233;
	bh=moHnIDjl2jxtvAkpndyWLmwgZLBmwqYxMakshfqD02g=;
	h=To:Subject:From:Date:From;
	b=XmBG//A2WU2TXMWy18e4ukDu6vwiIn/v9RZpbq9wyjpVRqclPRVCHDKTpnjxDwT3T
	 lQyxpYxbq5kT5eiDYYLUCyxXyv6+A7xwWYEHsdBHv3E6GETXzikkoBBR8D1lmyoG0W
	 tgTPlFmVq/hxev9fhMiuQR7rngZyve7NEniQ69OMzKYLno20nhQWFaR9P0iH/Eo1v7
	 8SG0N6QsGeVNR4S7cJVr5PZT+ab6xiTdf6D767f3NkxLy77ZD2htQ5sIMeX265IZ+G
	 YXkyD35tr3dM3/DMbgXh0xHa+YJr/TALvD5dInf/ETEJea554JzBq2B0mBVwi+tGjh
	 DxWj2pIWhFSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EACA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110323368.20085.11584086872505641868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000d2d6af63dbdd882492ce5578feda929f78b88fbc3837ef0aa439aad5d3748
Date: Sun, 04 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791103233
