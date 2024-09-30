Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18804190482
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727727954; cv=none; b=oYO6Ni2HcDmnXLzxfLV3rtfKaIDh6XQw5V3iIU/pxQ49V3IWyMYyuMnv0pfcm8gFXKNcoc7GBfcKUegPFK3kB2hMMCOlf8518MpjJ8Yz91tIybFhYjgSsQDek2fieYz1d1BOFOJkX4OGrGDlbc5c3nfXSve3dP20UI4o8TLUnQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727727954; c=relaxed/simple;
	bh=3isnIVny9+vBR7Nc4ksJnUCOItPM88sRFTqsQskbiys=;
	h=To:Subject:From:Message-Id:Date; b=PRXGoPHY28rjqI8MHnwW8TxAfg7tO3+H6/OAA1ekhOIGLprniJ0n5TnbpgvLDEdvPGQj7PxWFzYJ7hivaMOhO6+ynAJsApvW5BzkbSAAWwEcvAERbQu2QZ8pC8M1ep8JIwLsM2wqJbi/rPGNEvy5kBjjjwlnGTUMBRssfShd6Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8DlNkcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8DlNkcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2356C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727727953;
	bh=3isnIVny9+vBR7Nc4ksJnUCOItPM88sRFTqsQskbiys=;
	h=To:Subject:From:Date:From;
	b=A8DlNkcIzTuO1aKvb8Y2orlvYllBTradHCvgDhfWRjKTFP51l41RYqh9cOuxAURNB
	 ZEtbPV5breDybgn5k1p4wYPXERr4n1jrPQK5tIfPaxpZ9jgRyMvSZL6gyjasAkr1oT
	 p39rpq9en71Bbu5cDJttKwJuibsssFYNfs5YxNVlrPPn95SNLG8PIiq/LGFoDywnk1
	 +hjahjGu4aki1voWonVB4m3rsqg7lYoalXximNyT+r/Arf7a/83G5ytPEWFaK+dWeo
	 daVDZdeo1mK8K7sMButrK/TsOiSlcBRvLoi9tdoQWHY9ui+0RFCufKWOUxAW0x4j5o
	 MfzbqHOvwOPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FCCDD1D5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772795358.2708.1395940748774222684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cc3dfcf35507263f76ee165c3db5257706fe618ab2b4cba0847d57cab04859
Date: Mon, 30 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727727953
