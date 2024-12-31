Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C442D7BF
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735615554; cv=none; b=In3eTM/kWsW0z/B3Iyoyl+nLIHEJ85XTXOD/hZp52C39ZtwbWHDyQZAEmMu0nMC7pcSfi1KFLWfeRxCd9BOVshX/+RUS81wfp8auFHIDxDIJwjk2lmjRxylcy7WEq3tqU8ykUGSrkJlow25/E21P5utAUO0hakWRsc3cfJ0qbSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735615554; c=relaxed/simple;
	bh=ZMvRr32TCiv2rnQ1nJzuFx7k01neiFEu7pewgU8eN1s=;
	h=To:Subject:From:Message-Id:Date; b=XhxH8Vq38nK5pTy2PJqJLgB/LNlzYFOG09elmcFY1WvIk/Gw9I0BFC70eGnAaDd6TSE78/517NEdAV98y7PeyARQFWXMo5rQHD1tEKwDL0Rhk+cWRSOaEQS7+kdNk6WB+3ZlJlK453vTm1Rj4LUWzJ7LIJmmgfM4dIgXbiTu14w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FErqs7E2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FErqs7E2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37EAC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735615553;
	bh=ZMvRr32TCiv2rnQ1nJzuFx7k01neiFEu7pewgU8eN1s=;
	h=To:Subject:From:Date:From;
	b=FErqs7E2b3mWPwYqT6vPtRdQ081Hbg85stozAnRcSivfMFvPU3Jv9S0f9f/s2D8Ou
	 2KKTKv04N1qh4FUrFktkyExq2p07wgwhqxFXMsDSc1Yo5rHxfY7vviZaO3G//IP7dV
	 k/MbJEdZIZ/m9e+k+95Z3gGMS+NyLX5QomoHlhx7iEQo1aLkOfT/wUnExUTLEZPpsN
	 BgNzRgrOV547jhsjzs7PhKSog0lfaW+M/HrjMT2HKJTRBpLZdXNBtS280bPfeWPfP8
	 iGuPoiZUaIG4LIQrCb+jEqTPOO4+b/tZ6Bi6OMTXV3qU1asnstn4FvBaOQ4onPOq8H
	 TrL3+Ku8MARGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F40EE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561555360.12088.12705498069825718765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a14a7c1863cc50c2e660907b2719e097238527f685f43f8c883954f6f2e88b
Date: Tue, 31 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735615553
