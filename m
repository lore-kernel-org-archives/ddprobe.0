Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1026C12D21B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776354454; cv=none; b=tvJ0rpCoriXJKzdFG/ieTY9eRXCuhzRN7ygQAHRQX0+doik6LlnO7K6aw9fZ2NCGryAwBCuwDpNpISDEOBuV/VkKxhci/7e8oqwou3Be4dKE8A1IgR9QPSsUdyRYH/uy3B77hJhlXMnInKNT2yb/65T2yWD150d/mySyrqWZFzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776354454; c=relaxed/simple;
	bh=/Waco8FnoshDtbY6dvzp7Uv8yuaix/l8BHbhnkgyIYo=;
	h=To:Subject:From:Message-Id:Date; b=kzpfetYxkrDTSI7mJhvlK5wOwkIII+XVTZUf6IkJbEgoYL5HMNfQQP0tJnCPCSJSsbO4cOE1wyxkgsJqpoITc4MRqfVZr3Bbh5iyFUln7/XmMJacgx/S87GEacHT6pf55bIgu4oudcJOfYAsnMb30xwCc9WX52eaoD+Y320cpxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLMcUgvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLMcUgvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CEAC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776354453;
	bh=/Waco8FnoshDtbY6dvzp7Uv8yuaix/l8BHbhnkgyIYo=;
	h=To:Subject:From:Date:From;
	b=bLMcUgvGG0LzmSgsmi/7XYBSsvG3BDTVyH/Ga2ZEXIiv7dtfvzZsg9/Gu3whpixBo
	 EOPzaLA8ClwgpYTuaCTe0KCMuO2TKYM838qjQ3TOsCf8Oqm7a6s3foKDe7o7Ez1ylH
	 zIiwXMhWrlWSf/T2CcudgH7AMHD0GK/8rAWzkvE0KLlDvLPljO3wUtCwVozWjO19W7
	 CJ2XgrvqnZ5ARQgIAESyjXECVFjbgiNIUgIvAK7ihmmC1Tblc8SnEGCFJJPVaKUbvc
	 DajlkYgbcyuJ7cvnKRoNKnySo70iQS51mbNaC5ZEUb0OXNeNanllSmwPu4JK2lsH/9
	 diXcjW6MUz3Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA68F8D75B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635445368.18568.12886111332770764642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b997855a5d26a5069bf66b2d5bb4290da875176e916c1b57bca04615c1fcc514
Date: Thu, 16 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776354453
