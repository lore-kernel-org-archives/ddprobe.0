Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33791A9FA4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778415034; cv=none; b=u/66S/sh/BSP3JquZ86Md2eFty5doRJemTU70AmifLyS3q+64eOg9fe4YKaGOY+LNsj46h+xjDcZmZwwdqgdgtq9XnLHrAsT3cF4TY3NYssBjjOGblLt7qEUFP4CK3MbR7aQccDo14dfrCWxMJAyEXDonXkMnE3SbF1vVyPux1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778415034; c=relaxed/simple;
	bh=XV3tNjMOAdCEsVz2aPOHDjJ6ViH4njfN/vcZGvmnmT8=;
	h=To:Subject:From:Message-Id:Date; b=QuCQKTL1Y/QLH/myKuwkJx5XYXAeUc3YF/f98dOcPQQ4m4ff+NYzNzqtB0SvGKaG+mxkPMo8pA1GRAWf4id8snk/gAJTCL75vZtPd9OyOVpX1eDAlFy4jCY9i1+3AFUh8glTBmE4+K4VaLrBEGeZRfuB6YQKZzkxFAczN3a38PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYSN2Oh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYSN2Oh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5254C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415033;
	bh=XV3tNjMOAdCEsVz2aPOHDjJ6ViH4njfN/vcZGvmnmT8=;
	h=To:Subject:From:Date:From;
	b=nYSN2Oh2UI8XtyWrylGQx3Fq6hW/pYirIF8XwjUsim3UX7eE82GdhYkn5PAlN/UF9
	 CohKKHW5xuo1s7mzKjGe1/w0SsTOx71mwN1fizJhk7KALqmnTmDqUAXfI5P8bsDfQZ
	 EW72dMwsnZEhbfgsIY3Qx/nEtG2V/ilLdogzP9OrgKjyHTlzqE1d/198K0ui0hWpKZ
	 brqtfhyTo6ntb477gFPdHZ7U2svYKR2fWcd8F/LwWUx8xA30nlSeiMZMvxtHp55V5H
	 sjThXbH892CjGiGvRdwvpEiaHZFStccl+Ox3IFI5F/PXVFDRI8fj6QJ6Y+8NZxXPcB
	 wcQiT7Kdb3m1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14DDCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841503368.7980.7121674030988817500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e842dd4fd0299d22c71d9f34fd7443511f908b556743796b9daf50d7635b40
Date: Sun, 10 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778415033
