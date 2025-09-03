Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A09B2D6E69
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756889394; cv=none; b=iAskjB3MySQjpnO4mu/lQp6qAHRqdvmoXeUoBuEAQtaF7BC2uUBZNzehx38aimLqThmEW/jHb/MxzHhBmm/Hd8JN96nLcXtlzj8YG6518Cdx2d2sfjaLL6arFzF/lBxfUyTATtPn1j7LQpUzev2G27Mgw5bSG00Z+Wk/fHk80ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756889394; c=relaxed/simple;
	bh=jyKJ/S/RUpxntzq8uakCoAcSugGAczBUDyHQ8nkoJe8=;
	h=To:Subject:From:Message-Id:Date; b=iHnXIuFyhqUZpDRYnRFx6z9o62x2pwVQr1Ip+6MKuTiN1TbPfw9I+YPzot50yqw7fcaROQ6nPOCA/MsWHMOWTxMlxRFMRUBPw/J7pzppaB6UdzOC3O3X7GIpusaVLnwxzSuPzU7JbjpQMe1yCe4SmlBV3eu2tEdW9oermXTotOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9L86oq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9L86oq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE992C4CEFE
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756889393;
	bh=jyKJ/S/RUpxntzq8uakCoAcSugGAczBUDyHQ8nkoJe8=;
	h=To:Subject:From:Date:From;
	b=A9L86oq7YpLVsboGh0kIgsvEvopOI5XyYns+ui83ZgEt8zZKcnI035USPAmOkBNNz
	 SW8BljhRbL0FcvniRChVeCsGINYuxEp6yhgrBSjWZr3y4AbDWO/+1N/gCbAPWMgBdY
	 UbIZg9WYbW7K7Lq2tZan1wG7oxe+j6MnmI5DlM7YVBJDI8T2AIVtSwpie7wKN+MKBK
	 kcXlsEIOeS3qKHAlVbjhYcFK5vgCM1hGenPek2rO0zPuDhl25Z24lVIAESiWLu8+EX
	 hFDROwqSllfULOu43F1tXsXvUZsoOy9++90jeX6RGeykAVqt5jT1Ub8feMBFTvSMJv
	 +v9FSPFkrsS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE51CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688939362.30353.17465908107317529740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12502e34e12770240e4fea06736b5b9283d0153703888f8565ad4f3189ffa5ce
Date: Wed, 03 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756889393
