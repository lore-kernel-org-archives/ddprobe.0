Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED141F3B85
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785810034; cv=none; b=cWr1q7odvVQqJmLiLlxif80NIXiZ6dA5AXH3SegWcSoicbmh0jCqX6+iyK5KwD8g8IZp5hp7Z859rYLL+we15/NwWv7hflPwnOXHwsWMZXPM+ihWE31l2kZfQrUSUN6yNA1u8iD5fUYyuAgWnMnu4pcvbxr47iQbBj3Uo3/Zp94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785810034; c=relaxed/simple;
	bh=P+acG7mcr6XzcsVq2Aa1sQi4pitTdFy+YZhJKZ2z7gA=;
	h=To:Subject:From:Message-Id:Date; b=P5zuOpCKLDxe8a5tvQMdaQEGOMbWPK+G/Y0vJFxmWvaDZEy38V4okUz8H4ldJJNXImoP7Viq+du9twBNi+jlwlghDpSBbXOM8cYS8XZ+HjjteonablBLIdq28VvHv03HFoVGI28yHUZaWHue0slewrh/UAc+gQRFTrQeWaCDld0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvLfu1X7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvLfu1X7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C1C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785810033;
	bh=P+acG7mcr6XzcsVq2Aa1sQi4pitTdFy+YZhJKZ2z7gA=;
	h=To:Subject:From:Date:From;
	b=FvLfu1X7ruZ8H7SCHePna+3PTPFHT4kzM629AQeMXBsGi5dX33gQ0awhMiTSRLTGD
	 LhSJK1Tm+8RzicjQecMeuA7yyN4vzZ6gXGHsNLhfOuqqpeSIDH//+lFm8rmQa3AbLS
	 zqlwVzuUhiFvHxIPmLjVlgtytefLCJhNSvSeCgKH/8v9Kax0uys2U8+b3+YnS2pQUb
	 YyVyC4b0hJ1NdpEiCDeccoP3fgcHsnH0Uwhk7tBtrPZsMV2o5MqhkVZ4h+0A1+gsf7
	 f/8ihkqA/nRx48PH0ir5g4jXRkA5YW09nCUWmnWBoBaD1wMyBpnePgEG2mYOXEkcci
	 mO5uqzde11ZKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA897C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581003369.24080.17007680029701471293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de3da028d54c69c671ad0b75f4df7467e940723e3e207ede939d81c4d28e25f
Date: Tue, 04 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785810033
