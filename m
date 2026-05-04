Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217D83DD519
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777902454; cv=none; b=Y3P5PDY3QUTuQP0NyvbchC0T/UISg3Hl4EBHMSBRmTOvyCe/wS9gARH3ad13b5BsD34HunkWZPIRDk76dUqXhtUlguuK4dR4hYAlpMfTxFg/vgSQ3fpp+3heaJHDzs6slXBM4k3z3ys6oyvQBVJC4++mqSSNNF+QC98xRvTY53o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777902454; c=relaxed/simple;
	bh=PklHbrgxb/iDFHyPOeDYls4osTRN+RBv0AH7pTjVTGk=;
	h=To:Subject:From:Message-Id:Date; b=nYi91kvsU18ECPZcYVJRi5c0Zcan2LxpKR7wwelLNb4zITE/tgiTu6omptdkUzR3yb0PnXz2SNdINKWPxq9gq7ieOnPX44AHyOoF66qskVVjZTPQX1DNRSfU28ZDNdc8cNG0ZsWEMvmd0mTiLKw5PWCSZcr6FA2szhjXnl7iAZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7n8mqQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7n8mqQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7350C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777902453;
	bh=PklHbrgxb/iDFHyPOeDYls4osTRN+RBv0AH7pTjVTGk=;
	h=To:Subject:From:Date:From;
	b=E7n8mqQX4Dvj6yZuu4hWtnn8ThkmviYyaThnqBKLmz6SkMkvok9UtCghUDGsyuyLM
	 iPvrJ+rwANpqsLTCpltf1Qu01zuT/gVQMCcnqrbZASyuwO1Q9Ds2HqaviSu0D+JpU0
	 sx3f0Di5x4hCoXMvhqo9du/3qrNEk6WHjPASC7J6zsbVp2VoxU3YhX1/Qcb+6tSLpQ
	 w6HQy4s2BfrNFD2Z1T5BmDIKINL442Yq8ePkEOOZSuU6RvisVXrVwT5trVazzpvjo6
	 DG55zDMSqLZGI+bJARSl26NBvd7YheL23MuDPg8HzMA4L4BDWrrS2F8dcJJ+eeHpp6
	 W3riO7mNlZRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9767FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790245368.28277.6418357345134414161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0af1c9b8474284c8e2cf26397ad5f31147a6d04b9ac6ef8eb123441692d7f5
Date: Mon, 04 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777902453
