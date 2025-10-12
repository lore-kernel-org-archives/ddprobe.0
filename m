Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B08D12B94
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760285394; cv=none; b=UpNeOF1tYv75eHQi39gNePxOmXGW6flUIcdUVBo2UfwEFidGZow9UhZB9ihCMd8DSifGgv50LupeYdRo1U3IDckAJxj2GxNs2ksz4UkkZuuu3E8X9fLJrR8HuPzYyonBVEo6PjZkuJVD4rSq1EmkibntEibkDgr/enWWqluh1wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760285394; c=relaxed/simple;
	bh=tGxCRhDTFTRFHAQxtLaTJJfOoOv4CcowVUBbidsNLrs=;
	h=To:Subject:From:Message-Id:Date; b=Oz1+okdtTyhYbQaWmfcsNcNooNRSt+w+64+fNNALNb1vu6V/0EI5Ei+CyCho8YH/OCNtZuwUpPCT47N14Wxzh4BkJg2c+CwEZhWzD25KBgvX43bQzXdSEb+oMoCVFmtFABBlBQ6/oZeIrsMCHPx9EnxJncvvxJnfATfK0DO95aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+0r8Mr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+0r8Mr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B1EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760285393;
	bh=tGxCRhDTFTRFHAQxtLaTJJfOoOv4CcowVUBbidsNLrs=;
	h=To:Subject:From:Date:From;
	b=r+0r8Mr06zDMUATp12A5AyPnadod02Vw7eR19su4mP6jf+A6VnyGpcXfERQxtkpxf
	 Vxg0AYHwqWfZQipcSYG0KSTzz5v622JUslTcAKcJdKhXRM1V2oov0Sxag3i1r1UBL3
	 T2cStF5gDkR57dacVct6V5lFSKPTBC1F8RaGZ/Uln1mPtl+E3LPANckEGfJ1jAArTm
	 XoKX02jsUxnMAS7drWiZ4KJH9QkLo68dmWComBYTkqUAni47EuwMyvaJdruJ7Rkyp7
	 4PezXQyvPgUxd5dcR+GzrdRRkbRZmkWHjP86f2NihA3KZTnp3E2Anqnhio2btSLIkV
	 USjYfTeQ1j/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D27CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028539357.4176.3699873593905625324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd46b19998471d89988fba89732c9e314c6b8fb92f2a39ef64acfbb45e275817
Date: Sun, 12 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760285393
