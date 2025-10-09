Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166EC2DF68
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759996194; cv=none; b=o2KCvDEZvADKLyrTMH43KOhQ0BQ8jnVH9rZB6x7my/79cI9NSIJQd7TV7bOJYPBaVIb+o6rl/rEEToUFpeVF6fXiXUR6bjQ+tizXqE2tBxebpnWCcGDe2Fq0XclMqS75dr+KfMToWzozjYd3NphWJV7jhSg4pFS+GIesarCDhl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759996194; c=relaxed/simple;
	bh=juSBXgHwrp6oOcvHgPOXuGPsCrMmlWZjCbPg+IzxWkc=;
	h=To:Subject:From:Message-Id:Date; b=YsBCNL6T1vhMrJa7jSyjJClMm7wxPuqlrlPH1YcvaVzzJtCGQbYjmUz6m9xF9snvg34dM7pP4DuTCb0Rp9hmAzwFa5YFTwdt8PVi9+xRYpogXaFLHwZgZ+ssxnU4KvBFQLdRGSDbQjZX0DgDDbfi/HDdV3ytT6D90A0opHj07fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMCLJ3O8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMCLJ3O8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759996193;
	bh=juSBXgHwrp6oOcvHgPOXuGPsCrMmlWZjCbPg+IzxWkc=;
	h=To:Subject:From:Date:From;
	b=TMCLJ3O8p92btQkuYWLFsNgofVvBK8lTLlGgvc77ejIKP6yxrhhFi844u8V5j+9nY
	 QmrCoTTbaHNOUHXeNFLYzyKPau7KTJqzXCgRp7IwyQb9WIv3ToPFMtGebhzQRslskw
	 BrePs8Ttb1pYDXlhSpCbqUpVMRacOaEfHd0xSKeHvUXIMblw/FSwCKvSk80KuRksTM
	 lWiVpYjYC6P2nF9gX5aGVYDGtJB7iWu9OPiebrxI7VMYd+pZQu6PreVsKkY2PDl3BX
	 tn13WVBGac8+WbpBXB9DliI6ndMHsRzqDCI0x0lbPaPhkFHX27Bs+o0vt2JFxzo35S
	 REaKns1yz1U2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F868CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999619358.20912.13857937664011558429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9a55a5892b90b29b4d908c0e7b38621d491b36c83b7d1b54e46ae289160378
Date: Thu, 09 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759996193
