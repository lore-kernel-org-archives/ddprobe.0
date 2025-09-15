Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03AB26B97E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757947193; cv=none; b=IFH4jJ6rRpvMGhTgf+vFLe3cOVG8scP4LU1766VSQuOh8Q3R9fPApZH8tqbPYld/zqEL0bhEsKQyFlgYWF2BmXmnr+j2EixqclA/dXYE8IcsMxaLvSLN25Rx2lb0iI+OTvaxtMb/Q7AqGFQ0cZ1cLlQniIes9Xa1Tli2nlmvR40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757947193; c=relaxed/simple;
	bh=bouS3o6ewK7HAmFLClsnJoWBml3GroFGi+9/pRsrp2s=;
	h=To:Subject:From:Message-Id:Date; b=JlTuNs9Pd6q2aLN8kwBDFF9nCL1ImWuqF2+kTXp4FtHTHO7ctavMdqYSFGKIzOMRxDXcH5ylSk0TbA/6SUlECSbN2/YVRCY/s52aTCHrPN3NddYZibkvDR92Xx6BVpSZA1Q5Kr64n7w/ZR0Kb1/W1qP0kvQ93ojuqCb71WiKGE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLxdelym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLxdelym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1691C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757947193;
	bh=bouS3o6ewK7HAmFLClsnJoWBml3GroFGi+9/pRsrp2s=;
	h=To:Subject:From:Date:From;
	b=eLxdelymxO5YIInoRfTkyyMYi50RAshtlTKqhb+D7wmCmBxCtogAyIC3K6zUFFrvr
	 WwznnLo6/YDFhwsGce8PPvu01/R1jOUq2ozTi+m98zKQXsohOhViDjFN3XDWK3v6+o
	 iMbKpkGZwRw6uKtt1MoA21JCELusPlQYEiRfd7MtWpi+7kaQSZ/3NZ/DZHZ+wPXBAk
	 4NB3MjwREwk1eDxHwwdWgj3yS4WJUcJNb2M7C2ElxUETv/M8oi2qJDokxk7UzAGNob
	 Ak61fCERy8fBDOqbq6ubSWse5LxEDCqHiF8JAPJ5vl47bhMVFWn4GrGU8HeEWBD/1F
	 8T05dHNZeDDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90734CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794719358.29224.303783780500562023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd870ab8e8ae6a19e474ef79baccad530a7f7bded9a10c3b2d5636442f6fe760
Date: Mon, 15 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757947193
