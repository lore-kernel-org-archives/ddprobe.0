Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DE7433E93
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783255114; cv=none; b=NVNS3uVmrJQ7lxeoqMxesS5QpwvqH9KYy7hhYWeQRL8Q4kDE0lvQJBtR6OTdKBlM1zYWSy88iEJT7qBMpbxKOfj8e0Z9prUvknV7h9tVuEXLZjsduwZ/dYcBtW+Cp68y2ZsEt8puQ9tuMBPRqJuuMn1uAgmww/tQ/q0LnrI4izs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783255114; c=relaxed/simple;
	bh=ESYsdeZXQOtb2RNtUdBYxa1aJBPlsu33cmohggxtqes=;
	h=To:Subject:From:Message-Id:Date; b=ZKIHw2un7pVEt/1RzDXdd0RB8m4ndCGGnuEZ1TTPohIDyRP5JalgzDfcuVF+7iqlC1HcxIrVfbVeIQ+9ecoCz7u3wmhYyeiDPynf3NGaF/XhL73RgV1+1QuiOmvQssT2DWqgAiPLhTKfNBpNSivxxCz6n2CudqDll9zQz6RvhNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rN4nnAlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN4nnAlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF607C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783255113;
	bh=ESYsdeZXQOtb2RNtUdBYxa1aJBPlsu33cmohggxtqes=;
	h=To:Subject:From:Date:From;
	b=rN4nnAlS/J7LjBx5Bj75Nj5ulWiRuOBFQA+b68+GxE8C6aMNKoD5pS0IpOuG57TRG
	 8oZHn7RnB6FuUc5tQD5hN/rWpkzPsy24rPdzJYwOPOgRWw0EogJpTvxqaX/50oHrtR
	 qmBf+JKDZXvAFZjT2IZCfa9yxU0r2JkC2dnTbmI/ANgdq3GnjQ8HFaT4wr1iLv49AL
	 ouueG8PfSwdbKxfyt1mibsZgcu1k5OaWwvfOrrNnYT2/E4lI3KTuAWICgedXxTagWH
	 Baj2DLcEX+Y4UYJdSwqIMjKzgoWzayTgUnxea/s+09MWfnofevhoTjf+i3wkk/HVmU
	 XQFAwSEJovYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB14C43602
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325511368.23158.15835396072306407789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe0f1cfb67d111f2e56b8125e1f2d5a1cf728ab8ac5615c8f092af985acbc74
Date: Sun, 05 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783255113
