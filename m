Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092053EEAD0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943316; cv=none; b=BssCVKp1KTWCufN7Ew/+05CgBd46IJlJHb5oBPgM/Fqg3RNf+I0jpbonq1+3RsfMxFEp73LsrVUFFWQma3Ae+DuF2m9p56CAr7UNB+DZwYHRaaVrp8DRAYEJbeXWNtqB0H8yTiTthdPgA7PS/ekdCFTW1/wSPiR+5FuV4+p/SoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943316; c=relaxed/simple;
	bh=li3Zo4SDMgEw8G2Ll9FrBVQRBeDatZRcHgJTpySu9Xg=;
	h=To:Subject:From:Message-Id:Date; b=sgPZw5WHY/MeobC/rreGEiXxCkyQkv7rfUL4TgGQfEw+rxpXqCUp5V8iKuppfBfZo8i6vuDP/hX37XjXDCFFjZVuoGFNaPFeTPSZAEdVFtHhSxn9FFrMXVufuTdrkK7EwYkMRA7P5d6gV5ZA2eDO7j1gjjZD7a/ASQcf7PW/oUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6BVxwMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6BVxwMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7C9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783943313;
	bh=li3Zo4SDMgEw8G2Ll9FrBVQRBeDatZRcHgJTpySu9Xg=;
	h=To:Subject:From:Date:From;
	b=V6BVxwMusXoovOaWtWLSMO17Azl3LHC8YmWD7U7hr/R3U8cNUfxPlKCOHq03pTpGD
	 iMFCrMXr9NVhhEBZHFC0DR4MDtZfGVh/1lZLng3FNjJrpJ0zP19CFsmUqT8o1ZvfPA
	 KMloxKbmR/SgitOZNEQUYhFmCGxb1UkcK6gOfYweBVNRbyx8NNRNAs/4spfLeSJQpH
	 LOKiN5KsbKSo/dFSuerqWJEon28FbFBIJJ+qoErVssoJUBqgOsfO6m5Fty2/4XbvPc
	 54SEbkJsniRTJCRg0VJW+fk69Vgyk6lPJGNfmfxW5f32q6erS8wrdzX301w1Jmm8P3
	 ZBFDmySam6Iug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1EC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394331368.25672.14510782156689905618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f68e7bf477c4faeccb04733a57dafe416e7e63473ce8820d82f249c05ebfddd
Date: Mon, 13 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783943313
