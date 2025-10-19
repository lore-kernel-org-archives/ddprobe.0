Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406092512DE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760873995; cv=none; b=Y4U/JiuuVYDFkvekQlx5zA9VqC0aRJBdS5LyW0l2Od5NqWwaVBrq9yQAHu0PD6V84RzxRsm1gdFfxg+UcbB6032mdsW+yiuu7ruWQK6t9fmCXEX/BDMQ9Ku+4+kzSsuPnN2JAD/QGPKummGpYMDTd3ZLUBqkbm/m1Xeg2SHWmqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760873995; c=relaxed/simple;
	bh=/HfuVP8gSZATEFdHKWSZ58xKGJkwUZjvJD76aodo30M=;
	h=To:Subject:From:Message-Id:Date; b=ZFo9HOYHFHwoxc1qofFXF/7uG/mqmTG6ehxf63YqcTjqTpyEk3c2mXWSttY3v5EQuvtE/t2gyk8EintMxA2tA2iw4L7t1rPKRoUVjEH2D2P7CTuHxZcGT7V2Jk8LohDaThLb07EoQfh/bBSYvR3SdEnZVun+q8GiOkO7GISXu00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej5LK+1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej5LK+1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E42C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760873993;
	bh=/HfuVP8gSZATEFdHKWSZ58xKGJkwUZjvJD76aodo30M=;
	h=To:Subject:From:Date:From;
	b=ej5LK+1s1kHdMUrom88BqLIpzxuKRYy65cOO/z8sXmW4OoA19peOXSMdNV15zBnGV
	 TAxeze4BmLd+hchhvL8lNeRhCdDbPOve2XB1zbz7JArnw8weOkLPLnc2dypTFNaBO4
	 H4kgijFSlNZB2KVS0oBnY/blZqi5Xy2VWeqfcm41NCQApPcE7juVjybXUJP/QbcW0g
	 oAol0KlnOA+J6XUUaj4sG3jyxMT1BDEcyGKMaw1JC/GZoIdnpJD6/ga2MKId9F+u3N
	 LkUxtV1otSH7vJhya1MsuSTAFMxZokgXuIx3jVS4B+85MNUrzrryXnlwuasoV/bvfB
	 TBglZWsl0CYJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93186CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087399358.32722.17170241901133679330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8509ea2c67286c0630e11bf2088a486ffdcd64a03a59036521e29dbe33cb8d
Date: Sun, 19 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760873993
