Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E429D19
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744552795; cv=none; b=bfNU5+UYRu2mSgW49RGpsBnh0Ngf2u/IECXf+PJN8DaLOjmfvkCptmfRTgq/H704yWsRyHp8YkLdFT6fienkLGmRWExmDvsl82L1YxVDDygTz3ZsGygRs2j1quD+iWQbCl/pXP/Y02Kz2SfQvsAW5LlMc7e12fVu88B/9zlZHb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744552795; c=relaxed/simple;
	bh=8EhLRzuDDPZGUK0KcUTSgJVWuDxiBucFinumNDoNDsY=;
	h=To:Subject:From:Message-Id:Date; b=GZTl4/HO182VGe+bNLKux+o7dXP2v04pMBJTGbC1O2gBnqmZtIDxmlULA9Vg+RcrRYTFJjQr0Siw5qzBv7fjVmm+9YYCqwdeiUW9+Aly737oADfiZphCanLJZl/tzEV1Dx+D7HwWmNa4M6tgqjJY4dkrbDdrWpsC6aPV41gCyE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV2ENSli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV2ENSli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEBCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744552793;
	bh=8EhLRzuDDPZGUK0KcUTSgJVWuDxiBucFinumNDoNDsY=;
	h=To:Subject:From:Date:From;
	b=PV2ENSliq/KIfL40s4ReqtmC1N4tcshRZab8asOjmqqF6/C4xe03bqRjAtwwh6JXk
	 9HYjFwc0Et4OVkUfosvFdOfQ6N+bvjzAuepMnQ/hfO62l2XTMtucAlK1W59+WcYjEi
	 NHtI8+7A2VHupH1a3VHz8zJ19IrzWtSux7eUOoPJQB70LVNIDZv7bL1v2vyeKTVLTm
	 /OyzpdUH9Ow+EwGAViaKdgaAaUwGQ4AbLQdupxa9vnPaNfw6x7d86eRcsWT4QgK3jI
	 DyBUhYTGQLGTjBW1voyZyTvaOzOXbsOuQxyeB7JUrqvUK0y6fINfiV4BL2Jg+Kw1w8
	 4upAu0RONju4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB1C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455279358.20252.16735129962685991748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c240dc6d2cd70f9bdfb1a0e609a540b2677530f3f71639202c06f93a82be57f3
Date: Sun, 13 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744552793
