Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696B4111A8
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714908143; cv=none; b=TeDOi8TwEVlLcRVvUronPhTtK2U7nvZy3MFPv04Aei5EIz33I20xLIZBEjLDL34ngnAkheTYpT16sSwRakp7MHd+boM0o4rXHpe75lXXtv0xxDj2X7J8FXakZppGr+wkEC2sV5THB3TA6XaJFT3Vr/kg8BEv/crFcpywqiZP74Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714908143; c=relaxed/simple;
	bh=95SG4N7FXIC5r52sdTkdXxKUssNyCPUbEAn1JH67G7w=;
	h=To:Subject:From:Message-Id:Date; b=D2f1gyWKpmlMUwU+G4547my93EnMgLBQIbctYVUuQC4o8AlM2JCKs6NsAuI/J1hZz3e2GEE953UmM0DQUjXXP5ta+1Pv8dUz6KJ5eIfomZAHP/TKtnBp4/XbAXWKg6Q7uSK0hK+I/RajKtxNSWVRAMo3yX4hQpnNTS7mR2wXM3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDHfz3pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDHfz3pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB041C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714908142;
	bh=95SG4N7FXIC5r52sdTkdXxKUssNyCPUbEAn1JH67G7w=;
	h=To:Subject:From:Date:From;
	b=NDHfz3prgsXF7iJhhVsyCBkTkvi/JgNhnrASFNDowo7WEmJNNspcKDT3O3mOoqfMa
	 DWkTTHnpcmaLCivDL42cu3YaivKy0ivxGZNma1Q+spL7ELEBI0YUrK63umcAdQyyUS
	 IkvtptAc+RT5yvEm8xH6WVwi8DzwIaSPCsM/irITCYhOejl2XS8F742s2crhicsLqM
	 Ptdo8UQgtCOepZESTEbraoCQYyH3Mejlq8iheQFbHhhKMPIos5JLJeaBFiVHltan4h
	 prP2PmhpxbpLgnoNvmnGsGMLYnLQ/N8npoyq8E8y2zHN79pBprgdcVBpO+9cpZxnPP
	 UgPrYDhtaFTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35FFC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490814279.13423.2998446927108980935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a62933a6b35b33a87e4bdc9ae5108713a7e498654101a0bd2754ef94c43672
Date: Sun, 05 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714908142
