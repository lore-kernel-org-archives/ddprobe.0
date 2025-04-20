Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033DF9C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745114994; cv=none; b=ccx8CZwFekwBNoCtajyM41Kr0aTOLvTJP5IC4MCVLRsMx3UbDqqBFvf0OuqzsZitHzibL/920C0PwYK4716gPuEksxPdfUoHPQlyunz3GbU8v6BKmn/Lw0T5btPmSUYTo6VTLIaH6HoUdPNEtNacyUlIHLBdXOEI3XyYnHkpTY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745114994; c=relaxed/simple;
	bh=musFH2p7kEtrhOOZZhdgYhrNqYRM687+kefzo8dlSKM=;
	h=To:Subject:From:Message-Id:Date; b=PQAtiKmPdCfMFWNilSXsUxN82cykHmtZkbKtQkA40OvG2FX0+KRsKVlwmRohRdtNWvSFHerXmrboF00HWz+19J3AsCTaS0VUbNB75GLxJ38x6twM1wAwLx3dGgAd+LG13tTUuyxp/C4i+Xu5AjZKeFKePt7Xn7EOa7qVK1YgqdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl7DLzYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl7DLzYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B395AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745114993;
	bh=musFH2p7kEtrhOOZZhdgYhrNqYRM687+kefzo8dlSKM=;
	h=To:Subject:From:Date:From;
	b=Cl7DLzYVUxarqI8Vw7FpSfp52k3viyELAYjTh+JZaqxGQ82H0POpwS+kliuNwk+KC
	 CgEy7DMMSSWjh5dIgo5Ht8MVtel7f0i378g4iGSGdBNzrsJszy2Q5quCondgL8HRJJ
	 cfwXl+7doG4BHZRT8i/UKHCao2nqgc8ZqryYGqf7s3AaO1uxZGWbQG6MHSwMBTtl2d
	 F3Vi/bc7E/+L3JJ2xZspDn+0BmfmhjxtZaBKkhzxzCh30zNRvdHPtjUaXEMOoYI2gm
	 fqhicn7yEd6t1k7yGfE4CkpY7aiOBVI9AhUkKmqHsyEn9ihMf2Z6chG44rGpCi/PFP
	 ZZTIi2yqJMikA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698EC369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511499359.6931.14021814912932407483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c043d9ff28b825419f8370c4c83386b07308b900731e0afdc2bdf0ac673b73de
Date: Sun, 20 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745114993
