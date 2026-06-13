Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AC92DF717
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781318194; cv=none; b=uZptWwjjyRSsDQKvRPoIWk2i/vYH4hTTu0+TuAzBLKr0GeW2iHVeP4rjYNJAOMogVYGIWWShPFTt2k5KtVP+3VjUxbdcUplk4syM8b3Iks4N4Aq3KV354CmRD9cwy1sxoRFjOPvdjJvfpQG+QKbutSez4GS2uIa6rcwtVDiwAuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781318194; c=relaxed/simple;
	bh=KMRORizhQgyKT0NLcg+oW8WbouIqUb/kVA1MAd1+ElE=;
	h=To:Subject:From:Message-Id:Date; b=ShspVbtS7uD8QuedNUspBA33pLITNTUib7iBcVcPiaeOz3ercserXD3vTsJI0kqOwzOB7Q9XWscUN1V8RP8XoPLqdFOajvrpWl4Jdi01xpzd8OxT2AYZEUEDAAQCF4vmNbd6RfjDTZo1c9OjdQ9nSKp7kOI0zn1lKmcgvlDFWlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pri0dUFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pri0dUFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F73C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781318193;
	bh=KMRORizhQgyKT0NLcg+oW8WbouIqUb/kVA1MAd1+ElE=;
	h=To:Subject:From:Date:From;
	b=pri0dUFBC/rB3e2qBMm/Zbn/EPE5vKGTsNbsK1A6liI7bDUitMJtMEFV3LbFskRyB
	 37CAPupkj7Nspvonn/Id2vr87G/yeCpQBVjxigrUNByqA47BxGHsHj/Bpir7nBsI2g
	 UHqBFNp5soi0/Ys7rwwLIhu+xYIQAhfsF5ssJWmUgj1Nz4Vz9NyLKjKzXm9Ql0D4tD
	 M15OOC5e4SDbnKL9jiFl3IF/T+zI86r/zq+UQKa5ejvzExRO62PQT4JRK5R11aBlUb
	 wTgy7kxEpJ9jgDmcgywqQq4Khm7oEVSdfI3O8ukDaSnvuOk67kglAraT785laJ0AJP
	 o316EM3aOYJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1237CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131819368.14521.11804984888879060818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d94c97e48ff34227eb69e35c86bbe0330c4a30f7300474a777d1b063d45ce33
Date: Sat, 13 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781318193
