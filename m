Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C01F2C032E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785654634; cv=none; b=aG/QtceiXezzr/0eUCEAVNcz71TR00iXpDU/NYI5waf7mhiZ5ZpjrBqmSdWoCDmHf9bvCcfDyoP5NJa4F21q3lgl3wmtx6Qfuks6t4H+fmkKqMyFDOQJgCbjOY1kbSo5t0TewZ/duusUuVwBTuybZOP6NMmgXijJmpKCaeUMSQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785654634; c=relaxed/simple;
	bh=jsg+DT2AJbPtPbPvGXX1xyuB8Fk5bYyheCZG8aoUuzg=;
	h=To:Subject:From:Message-Id:Date; b=Ae1mT3nHQhxAINgiAa00B07F/Q0SMkluAbGOeJC908Jle4u4j+aivIOP/Ygj1UOd3zTynTQyd8jhhUg5jc2LzWUIYjWbDSMGXsDqZDhlbH2FSHdg9Sf7GqGLGEtG2TYsI/5BYNXw4NAsrq6AlTELSE4fOyzuWRu87oLFAgEE/7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnEQGp50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnEQGp50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC75C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785654633;
	bh=jsg+DT2AJbPtPbPvGXX1xyuB8Fk5bYyheCZG8aoUuzg=;
	h=To:Subject:From:Date:From;
	b=BnEQGp50Jt/OAmtk7DcfKSrtOVRiUvo7c6J5aO8esja2ZZVlxzJokGj65VGeXYRI9
	 Z05dWceP+2xK7aKBvux20gkcAzunMAG84XiyK1W5tGDqg3BoD41OuyMfPAiRczy1Zo
	 UPw0GEF2MXHxe0k0vU2FoTRp97njBshX9SBxA/NPDLBoHrG9J6Opccq6UNdNbdK9de
	 5yXsjmB068ap/hxWHJG0LRo/3ZuawQ7mXXLMnoCgEGqmSpmEojLTawQcMl2oqTadh1
	 E69MrI/aT9ZLMGb/ddQEFz0B4R4pcl/noEDdyZ2ZOOXU9xBHJZMIyRihaKV2rGtoLb
	 y9ksCZsLANdbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC90C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565463368.8988.9589877253175998235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8953d25ae4872a8197eae7ba88645804252b4a99b4a82baf19cd364f9b20ec41
Date: Sun, 02 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785654633
