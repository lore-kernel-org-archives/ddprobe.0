Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5516D215075
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782129994; cv=none; b=sbclqlmfrlsMpRKQf/SzJi5MSYb+12u0Stq9zI+/wKpF/zZLHmoxn2c/AgqeA+ZDEreZMFXKEGFBtp97SBrh3w8XwfT9Y7ktDX2JAWlJv+bjozJ6hOU0QgUdqxqaVaUmCrOWBxmrQPIQy8tshHp3IRXFqILNyVZI8JSmi5gTuqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782129994; c=relaxed/simple;
	bh=AEbP90Nlem9uJUgV1TD9en7Ism+DJPwTFneYzHPQOGI=;
	h=To:Subject:From:Message-Id:Date; b=WUIuC+7sbpfCe5tEb+D6MnzFlKftIxhrnsNBpuv1NaIOV0kIQjHgt4JJmZUVrJz3nh7Uyu0KF7R+Ay0Q6EL0W/5xlEJkHj4Md4JmbCLruAOz2fY0+oD3A8RszExeV09UewTlKVOKDKMc/hFAug4wKixPWFkYMjOOioNFCYGly5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY0z4xzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY0z4xzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56D7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782129993;
	bh=AEbP90Nlem9uJUgV1TD9en7Ism+DJPwTFneYzHPQOGI=;
	h=To:Subject:From:Date:From;
	b=AY0z4xzqCNzmNW7VrIiE8enRTkjK3pnLLu0md894/5/gXMXuHSm8SpOiDloczW7UE
	 PMwVwisCuF3Xv8sO/5PIDymBo9k5FMSVf78PEwkHJgQmzh3s6J0YCWHMNfSARnwHbc
	 f6SX5a59YDrjOyTdm/iD0Yroj8IdecsYHUG6cJX85wIflovef3R/pyM5dbVGwQwARf
	 P8inJgyF4SPl/TL3jT+gqf4D/OkiGlpdgMJyZnytuF2Py1inYIISwdb4AwpMki5Nsm
	 DCihudoR3vjnrghtFhvcfoBzhsceRJXkmFkJP8j8yQ8BRvGO9Tu/0CDwtkFDGERePJ
	 wSu2S4Jf67Dvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA828CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212999374.8471.14727963449923409943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee4eafc80e5b7c0514c0b2eb2161081f018d46c824caa4804d323ceafccd275
Date: Mon, 22 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782129993
