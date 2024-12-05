Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B69225797
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733424954; cv=none; b=OC5hQT1ISjm7skA9s4CIVwputyH2Ga02NnjYJlNHO4hyPan0G6N0KhGxwQLfNXYV5tiJNCdIpHk0grB2gMhwUM66tpUyGSLR6CH+s4Inlm33cif27ULDF/uh7yCvvUvC7S32tSmWRpc3sN0NwnDRnahWZFcYLjC7yur7xTE88J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733424954; c=relaxed/simple;
	bh=99gYEI8GS/xANVmIHBmEeoWWC1Vd45nM/H7GaGaVSQQ=;
	h=To:Subject:From:Message-Id:Date; b=Ge39Y1JENVMFVNOUPRHIECmxd7dXQWgKE0Gw2r3gqDCgLcDekTtOzt0fBEnLu9FXk+jirI+qLHXBZ0KqUdW/lpmHF3sekYzLE4uaoYM1Urd2tDNsRZEB5GM5jFlkEBtY2+CSQEPrw19KBFXIPgF/k+Bf4vCuzHhtVoLsCsIDO70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZujsExv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZujsExv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92DFC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733424953;
	bh=99gYEI8GS/xANVmIHBmEeoWWC1Vd45nM/H7GaGaVSQQ=;
	h=To:Subject:From:Date:From;
	b=oZujsExvhFBYCui62M7d+banN1WY9sFhLvUk9Qw40D/uJSonJjArEhUoOM+OamcGJ
	 kdVnmQff4o9nQTiZpVWZw+yialVMkaNXz7GeNL/s3LcaW55lKDmLMGdEFoN4IdWn1D
	 DjrokmFbo0MbobHPj4Fyfrv7zKlSH6vHTQSOrvbcvE+yZPkJntxEcqdnXemUo0MnEn
	 OAeFP6ckhHf8shMcXsBXg4kdGqK4MR4YEA2FFpHiPuiOeSAABAWJzNBi7OaUf836MJ
	 HF6Ck8NXpAVXQU75zErFa9BeorpZsIsy3yoZSEizFoeb2AmB31OO5smg5bJvQn1cu6
	 ol3f+8tDR3/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B81BE7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173342495362.29280.11427582961101525882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcf04a438c0f6f2592125b2da91215d5943077fe5b5c1d1bbb357fda6654240
Date: Thu, 05 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733424953
