Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD051A0BF3
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777696654; cv=none; b=YSi7a5QEf/w6MEmcBmJaRmzyn7VqW93ZPKnk1GC68rAn83soYxYgR99wOEl+IcHK7w2o41E5i8eRyxvNPIyi3/Ve9q4ZabhMQiezpimLsFZl9tmswku5mJZrYPARTvzgyv7Xa53gY2aY3Ijtb2YFD7+xzrcNfsg41ZarW+C8qD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777696654; c=relaxed/simple;
	bh=HYn/xn5EoQRh9uM95nw4fAIvTKTXPOmU8cs+UDmFEO0=;
	h=To:Subject:From:Message-Id:Date; b=IvJHpKLusNQAiLZRqsVyLCk9DS71/lNeIdSO5qgU8Z7CSkPlLHxgnY4bqgviv4FnBDiIUKAHa9MqTmuE3nQ4ADAbrOEExiLIktOmZW/m7U6kp1eowaHBb/be3Oca7JfnVJ4vUmS4Jb6qv2BIpjz1Rzh1TrwMe0Bt30uYQZNMxU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkjqxe5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkjqxe5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76D2C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777696653;
	bh=HYn/xn5EoQRh9uM95nw4fAIvTKTXPOmU8cs+UDmFEO0=;
	h=To:Subject:From:Date:From;
	b=Zkjqxe5DcrbYAA+TbYUvG94PQfc5XyGJsZLFMb8lqSnHM3G+8Gm0o4NmxJaoBOqmj
	 FeNNvzPkNIRCeByNV0gTwx05IFWngyTuELLkyYIhQeEa81tkQKogm4bK9x4AraLLGI
	 LzuwqsD2PVP5UBhLoTX5lLDJFHm2nS2HqfG56IvnT0aqugnNmPg2ttsRJ2Fg2Hl9Wo
	 fGGWQ7ZWcjFa5mkglqyHd7p2/y8vTGGGioHBg9TVeZ5FS6O+IqHA6Zq2Dkd+GRiWzE
	 /0CGGzGwIFGGDtcAXkvcpuGqgpzDypa77K29WCmeiq9Zm6Bpbtr5QRRYeiVJaj/FWo
	 W5QC2Km5HQKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB7CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769665368.17121.8352198400695299586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d9da86f223552ffe9375a00cc0ce3ce0b3cd03402996e608e201f0e5a6c585
Date: Sat, 02 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777696653
