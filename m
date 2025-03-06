Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48818DB04
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741244334; cv=none; b=DHMXuJBUQlP46q9AUXY1aTkp8Ww3J4xjJwVY5P2FodGy//f+p65EJ1+nmtTerwaiZOCAzjgsLnbCF8QMZRzwXjorixZNpQ6neqO9qU+sRJI5AGJXU8KYqcHPTTPQdOwBglwC1/dbwSVolZSO+BAi9jhcdigjrUSN+JJlZGzlxKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741244334; c=relaxed/simple;
	bh=o6uDkRx5e3A5PEN5yfqThyFXTTnGxXM8qT1zhuVS4t0=;
	h=To:Subject:From:Message-Id:Date; b=jgIJaV0WtEmfY1eM1JREkc21N4yEmFNx4tY6Ljl/1eHBT4xmES2IELrJIQR+isEPuxEjiXXIpKekACl3v7GS0Z8v9BHanTF0iQiqLrqPYi7I3daUAMehVk1dBUHv34vT+N/7rnL5yY8L/BDM/Vs8Z6MVbpzf99QwQmqB2z0uqKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHsoTerN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHsoTerN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6786C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741244333;
	bh=o6uDkRx5e3A5PEN5yfqThyFXTTnGxXM8qT1zhuVS4t0=;
	h=To:Subject:From:Date:From;
	b=BHsoTerNoFJx2fT5HmNK1qcAjWtxwiDf3PpYne/zUSeOrdPF43TL7lvkUziImze1g
	 yIgC3Nc2ZUlo05pJs7XMufIaRNfh8ktcgkuwS9fo4D4WiseOw7jd990G8KYRq5H4VC
	 Qs3yF8pGbp7MgNN2TnwNMyTmtJRhJ6oUyHFqdKoJ1p+idLbIBpB5UiX9EOtr4s3KTp
	 MyiMDnpXFa8vSbE9d89waO4NcKIgdCIfL5X33JUA16gdWr6FYulKFxm2piVlNgFgU+
	 jsaNaZ4yWkxc+tFLH5LnpKn/WznX8io3ziROWmAn/MBO76dKfcp+6mPLz5eM0dgxFj
	 DZwLT16CBPH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ECC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124433359.20730.12760273111185342578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00808c131c5f3ed98cb7284952bc179ce0e73c38f597625e50245f150c7756e
Date: Thu, 06 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741244333
