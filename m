Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453C9143732
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714492343; cv=none; b=TVqypcnBqjsDR7XqGTO4shbbsxuWZ3LofsaFF03jpQRbxUOlGT/bU/zAF+IMJ5sz180Jp4aL/LBJXfzFEJstwSmtQ4rsU/0bRm341rZllEmNemlQpgaW2rzPzaTmzB1urvNUQXuxTutceugGppcWEu2MacZhCBPWSTHP4wOJ+hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714492343; c=relaxed/simple;
	bh=iRTs0lLsQDgY920rv2xSWt2G4pNp3M2lgFftrF17DC4=;
	h=To:Subject:From:Message-Id:Date; b=ke4kvW3G0b2GpWRtLMqxiVy62VlGaxmnDqd4MQKjPiBEjFe3AH0PceFB/DryR3S2nvZaMqYsHLSNh0HYPnxPuRyHlOX+6HMsaKSyIE3ZuoofTtVInJg4I5YUTk8QDmgY1xe+S1Yv6789FfExUbqRv41ksn4AGSK4pF+Aw5ZNvNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp3mognQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp3mognQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1620C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714492342;
	bh=iRTs0lLsQDgY920rv2xSWt2G4pNp3M2lgFftrF17DC4=;
	h=To:Subject:From:Date:From;
	b=hp3mognQzE2DW7bgY7gMjwhVs2IFRWSI5oWzbYSzQneqcoMG+SPFjRwS0esVp+yn7
	 pR8PfGxxeOUX/TP6fsJxQd/r65Zb8O1Fm9/pffOuRmNrnCZooGpR2kOGpISE3e8Yjf
	 uU65bHergIqjpMWDtPR2qJcrsE/pykvN1KapywQ1hZ6RP7VQHVt3/xM3dcwQfMAp8i
	 7azUSvpenX63jhF/3lobioeh0BWUXPvDuYvRNm/WMgt/xWfD8NJ8qa4hYPipAgXDVa
	 8SXsSNvvNp1tTxNEWtHzG5w02B2DUT57osxyw9StguwSyFRjCKpR9YfB58J92nEeRz
	 KmLDX8DngnuJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A5DC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449234280.11245.1023403483118198113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1768ad8d61cfa040ad212302b49d4ca42e1dc7b30ff013b91571314a60657eba
Date: Tue, 30 Apr 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714492342
