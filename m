Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA7F2F8E93
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781058934; cv=none; b=SYIqT3GDu6YjRY1CkIebUcsrnfBbpYMHfmrJCnHxHZymKR7XyPC2lbKv6zo9Qm5QuKzLh1OTZXy58QcQqFW9GKOjLHhQ0NWpgyLrAXv0S/ZZFnWkDol+WaezvZOJS6iaZ8i17znS/++yMYXrujxbVD2NXFimnTLjgedzhVXPRVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781058934; c=relaxed/simple;
	bh=B7Io8euT/nBY+bypPPEPrSgKGTR2Bk/Ztvf8406ZvIA=;
	h=To:Subject:From:Message-Id:Date; b=LPUmlBvEHmAGTdAcErXG+lX6axy82P4gn6LDF+EwSBluJVRm3tEZodyTkR83VSbew9f/2uMBtwd/+ek6otxXxZMNfcj6D17/0MsUD/hv0dWzxO8n4/Ye6f2oBtKJieXwtBYi1amgJsLk53h7vghjCTMf5qm+v131vTEuDWzLP74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkwW9MlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkwW9MlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B1BAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781058934;
	bh=B7Io8euT/nBY+bypPPEPrSgKGTR2Bk/Ztvf8406ZvIA=;
	h=To:Subject:From:Date:From;
	b=jkwW9MlEaPPqJA8w1Ra4Ky0xFQ1fIBLWtKQ7bKv2ehjyaCIWjL+L/g72RcblpemQv
	 3DzPRi1I/02W1ShUmOtnigTSWP3E9pnkurbSxGGG6oyK6TLbWQFIsCQztVlLoIe9YI
	 g1+X91Goktllj/kBbhqQULkALZ4QttR8k+A6p4bai/FDIKcO6Qfeh1LYnGpTkqUCmF
	 eqdlrW3mj399L7Z8pKJOciOZC7iuuuTFGyFmqo75iQbkv9m1RFxtJPBDSngJRRmf6f
	 4iyDzeTRCopFbbfGh9fWro5Bp9uUbSoE8L0nF2Ju0vVdpeIGQhtLnF1/7HH04MLMfI
	 4QI9WTVouC6Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC452CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105893377.10760.5956398838696084757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3837e13ebe7b4e1d509309d8e5cab0e9375a3d4d821cee0839897556e9c8164d
Date: Wed, 10 Jun 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781058933
