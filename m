Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DA37C0F8
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787110234; cv=none; b=eeXo/C9CAR1ui5Rr53QJWjV/ugI/0fJL0+FHjfIVn0uxm1X1UMjxC/ny/86We9kdr+e2KkysmkT6rrpKArZIBIjqft1bA4ezH2DrPi5XOy9e0+GVlhzif1hwcuZDhBN7g07aV0N744z1uayX5Q9EppcidDigZstoEc4KHqjMymA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787110234; c=relaxed/simple;
	bh=OJYzEeHwTQLefWcX0pwEMh1qFvkmatwJdBUgnDWj/SY=;
	h=To:Subject:From:Message-Id:Date; b=aU9Bc3Z4z+ED9UGdtChGUQDNrHS/tseqc2zMeaZwJ9FKzYpJqaiYegu/4jvgk5qRrIen7XPDicstIigUO1dCjxYXYBir3F7qzfZXKypiCX3v9U0Y2Qhpfn9HV1qEh4goy3BqhnkfpAjPxd3KxLsXr1/uY1pPpEVMxy7NEbThx1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3kPR65k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3kPR65k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4553C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787110233;
	bh=OJYzEeHwTQLefWcX0pwEMh1qFvkmatwJdBUgnDWj/SY=;
	h=To:Subject:From:Date:From;
	b=c3kPR65k+Md8+F4XMTkYBj5CfeuOcemIMarCb5MLCenfzdueFeazt9JxVDV0W/h1m
	 S/XCMp8QKnDZ7fW7+DYBJuseBsa/Jd6/ZgF3/612v1VQL1i/XqY3oahtjHQoc/FGri
	 270gBEl5j/Itj1lioGnTUFEtoyUxhODTglMVWx70F50qoih/8HBT1YOKseYvsRq4to
	 NPkXH2+oGsh3Y5ymLSEIF5kOJ2Rxx2bI63/egivuM3NAvGAxDZ//HgvX2vTDG9U5wi
	 pV7FmNxoqdZ3u4eolb74hHdCXxbSfq390YcCDpehUAgetmkRhe5i8c8dpGIPBgCceT
	 qquhULO5m/pZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93D4C5DF82
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711023371.19970.8969388932681376552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e589167f1c663ccef582a1ebbd8000eb5dca21625b3188c90f9b03db0b2e46d
Date: Wed, 19 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787110233
