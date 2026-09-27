Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4632673B0
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790550634; cv=none; b=gVcnmFv/VNn//RBK27FWg/Zt4O83NngXxOs0A7L1XvKFGcZGSEVhb6sjq96icOWQw+V7shSeS6kn8FoRdeDztEGNXjMRhgha0WIsjDz1YqDFVUVqeCCjrsq8zavxGMwXcMyQV1h+aaBDtS75c/vbqI5W2/xEGYExABe3zHqli9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790550634; c=relaxed/simple;
	bh=MRXuHTLTpEU/BSSqeGMEhsfE0M76o8Pb68dFoVQFAvg=;
	h=To:Subject:From:Message-Id:Date; b=FUolPh6BN51+2nrAapB8GCIVkiy6urjAQkzJ2JhVfGhfPwK52d5dpHtRFKb1orP6N7kMF4UqPmB2jsI48tmcYNdsGZwguF3uauVSkhCNFC+X630OGJqlRne9UoNeI+ImuQu3zkb+vVDzpO2GanMRDEu3UWuLG8yo6d54bobfwL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp2Z/adc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp2Z/adc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18A5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790550633;
	bh=MRXuHTLTpEU/BSSqeGMEhsfE0M76o8Pb68dFoVQFAvg=;
	h=To:Subject:From:Date:From;
	b=Mp2Z/adcMv5XhIxCbAem3glgJydnxR2VyjgP6N1892l+ZrMPF8Sh45Z8w7di6f1LK
	 QjaA7giZHvbWf9ixelGS6SHixDECR/MdIhivz7aQC8/R6i5ZXZwvpSf2xYzSKL4rR8
	 cg4Zdw187NjanT5uPVpTpuXBP4qqR2WP47XxYiKvfU65tXKN22vB3dllmzY/94k33q
	 GUXDquqF4WxsZFzwfCe6IbFzBwTWhtqfXCe3ON/QRl3Vh2ujTUvcd9bj+po17lbZI9
	 cN92kjYJe4lvyP/e+H0rE9FL33mB9IGJenHF41t3673WCCcEXm5uJXWHQSouNZDW7H
	 x9i/hi+W13Eng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE5EC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055063368.22845.17553687850274783367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59c8bb957a465164371535f175bc565486ef393ae0e586eb620f028dfd48f2d
Date: Sun, 27 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790550633
