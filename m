Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C9D3C17
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764436374; cv=none; b=UdimQNHJY6ExYFJXRACpxv8qoeBDfXTcrFJLEal3VU1oeKffk9lVF05fwOvn4Pw0hzuwTRI5+hWcUN2Nwqz6s/+0+mNuPNKCrMlrnk/1cT1LYdYzoVF52ocvz0u3jGufjivpw0Yj7Z0HD4ezHwcdMEPPwNs79U54Z8Vqwm1yhXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764436374; c=relaxed/simple;
	bh=ckpmXbpSMnRDRx6xluOFuSNtUrinQHILRF4qbqMZ4os=;
	h=To:Subject:From:Message-Id:Date; b=RmfvqqH5zjGlac1PqrwpUTVtzhypF3bzEG/+/1vn5V8mGwpXfrmUdoA6hY0yZ9acRKVXewFoTzzQGT2CqFcGemlK3nLw5f2Up1CVCXLzURqwUh/asjgRvmuXyJx/hge+NXWeUs+jr9uLnYXZK+l3S9u/1jn1Cl7vG1lt5eCpGAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ospJHoEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ospJHoEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764436373;
	bh=ckpmXbpSMnRDRx6xluOFuSNtUrinQHILRF4qbqMZ4os=;
	h=To:Subject:From:Date:From;
	b=ospJHoEl39KFwbioty+bNtCI1kgUrRUoxNdjPapPUXkBEhfytIGR9soHPTHz//9cK
	 oWwhUCEnqjjezlOde6m371SgBCHXiPDTlQYzuZiy3NSCBfxHf/DBddm2mBGhN94jmF
	 GK/C9zgL7BbqF6H/ahVK7BrPMyGXH3nPi6ArdfrtOic2Ul19sBU//awBVfpO071sbN
	 3xzdSa8fVD6qlnZuo0KOWo4IiVaPHGoLfcHUtBArx5k0dw+BUIVzAd4xowKcUVRJae
	 8w3RQe8wTdDTXJRxyxCE6PcJyMN1sSeIuiguSOfWuDQs0V0mrgTAKkdGUFNTF7Vzdl
	 naLzn1hb6KPUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965CBD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443637358.9175.12474392174719869083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46ec060a8a2c53b52d1a60a6d8af343342375c6480c0f2c4bdcb89425829ca6
Date: Sat, 29 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764436373
