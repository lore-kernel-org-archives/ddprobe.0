Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53464412C0D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786375234; cv=none; b=sGNA0xtZPAheWJy1PFbgcxVC2hWSCs4RfUQtwYyV2YMA28mniyqg2Mxx15+X5FyuZWZ9GuYcddcov86RRelFArPqXulUMA/RQ742fRJaS4rRYxw5aUoyXGMWVbMdZjnOoheJyyZZ/Vckpfd3/7diNtCww7y12qG9TWK4NayA37g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786375234; c=relaxed/simple;
	bh=dOJt33LLtYKQjiBIV6Hk0eoCje1j/K16yAfGsAHKm8E=;
	h=To:Subject:From:Message-Id:Date; b=aPYGJMcS9QiSDhdH+3zbl1gdYYMJMDHQ2IHPFxHVQR/hQY4bMaB+Ip1F8UR8tTJA1Alcq23/PmVjiksE5hoUt1ciXJvBswFpdxgZqYX0jAh0Jz0AEyVogSLSVKMSiVp8y6rEq5LWmUiqiVSG0eukrBbepYc/7MHFwUUV1PxB81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTYSj7LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTYSj7LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8C3C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786375233;
	bh=dOJt33LLtYKQjiBIV6Hk0eoCje1j/K16yAfGsAHKm8E=;
	h=To:Subject:From:Date:From;
	b=GTYSj7LMoaHtncPbTKyKbYBiQNggLcyUMmdwJEatZd2tUCIJRaiDMPqm8yyYRMioM
	 u9/iZbVRLhJT6U35tIVcS7rRhwRx9Aztosb9c5mK/OOLXYd1nwTEMTzNo5TVZCTATK
	 llE7AP6q8jfVId+Xusrj6MC+ewh6X3prKvH5+Mbl01LsjfQ8uQjAHWFHftRVKkaxCV
	 xoG0mrMtAgZvGErG7EnmIGCiafUgLlYtEMOLHCMnEYFUCBR2xNXI3XB+eAEC8c5VKp
	 DDYSyNZloWDf1W8OQ4GPK1DiyF9HcanlR7o7734JmKfVa+AucKUnpSa8W2k1M867Q5
	 D8ADt8kUltONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7CCC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637523369.1894.1851376734708256253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56c06f967537621cac2f9d06ac843beb885b37ebad533f7ca3dc6332750d8a1
Date: Mon, 10 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786375233
