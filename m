Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452273033F5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783339714; cv=none; b=PnYQu2Fvlhh2PFcscZyXl1I8vRUDvF+c0pGJYnTvRCtURC/Nkg4mfBwLKWJkI6G7tdcPTRYd3eJRAW67ryHro2pEkVjol1DqDr5cuzppQjH0fS5dC39jvrH+jqGlyljXSagOsGEstb2emC+KW5dbWFtdkVDbEQG7IKDAU4Bvwbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783339714; c=relaxed/simple;
	bh=NptnVt0gCbBhP3dpvbGZBp7DlMQEAjDziAHRRocx/zE=;
	h=To:Subject:From:Message-Id:Date; b=S22gAzY4txqM1rHRStxQjFznr5JSLzgYVrG0TkipReHDBYDZF0FSSDIbGTthGdaEWfjw88FmRWG7vzcH2dzYgy2Ij3ksQh20O+m9RhMplLVJ2WlR7TfeKXLh45pHzWP93IUqfFE/SEB3rGz0ezjI4BqBMuKC9zL1f0EpKSqEs2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otJKmQL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otJKmQL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D274CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783339713;
	bh=NptnVt0gCbBhP3dpvbGZBp7DlMQEAjDziAHRRocx/zE=;
	h=To:Subject:From:Date:From;
	b=otJKmQL3ReRu7Vb3zCS6PBsljP6FoXMKFrFjhpZ/gmqTed8vRiTHDvYejuuhKmMgV
	 F3UlrEdB2R3H+E6H3Ol2Gd01heyiMOzvXI3FIJ+/EILoQ4aMLGRu/zFF5W/su0Bg4A
	 oDbymKGVcMT4/XErIFra245R9gHFKMhjetfR2jZE9906I885J28Npev5hbb41dK5hy
	 /nEAWA2UsonMhc3vBuGyNZ0ICVINo5RJSCDhbT4Lsx13AzqW5w2TRH5U5r3XGjz6l5
	 N5j9PdaRZvmUTCx2CYsSxFBYQOSHoPT6DBHFmEZSPB5Yk/TWWjPjRuLogw8XqZzKij
	 4wIvsFveR7+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED92C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333971369.6658.6735334675102687121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc2c693785bc32d92102a46c44be2054fa3e19c9b721b147798fce4cf663061
Date: Mon, 06 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783339713
