Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B34D408014
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779204634; cv=none; b=RAmlhIa07tcASjYnHKoOhse5BV/55vkhLeAM61LPmFYjTzmh1jagubcqhMNkhz/BD7hqYCQErgNEGpvPmEwgUTXDDGWr/Nwi7B6dduDByIjVwlgrlZdZLRMXxrRJJA24oxi6cGIkmQYTvHnliKMbN7f4roAH+Cik5CuIE9jQxBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779204634; c=relaxed/simple;
	bh=57Ytp1eTT0QNONqmwk8AcsqDUt0ylW64ZivqXNXPdLU=;
	h=To:Subject:From:Message-Id:Date; b=Zvt5Ov5ulZ6SjOQWfq4buGzvm4VQLV2uG1/cV40/CttKfjf7bPNpATceYVwQJG0rey/MgeOwmKOawPiEUxgZV0guRdtfKIRcPdJg6SgRp/2P2SSu1XbL/NGJaGCpI7d1LTp2oOT+L5wJdwpcC9iRFnC4WMn6ifz7sxcj+kUkJyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocDqCauc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocDqCauc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C522BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779204633;
	bh=57Ytp1eTT0QNONqmwk8AcsqDUt0ylW64ZivqXNXPdLU=;
	h=To:Subject:From:Date:From;
	b=ocDqCauc9V3+NdbTVcWbSICps82z1lxvrptquxUoOwiH0i/q142LDghL1BFElSgFS
	 f/7x6LpD4eEOBgEKulCao2m8ckcV8BZlxGi/ikqwFCTFuIT887YEOCBPAhz9/GHkcS
	 vu5IcoPDnYuDrJx84TYNUVOeXeGAdvvHrtQDiCQ7FY5cawlHrbdq0qdAknJ1wSCI+r
	 SnfGbNr9BlEy9H9oZUlZufHKGCnewQTx1/IqV2I2af8p4ENbGwPB7i2M9N486MU+VU
	 lSPt/QiTBtKOWZfhjbNrZ3gVypMfW253lB3EBWkh/Fi3yriTt1bcJSC1e32obtFvvI
	 Ji3CLzwp/F3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A5CCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920463371.4496.15526155507964045611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49747bb088871160d67002d6cbb4d5f6c4b7c494f5919752bb5d2776a1796474
Date: Tue, 19 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779204633
