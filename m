Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D89179DE
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716780263; cv=none; b=MzqTHJwoeM1WGabAju3VH6RijpnI1jW/bDylmuhoTp9/qdyIKXliV7YLIQTgvdaTelcQcx4zrhYGmMTh77omKE1WudPsCELmLnLLipG/qf6CGhmP88lVkFtVreKRSq/TDqJIPKyWUxZ/+uHsWyZDBYLs/7NIhFsvRftRh9zopyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716780263; c=relaxed/simple;
	bh=8bPKNHva9dzREXQtI49Djlje87JtFllM27nroscQreY=;
	h=To:Subject:From:Message-Id:Date; b=hXT9z4iJMug57u6dSrISGm6/oTh9KSjYysNzt8CaWhgrIrmSX/vCREhCmEawRlnHHNwTMGbC7UjqyXFHW9knxlRjEqMLXK6KNb0dprOTOlYVznZFp5PBG5a2cwjIrgi2g6pca3CmDFln1Ds8YvmRYyVF1Vw0TDZcz6yCdinKVqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxCYxrts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxCYxrts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B18C32782
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716780262;
	bh=8bPKNHva9dzREXQtI49Djlje87JtFllM27nroscQreY=;
	h=To:Subject:From:Date:From;
	b=PxCYxrtsJgdr8prUS/H5Nt+4OWswjClHhOyhmIEprjFBk3NnaT6atG9kFtqJcGz/H
	 DXaIB4R6c4K1t8XDf6Ma/kptUj2nPQFSbd9DnHIDXlUAGQaRdFc2aA0a2si3MnkhmH
	 IqKGMGuwdGby0gph6rvvBG0KBelGM04r33pHgB5h+lTJYQicdtLs4I6a5p4e4Q/Hhh
	 +FkFQ8EKiGuV7a0WeH4/mMuRFTpRh3mXHBLj7SVsbPdeNOA2Ee+p89Do8Z4MIg57rt
	 xtTl/YKC4bORjHjWy+/LvhiONwJuD5YzWFa/5aQHrd6t0U41nBmIAsPbjxwtc3BeFk
	 e6xBDSvMK7joA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AB1C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678026277.20185.2487056236045439818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1dddd781c82b2f2b9ac1829ba99116bf54c2de9306ad2491989dcfa1363f75
Date: Mon, 27 May 2024 03:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716780262
