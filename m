Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DF118DF6E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750487994; cv=none; b=mpjJfgY3B8BlWMPmiWroye49PSMcXS4CIQUteZ2RZeOA2qWBcsUC3stq+9re3Oc/MGpIat81wvrgyU6KPcC2sKYQVw4w8faVMsWpWL+LZb9g9GSIl2UrYvBP82EVqbmrXmPjthyttNg+E1QnpBluq82vsCEiAuAlu51++jMxhA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750487994; c=relaxed/simple;
	bh=rfKGOzQG8C+4uLCNZa/blabT26Mp8Nv5Arb26wduepo=;
	h=To:Subject:From:Message-Id:Date; b=pwkjl3QAOWG7vDVpA0mqFHlhJDNbwu+0nXHTwfEBVrOHQWHLqhGYX6q4U8PAePrkx1Kp94ZoSW4NK/Eq/98VyOSkQvOP1hTqe/cgpVkD3L/dwW55Ai4GeKOI8yaADhlpmu6WoJ80GX55a6OfadJhvMQP1WzfqROZcLWgh4gk9Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufllG/M2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufllG/M2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750487993;
	bh=rfKGOzQG8C+4uLCNZa/blabT26Mp8Nv5Arb26wduepo=;
	h=To:Subject:From:Date:From;
	b=ufllG/M2KM/gzJ+VgJnCc9t7f1yPDhmU72SFuAMikeQTbOeW/3nalswvq/QUOYAgV
	 gvlvsnQeV+BIQGko6UDQjTbHR3AeOSDexYmQuTV/JpvCKTHKFh0gafBJvqRwTxgdSU
	 RrS9wzBSINdGIRk6LTUCEYStZB8Ca/ZL0swrKEEcQoYn4KQg1rdJzSriZSI21cfSKs
	 0aSOVIxFAtxgyxq3qsLZ3UMrs7cGQZENpHigOCFDR0KBCDJ1TOrfc7IQO3y6OUwb2A
	 5E8VbeOO8Lst2l+pq8nyInv73SGr2Wj6PPG+1R8oFEtwyy414cA7ymTN2sBxoZ4T5P
	 5VbQ5HSzBLTaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E8C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048799357.7279.1578478999740878199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada9523e6238579ab8458178e12e25af77424eeac0e6a4993eb6a60573b841db
Date: Sat, 21 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750487993
