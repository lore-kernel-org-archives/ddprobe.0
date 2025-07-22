Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3896028983E
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753156794; cv=none; b=Yr2ksTPTPnHOM+1pR/VuVyhEFsaQpp7Hn+54pX5YjtdmknpBj3DCBirC3BJ58mrAe871D74bb7Uzav1dL3ZUUdz5CCKjHqfcyWP7LsKirKT7j/EVikTpMrUFIIhFIDCErhLQYcbTJPfZWMAsHBREm93m3Ui3WspRpyFNgvdeOyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753156794; c=relaxed/simple;
	bh=ttQyTrcs1DQjrKXfKSRIUfSgEa1Jf5r+EJSx88umhjM=;
	h=To:Subject:From:Message-Id:Date; b=jMj8XAcHXxqgzMHTA/Djoud5883KdHMK+b4NnBuSMP8Mx/9nJd1ozMG1DuV0hS47bF2f/PZ2v8VRXRuupFb9N3cTRs/qaXLKqAIKAzNmTDdGYU66BEsRfd7qYNBO04g1ziqDuupFe5CcLBT5lq25w8rdw/Es6CIDgZXynJQjknY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAbamAjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAbamAjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753156793;
	bh=ttQyTrcs1DQjrKXfKSRIUfSgEa1Jf5r+EJSx88umhjM=;
	h=To:Subject:From:Date:From;
	b=OAbamAjRPCq3eng99TNwnI/TgyIfHkfdsHEnAfXXT9fMWbES3Oh2Ytu96I7KSZ3f2
	 HOm/60PpeSov9C8lDLExSt2+v07szLQq0zcks01kT+I/hIQ8n4DCaBaU/exu4cxQGy
	 9mcCJSza7fGqRaAllwhlowHIA+DQgka4MW4x9hSXBWQSrKM4Jsl5FIf77O5QFbFg0q
	 9/VZqc/G4dVejnST2wN6TDA/LusFOW4rqvBDizxqgfZ2MsXUs6OMixyXA+7G+dkeWB
	 GrMph5wDwT6knckdOQn4Xoa4ihoE3542ld5PPtwVrZKLSAe3ciXeo3eT+LSFN349L4
	 eLOUZqDrW4BBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D6C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315679358.4437.10495945800912764450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a9def77b9e6ad5efb81b9f07ed4e102d7435a43bd7ed7e9f73767695613886
Date: Tue, 22 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753156793
