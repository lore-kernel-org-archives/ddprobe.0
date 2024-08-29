Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7134DA14
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724955354; cv=none; b=KjPhG/fuqU495gzhOtq+RRF9YH4PoFhso8gEREC2djp0/HEMk7tQrtqW0p92IXAVTsZdBX0nF5YCmY3DQanR9U37wVoaajSzf7U94/zdPrM1L4zgouOUrwuFTNTxoF52wBnRjtrDSxwPC5KS4AG6K0Ptw8rAoQcfuCp0MqRpMOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724955354; c=relaxed/simple;
	bh=XfBOj8hPPAeOXHLU+hdqzHgwDVn0CB/V4XzkmfFv90o=;
	h=To:Subject:From:Message-Id:Date; b=SI+qJeH1N2KcCgDmmiLoWRd1wfGSDA5PUcwMTR5KOiR37Iuo7s+tiHt2/F27ICBkiUowd6oiIsPMit3t+O1ymhPcFYR3oriy0S0eXnk1zP8hCk2pDJRLVuj1q3vvRPWKrcha9/6JVzS1YwJ+OEL51eQP/NYEoA32U7Z26QRiaZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RevLaowI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RevLaowI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A355EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724955353;
	bh=XfBOj8hPPAeOXHLU+hdqzHgwDVn0CB/V4XzkmfFv90o=;
	h=To:Subject:From:Date:From;
	b=RevLaowIRUlu+GNMjt+TuZyWoP6pBUyJZNuK0MyLO0nYMxnRLPZqipxB/AdAFyE2+
	 9s9NBjBi2X3tRv4sTdzKmwGzXtdX0Q06C/UYmgQ/O4qRW8yxVjrs61LSIX1FrmSjy9
	 xG0/REDkNQ4AnsdhaI0kPQzb0mSsvREEx6XDh02x5cDOwCpu8p9b4eTku5OK/bnD+9
	 cznBo7lpeW/UXdMDKJyCwgKI+NJzj5pQeiQ2u1ZwF8biXxo78Twz8dez0nMCRQ7Fxd
	 g6I5D1pnK6gaCIzeN7ejIpsw7jBw60UhV7Au2+x9InN4/JcCpVLd2Z36KIwqirkz47
	 AUi3lPWO8Q5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B52C87FCE
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495535360.27751.13847846187775768269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab27e7488caab68aed93ae205a65aee7a414756eb0e9f5e342b4008050629e2d
Date: Thu, 29 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724955353
