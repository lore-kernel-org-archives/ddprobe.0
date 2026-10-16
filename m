Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B343F4D4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792148434; cv=none; b=otUHqUVLRbRuwuY4jXTetEyG9zyLbERvLgGZwHLSZpKASp/h/MnZ+8/meqLEXFP8L0yIy8u2gwcNZJr79LPXECdtW7Bl8LE/eOGyZrSWi+x/kK+CH5ZqJYj3Iwv/AngwDr1IM5snonUSWZZkaWjTwoZcnm36d/nl0DudQcseDrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792148434; c=relaxed/simple;
	bh=Qd3RWaAZRWHEu0mwGBbSU5zM72fzSJq3mQMCRt3Fsm0=;
	h=To:Subject:From:Message-Id:Date; b=QpdDPwGFESjXa/VNg2wTrd8RFNh2Bag+JI+ZyiHRrBnTDY+GaTBRSsIpVkcDVgFSGqnUVSUN8UM9L63UGKGGyHMQBE1a2zOPsd5WG+L8Pjoy8UM0SzM63/WePRJCP4X6Mc1ofvJnii4yBydkCOvlN7Hi+oBgYNEtNcmR+V4IkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7FChhS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7FChhS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FE1C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792148433;
	bh=Qd3RWaAZRWHEu0mwGBbSU5zM72fzSJq3mQMCRt3Fsm0=;
	h=To:Subject:From:Date:From;
	b=K7FChhS5IVZjEgcgadw8AUJcCvRzt0wvNPmcIrojQPdtE6n7oYKj1yflaogDreLuV
	 +FnR/oi8JFv4hQQT2rCc43iOSXsdTie3vXkTYvJoz2PNLis9Fvvj1U68xSRb8+TFFk
	 yURlEnC4k8nvyghEs56lZiDfn1YFMhSEf42Llh6c7H7RqUpVWqHbtTMtEPanNec66w
	 NS5j50teXlRR10o8G24B4wiB3hmzRmKmC3CB0CTicx2MB/2JRQ+Jl6WwiGxRR7uYYB
	 Mgyc2Qk7zpxS22IEc322HtLFX7ihbEpT6LlZL/1r2PWBKgVQ04M8xmtbLFk2O4CQy1
	 zOJ0jCag6bOOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8DCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214843370.12613.8600588997208678092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7093a6389f3573271174c26466f2eae628931256e0543b3d5f70a8313b1633
Date: Fri, 16 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792148433
