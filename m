Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7DA2CCC0
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744990195; cv=none; b=GEM2xKK0cOkj7rFn2xqa1HqTbTaWI9B8bDFbEvI8jAaOp/qcf4znNkqG2V1f81e6sj5KH3xd1b04iS6Y0fXopMPk/h0CyDp1tGHFkat8/qx7LQ57/v+eKk95Q1GxMAqKXu2B+b2c6XBjtI3FCgWqxmoHldOkeOfepgI//T2GH1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744990195; c=relaxed/simple;
	bh=wciUoZ6SlKppSuHVhoRKXXgovCz0SkziYr2ewz46Qpw=;
	h=To:Subject:From:Message-Id:Date; b=snURbWhU95pU+KXj+Jf/5nu6l5kS+QGaFAq2HgRJE2bid2E4BtT4kABzfbkxBJc0JhpSKSXhuRzptSCe9tsmbvuamsyndlskjrUVdRRIM2x9ISAZwJ2Km/ivPocrRh0/ixgMePTm8ZNZoQbTrJ2CXtLdNX3ytShsgduZcn/B4Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSV/lTuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSV/lTuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA44BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744990193;
	bh=wciUoZ6SlKppSuHVhoRKXXgovCz0SkziYr2ewz46Qpw=;
	h=To:Subject:From:Date:From;
	b=gSV/lTuvQphEk/roH8WG57VyatIlrx87cBKsz729UJka4flVV2j2T43ETTvL01Kw6
	 5FaqA/vPzLCrh9tB+rmgRr3l3aFsPGqwV3zSNEQ+osC+5khIxw7r1PtGpBwxBZ5LAs
	 mq4QYGfcCpVZ/fDexnQnsJswkxa2K2duVnnJdAu/K2xWQXaEmXk8ZN+J+w52qeLXED
	 sMsNxUsoPKUicPZN6Kp4mro1TM2OYPmU0BmzDB/JxfgPo/QsV8ldvIQRg7pOc1LBwY
	 x8amr0S2CPGcpyhFlwt2EOizrl7s3wnLzmHszDDxT68cDK5MnXYUUhvwekSjr3sc88
	 VND+hopiHhwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9951BC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499019361.25975.1886669457114991119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fd7900ca62dede844d0ec81478efa0079dc3122c4cc50c994e3e1d2bc38a4d
Date: Fri, 18 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744990193
