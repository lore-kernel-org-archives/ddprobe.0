Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFA0165F1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786151434; cv=none; b=sJrE1+040Qmj+Iw8MyPKFKt+Ev05sgVrojMVUUB/7SQynfbXS73xFTzaqwajZzOonki6vuBf9Rt9BRSmMCRvffOGR/jdrAIyHLnEFlbmzz6bM8p82eThFGux5j9lWyJkrobauoVLyDgu3W0OEMvVlgLf5MQvaLXyEoedWrN2HIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786151434; c=relaxed/simple;
	bh=Nkqe3rt7HQuiAyIIEy33nA5+AvLNTQ1Os9ulGNOvy2A=;
	h=To:Subject:From:Message-Id:Date; b=IUUeXa/dDOqMRdCEkXZFXxxDaYHxLmTQl7SxS9vM2PEyptcKLZSNeqYb+2pJu9lz1eHPoGBFmOF3enwwrr1N+VaAbdkrLE8DJyVjyC+K8k2q01rwjU6/6cRwVDB8geW9tKAoSn+IdPJpVc2NimMgaR4mur8Y3TxR8/sefK7IST8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkCNTQ41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkCNTQ41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB5FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786151433;
	bh=Nkqe3rt7HQuiAyIIEy33nA5+AvLNTQ1Os9ulGNOvy2A=;
	h=To:Subject:From:Date:From;
	b=pkCNTQ41aaaOWMhjwBRntP8mgFkg9z5mNFkf/AlBxUIVNp06wZkR5vPis8vCUCAGn
	 YWZuNnKtvxM5+L1aKLr6dWMvPFStSWRwbsAh8iHD5rC3WLtSGukW/l+xQWYiq9Fsc7
	 HjIJ77DxEMeGATLc9SaylHLDZkUqup/OFn3sWGUSsLsvkC06oImG5kIx+lLaxIrMSt
	 wKfBUUdGRSzVIX2pjN+VYmeVInyusVDHqP9eer3ULmRaDNFokVlb01JJqQWhLaZlO5
	 S5e/cqy+kYIY7Gh3s0oQ0w1kNEP9R5D9+OoyGANtZ8fBEbIvyw9QaXdbNaiqmo8P5u
	 LOtDgvFNB/hAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14EBC5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615143368.7086.4817113087670222330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bece22e15280479c7a3f370102faf40e74bfd1bcdf22727d19e6f68d8b320ec6
Date: Sat, 08 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786151433
