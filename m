Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8916087B
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726590354; cv=none; b=G7hN0oxPCygPH8WumJkFa2t3y2eTV4oe15nA+dIIHR2XcFwTzF/8BeC2INUIiVWyxoJ9mnY4FuYF50/mU0xr8HReIi65TMTNJdVCRNolmf1ooI+CgpxH2biT0FXWTCv00ZpfOlzVDle2/YkMZ2LXBIt/MAHX4r/Mq2xHABJ765g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726590354; c=relaxed/simple;
	bh=APqxVIMRElA7xUqBr+LaN/WHkZHouzoZOs79Fx/jfic=;
	h=To:Subject:From:Message-Id:Date; b=O4gizqtJC0u5uyWTBY4UaCuSGcCADaOVvJyZGiPx++IcJ81T36c59h+vnJ8d8sBt/mcXPyw9O8v9CUdpdAJSd3yqYxza/IGT7b7/B5afbUWesCFphtlytJc9ZykGnTTPfUSa98K/dOtvfikteNDg2YJbc+Z87AHjCfuCDqSPFyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoTO7c9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoTO7c9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF777C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726590353;
	bh=APqxVIMRElA7xUqBr+LaN/WHkZHouzoZOs79Fx/jfic=;
	h=To:Subject:From:Date:From;
	b=SoTO7c9Dny66D2pXX4cn3/sGo6KvodtNNvd66W9d5W97UwaVscV7HEIhLqSo7ZMpf
	 Xabl/g4nl42dyV7JcB0U7IwuABdQz24Bwv5maPzyyAgaVeDhHnmnkrKAoO61N87FI/
	 fkqXB/4k0Yz976NFfmUf8U3gH/qlokNj7/jhcOEzcLPds/rNMeKDl0GjwU6Bncr0kz
	 j3gZT1M7f2Kaj0w7oeoY71o4Ffh93FigTe4RlfyXEzmqaIdv9UMCavXpCdd/orG3RP
	 3hclJboMxpmP1MioiUHruP9LxUkDQI4lA/r+xRPYHWwtfokKtTRIhdkkzXcmNANBUG
	 VRhrLPSFJq/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F65DCAC587
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659035363.27865.15408568044656020213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b57f1a9c95b6b405760b91360836b199987e04138ce2a9ce911a57a97c47eb1
Date: Tue, 17 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726590353
