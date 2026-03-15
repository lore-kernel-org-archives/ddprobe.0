Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E85B3FCC
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773542694; cv=none; b=sFD+gqWD2YkmE4V3vDSY9Xte8h5Hek6xEs1g4tiWsL2Q8OLPl/Im0MNRx52xnjCuKw354iaXXLT2Ye9BUCCuFObQDO8rV6f8AjkWLlaULZa7BtXRra8O6BQh0wFw8ZrZvWwKlwHlvenQmfj8Rdr82hO50tvStdTWUqTs8yN4v9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773542694; c=relaxed/simple;
	bh=EjAyciPZDwdrdL2ySaS2KlM03aTPMLC0xvnq5HPaOHU=;
	h=To:Subject:From:Message-Id:Date; b=Wo99DxNO50udfB1RcD9xQj5aPgJPk8Zqx6nERUAdKp/KBialtZSEAA9WCsAs2gSL3ka5CiSCG2WEX8t8Lg5nQ6OexweklkLF6omKVXCv3+Gwy3a70jrQx5AXvTgyrtoIO7VuncZwdlatp/6pMJn0ZUsF8/0bxhhAIEG+EQ6q7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxYF8r59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxYF8r59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B92C116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773542693;
	bh=EjAyciPZDwdrdL2ySaS2KlM03aTPMLC0xvnq5HPaOHU=;
	h=To:Subject:From:Date:From;
	b=OxYF8r59Fn8t6u/XneOTwOOefZzEoSoA78syz/BVVg+8Y4UjKU9OUq6etXedN86E0
	 zJyk6tFFZCcmsVD5DBMltDKVMlJM75yxcRH08v/D1hENp8NJpJ81ervDlr5yrPKcnb
	 oIIkxteEVX6HxifCXwdzPYlAS4WQma0WOHoDZti8X3Kjg1csyc4grUnc4BdSkhyIus
	 uL4YY5zRvCUrvxMNiX2kDDZrvKW9exmDvHo2wLTxyFTx+rayZLsmQQw5zO/VOC8JKO
	 DZHYu49HGyzXchChzoDwKk/IW/YE7s56fiQD4iGI+IaduLHGQYI9e0n8n0i8VCx6xp
	 hk7SKRHwPWvEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549610854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354269358.9072.14307096737885458010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52c14ebc062f03136b3e79b84cce8821f349c84a7c8e7877b6049e536292bb5
Date: Sun, 15 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773542693
