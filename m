Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272AA2E9729
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770698034; cv=none; b=bQ8Dadnb2HeNhxj7OPYUsKAQUoE66znQ0jN8IRK6fxG9muEDTVLAOOztHx+RHLzRNAiKvHRbaR0PrnQJrctbLLrdTyZwg2GW/Qe3WusB1AfxrZOd7GOK1gSh40Am06aXIIzpHL2KLCQeIu91WH0QbreCMk2YLAVATxNIw8XHph4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770698034; c=relaxed/simple;
	bh=20kmH+UHrpWX00CNTWwDt8L17ne6OGNkdwHcND9iV9A=;
	h=To:Subject:From:Message-Id:Date; b=RHXQ65NwGvyPVF3H9onqIdF5Vh39sadu5VDcJdBC+DQiZw+2ka+og0Nyo7+pntJT6gAIKkJzWEkthD2ble6aobuocbDOicL8bcf+eQZ1zCFIdvq8AAQ8zyQUjdRnXa9EcB3Rv8NxO2tUcX6UzyKOcqs9i56yKsEVieMEENaJ/k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu72uk9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu72uk9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B272AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770698033;
	bh=20kmH+UHrpWX00CNTWwDt8L17ne6OGNkdwHcND9iV9A=;
	h=To:Subject:From:Date:From;
	b=Vu72uk9Q7ew2fPYyMBK8YXIb0/KCNjNENqMep77rMf+OTiT46+ahWRgXAs2uPujVG
	 Gr2t38/NauCWfbKpKR/yvuxkcNnvy6cGj2vRmzWrauYX7R14+bo055LszbneljODBP
	 K7B0PrdJUO0zlDYVXKKss2M5BereoFYW2H4/P18MK24IdXFz76yWU1C+KNHMHfJpQT
	 2vTl88ykhpO/71rgrqmPFtxPL/ojbCHMya3mxMcIc9xnDw37t3aE8duHpmq5I98z6M
	 09heiScneq9hZj/gUdky6np/q8732x9ji5PDVOhl64VXGRHlQ0X6r81dalwfMcoPOy
	 4YUNjtIFOJi7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F496EE6B73
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069803361.29904.14817181293661978521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c18b0adf659097696fcda69b18da092f33afde7fb2c6256845134c865fe0f1
Date: Tue, 10 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770698033
