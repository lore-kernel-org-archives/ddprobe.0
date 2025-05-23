Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306801F9F7A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747989594; cv=none; b=IpTrPabemIEuULHD75wuc/ZH58yf99JSGe3ZMvXjcc9VCw9I71iyp5WxWb5OnWlSONQwJl7VtdrcM4+iaWUhMB9W8I/Dtd4O1Ry7DrHHc1CNuGGqEz9zdrl5EYcu1poHfVj0urZEDJ9+1YQLQr6aYkGMqWVvrwgmCHofOT1MF9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747989594; c=relaxed/simple;
	bh=o7VesJXfzn1dOQVXIXJj86Prgherrnbs7AR/qfRA2ac=;
	h=To:Subject:From:Message-Id:Date; b=facxSJucFUM0XUrqhIWlaRxt1pron3EMDWBCWrIKSvcZunLSdZ2ItgbL5+Z289lYo/CWqxvniS6rSeF2hO1j9KazEYq9be3Z/Ww16jxWEXKWD6utWaDR02O9j3dT3YKXUsmJC+kkdaUgw5zwqiHOKqyLKtoPYk/mUOmbjzhnlms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neiMqle9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neiMqle9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3820C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747989593;
	bh=o7VesJXfzn1dOQVXIXJj86Prgherrnbs7AR/qfRA2ac=;
	h=To:Subject:From:Date:From;
	b=neiMqle9IAsHLk524kk725SPsbnsOy5InVWuXKoCeSNVnShTZSDduapK7Cexa3def
	 V2RBHnS6oSRvl9XKILGoO3yYswf1Y2QZ2ytIPwbbsaqYchLGFqXFtEVwbXFZIiRrVQ
	 Sqf+fT0+u05iJsBqvTxAqok+8iD2co0R7tGEFfYh0vFTN9W/kGdlW4c2ct6fNH9lhQ
	 5NqYDFSNfwjeD0417zMqZ8tnNKqliREVQ4F7YQwUqwpnypNAyIUm8TSZP5CVTAk9Nb
	 8r1TWtOM7GNZVCagBv2P1GXFB6sDylARXT2jdteiTicXeip1z8njVSH/Axkb2HR9j3
	 nBQWlDnjsJhUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E67C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798959358.9076.980001706119827048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cc21a41651ec27aa439a2fc1242487c67a5952de1cd3f78cc802987e0975af
Date: Fri, 23 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747989593
