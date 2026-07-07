Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0335B437857
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444714; cv=none; b=SCYneovQ3vv0pgZTAo89EPA1RdWuF1d9opDK4CzYtci18lcrDt98EzJV4U2YjXH3Hq3k0MgN38eb9nsaUYWk+Ts7rajRi5P4NQ6XR5QDy99t3PR1Vqif/zDFqaZmfdR2DLYe7Xzq2U3XZ+PbjKLwPbI5PCOHpJ0BCpfAXDgvhDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444714; c=relaxed/simple;
	bh=OKPOn/AhfskfEKL3SCY8/uWdzvoKVd8S711J8SO96nc=;
	h=To:Subject:From:Message-Id:Date; b=aKMRSKMbDynF3rs3nDKW51zWv1dTTuTW1KjfM19sFaoIPK/D363dJ5UwlHPo7V89/gXnyGjA0gfIK9EWPkupgC4lEwN+AR/eTIAG1KDPjnsdba7YySP2rxVWyLO4CBVzJyQyMSkAyKSwn62RxCXnacTM5ASMl0YtiTPDpZEqdlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+RN5MHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+RN5MHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD75FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783444713;
	bh=OKPOn/AhfskfEKL3SCY8/uWdzvoKVd8S711J8SO96nc=;
	h=To:Subject:From:Date:From;
	b=a+RN5MHijd/3hlBjptl8mM5u4d0EA8M8rBiTzsaZkTBgwYhK+PBjW/bmj4GoKiJEx
	 lMVCQDAP/MX7DGSfFzzy4piyc9auMjEOrDwlLOe0RVFBUCAf6qSlZC6dgKBDmYre18
	 ON19YKN1sUVtzV6+fz8TTAclCdce87Jn6y2f9ia0uYjCDMtgcLGZw1Q36DJC2vfNZ+
	 3tJDGp38TEYBTsHInn0arSQiSsm3V7UW9CNf6lFRGOusmoaeq7cUifhEAPLGwdsL5R
	 HRXdT//+Ply98RSnL99wANDd6i9ZlQEVB3k3IO/CsjtWgSAVk3Q520dqDoMcj6Z3kY
	 8JTxo7fzeWg4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF5C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344471368.31811.6457879154528667286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc0e1ea825766f4d189c5a07caf80b55b7b4d37e768a15e1b96176b77007fc5
Date: Tue, 07 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783444713
