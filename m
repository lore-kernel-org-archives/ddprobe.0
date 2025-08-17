Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F7191F89
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755407394; cv=none; b=uw2sjNHpKsq77LyJLoH3z8UQPfMm1ativ+eG95MXUdWF4A0uES3PLukrW2uxs/Wr2I1pmtokfrwbhpKJkBKbutNniA79GtM4jMoz5B8JDbutIZuWn03hb3Et4xH5A7fStPkywBC/YEebRCDhGd23LYeavf7ROEiY7EgfX29HGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755407394; c=relaxed/simple;
	bh=Ioae3gPFPy2DtKK2mZ4YrtekoTRQ91sCzzC3gfbebYI=;
	h=To:Subject:From:Message-Id:Date; b=eKrQidCTBkK+g1vUYBCRcNA8XqnuN6h4qmDvdt43I1CV6NLvQxT7SOjCuZ4NGUMTDlKKoMH403S02hfeyHGK4LcMyG3UOTbMJ2qJk5+JILGD3Y+VWy5aLY8u5SJIVbwqdmDApeBwGHfR5Qr6gM6i+JFB2bznN3BHGdn/XQ5751I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvO/PZBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvO/PZBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FEFC116B1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755407393;
	bh=Ioae3gPFPy2DtKK2mZ4YrtekoTRQ91sCzzC3gfbebYI=;
	h=To:Subject:From:Date:From;
	b=PvO/PZBYZfQNbgV7SQUK0rYploALkQ90xmf2el5ghPTmhn7sbYMWAvyp4bU27hVhX
	 SgvPpREBMyaSw3PtqkHKrWl+4U7ZaHo+sdrTVKDUC6lAxfVhitZs/3AYonn/a+xIFA
	 dCjKXqhmAkXGPD5uTFM15hKpHdWQ6kT1b+25SJ+MgPEbCS//FLAe7gB19goewAP73D
	 ilGZt6yiTxpI2Sc7GoaPLhvgnTVRwKgrKS399LbCVTrACBUKT9q+AJTID1/BRelQl6
	 CHpDn7wkntcJWj0KAB8FPOCCkoEJ7gtfqrkQqQYvcyFW+qVz8M3mZHmWXFIjsm+3e1
	 4GMnbgW+ShJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A7CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540739358.31843.18008281353251614605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11061f5090ee6aeaebf0da4362a99d9747c99d170fdbcf7dfd6e6e9ec91ec537
Date: Sun, 17 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755407393
