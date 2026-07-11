Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B569475
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783729114; cv=none; b=DhZrxEMhmUHppqRnYJ4dnfe3U0Cj7rmt6lfJ899KcK2jkWDr1gzAvjd22YenITJmOHD1gNTTsoRm7lkvvwnIlz21nw+Ol7W/kHdEBo0O8o2W4QZ1jUSbp7W26TUzwsNF64FrDx/+YVPHfaWFgT7yqTxwMS57I+BDWH2yEJhiQ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783729114; c=relaxed/simple;
	bh=SINAmds6tjplzzsr2AO54vn1cxmm+x8k8Ul83QXB/x0=;
	h=To:Subject:From:Message-Id:Date; b=PIGXzHnNSLDYqjprDzs6B9AoAgm7pMZ2hi2DXq0RUeDtXJq0WU7ahEnMNTp7fYpkaK/ASYgyaGz8B6rHabB2jo3Fr85JX7XAjrGkADLVk1//hyp3BX0FFBT9g5RoManPiRKbLEkbXxTmOxz40mjcgjegcoGgDtKfcN0L6vRD53s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kixF6R9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kixF6R9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA66EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783729113;
	bh=SINAmds6tjplzzsr2AO54vn1cxmm+x8k8Ul83QXB/x0=;
	h=To:Subject:From:Date:From;
	b=kixF6R9wUPlAlloRm+QsduVKo2/Od2vZUtaw5E/V6OZdI8Zhk8FAQBXlzxA83vumf
	 /7sDLWjYw6iDUNIsPb2RWt8VLaK/MYU23PF2Sc8Y6LRMuPuGN4c/rWaoFqaLlxLrDr
	 U94fU0cnTcrEVuvvPAmpa3iOZfpINOa5MyMwwn0YaeqUUf4lIUwYetr27egQoMcrxU
	 KeHZ88LLt/valdHBogbmrH7mMV0gpGz07qiRVFyeoEZ/6lFRiC3A12KAcT5cZakVw9
	 N3/YORUbxPhcC0EnFTzCV5pPvLGzev0aKr2SZ60PD6gt3pUMYuLkG9txiCwHFq/sty
	 tzJBlmFURQqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F9C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372911368.24043.11793305120783122838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50c3a584f88413cb41e5c45cb8eb58e05a4cd12a6e7fcf3a6a7e26a8ed7e8bd
Date: Sat, 11 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783729113
