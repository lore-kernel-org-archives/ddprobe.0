Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6130BB644
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745076596; cv=none; b=ntm+rh71wSoCWKaPu8KIh7f6PBIccgbk0rLSETPX0/ycJbOWU0J52q+eHMjQGtv4zHVYJcaRoTLaGGokK/AHLEB8sE1J593LXnaEffGq1XNXhIVXJBAUCXn4pHaG1F43yy2PcqJbpCh12pcdyF670jPEA0XvPoCJrTpn+m/ZO+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745076596; c=relaxed/simple;
	bh=z6KprQ2jMyIXA5HCmWGudTmaQ9qBRiSD3ELsULYhHrA=;
	h=To:Subject:From:Message-Id:Date; b=gyUFvEPGJhd53TgNHKCK/BCHzg1mRb+LbYdxbbXcZcduSNR0gzL4WHNwpDNk2hzLBkXU64Luz5OsTj01Ngc0vegM+As709kS/sm2I8YcGbikP84at2/8Xrybo8DVBWkobynA9FRg+krUmehXO4CvqPHfF5NDi5+ZS7TW9LAXQ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSNLTFNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSNLTFNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5260C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745076593;
	bh=z6KprQ2jMyIXA5HCmWGudTmaQ9qBRiSD3ELsULYhHrA=;
	h=To:Subject:From:Date:From;
	b=GSNLTFNZarIHHfyFsfy3QAPKAi/z2FwcwBdVzXL2r5vwxQn173GPzcoQPW6rkYiat
	 MO2N148M8Gkq9RQBIymU2p5dSLLdlHWx/rAjXgDWJy3UPy4INNhjPfNIj2FwxJvmVX
	 uzKDkcxU474gnHL88tBsU3XEUrnOqUs18w9GNifZgRSMb3Dzo1Bwa3CCykUdLhfoFp
	 CUsS2Kn78UqzYrlNJotEVK1GOdzi8njc2PcKGOiRkKW/Up1dn7dn7dZqPK0sm4Dlg3
	 B/DOAX3Rm77PFvfIF5rtK4Gg9p9IWMLYecon3NLNQqeAvtQuEOy4m4vuIhjR4GpLPP
	 ed3hx22fvIRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A623FC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507659364.4812.7339370398252496549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940968d070044a12c4d566052007da530676557772c300f264ffe7ed2fd26df0
Date: Sat, 19 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745076593
