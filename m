Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CED27874F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786427434; cv=none; b=Pczy2y6G0H21Ko591sMScG/LcwCnr461vydehZOPRh96XwzDtkIuSoRUQTHR8hPUgZkLwn2rBhELgJyp8Gei1WK/1LWKht3bulczaC6XRJDNK8yzjj4x/VkRdU9tgUWT9Rr1QkNqx4tTBngXq6crceDIw/DRYy+7I0OSAVyolzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786427434; c=relaxed/simple;
	bh=FUjzeWdQ2uF98XBRfWDO4MtHmsmAFNgyHm32FMJ65z0=;
	h=To:Subject:From:Message-Id:Date; b=XcyE9j4k+3DLOBPfnwq+Oq0FpiOhAzyV8Ta2UDWQNQSrO6fgbBoxyWbWw8R1rDbEc6MSLwZQMKoi9LOXFyEGbedMaypUdyXrXa4zuLHsQs0yTNuxLdTI2x44WlrBEk0Qx+gVYipNFuleiZjcXuAgKMLvCRtwnHo8e8FvvS44+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNbiMUuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNbiMUuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDED0C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786427433;
	bh=FUjzeWdQ2uF98XBRfWDO4MtHmsmAFNgyHm32FMJ65z0=;
	h=To:Subject:From:Date:From;
	b=WNbiMUuy7jA8yEFz+bQHb8rHewwyseiurrtizW+3n6lEfntoBtpsPunK3b54fTwkL
	 pLx6PunGOtd/53y9riJE92qcY2YA3aNGhmBBVWlH3Y5YE3dCpf7IsxnG0HSkgIRXo6
	 iuBTwO1E1b2dlAogw+Sfht2OScJgr7kHFbnCJSXB7Rr2EYBH6j0B0xKr0gdozmwBtQ
	 zfv/H1BSxc26QjymOHZ5rQrrsolbXLlRiB9v9JeqsO2S/2U1Bg3mGCII4cbPi6behQ
	 vcTX4Gsgxrm/XCRk/jW3wYSyz7VE52fH5IEJronGA95BnaBZuFxb8hvYidpVpAkig9
	 IBMmWJbA73GjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0F5C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642743368.13150.16150382233036444282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5ab0c7e9006ebf69ee3794c90562e1b744aa1485d7b18ff7725b15edaca767
Date: Tue, 11 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786427433
