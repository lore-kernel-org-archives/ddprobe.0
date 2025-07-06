Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7882B9B9
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751780994; cv=none; b=GQLSpBf6FvjSHWikPpdydBc5iOHI4bDM5QC1ciRxgxkrPgaAUB8/qTZ3vNZvTB3GG6kibOsV2EOENg6gCydhlD74RWMwwFbKjoQuR+EtTKKFVBLlQ1Y2kwAoQ1pGV8fGrWLtqxS+Xro3uGUeVNrzRLFu1vfRPJ1bB8oYfrE3x0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751780994; c=relaxed/simple;
	bh=qN4PjyGhc8X4xVFXT0gqOVqh/UZfsGVG+d5ayF6/TEs=;
	h=To:Subject:From:Message-Id:Date; b=lmhBz0iRF4EnH0EeW8DaXUslaUiEAWLQvA/ILdVJj1IoMDQTlA9OzGJKXvyhbcCE7snXKZ7iwjrpB9g6+PuQpeNOK/g3zuY0XEkbNuDtt7Ja/jetyXONim9rrP++BVqoFKd0aVfeUTT8STI3O2p56qSdTKXdDiOvEa+YuXlRh7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad9edSdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad9edSdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D3C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751780993;
	bh=qN4PjyGhc8X4xVFXT0gqOVqh/UZfsGVG+d5ayF6/TEs=;
	h=To:Subject:From:Date:From;
	b=Ad9edSdqVeHB2M65N78n7BmqPfcNn77XvqLiu9XzyDYf92aBEUXx2tXX/Rrz9z9WB
	 TIO32V04K43LvHPthOuALndOyt95206gBnOudoyyEXEKVkO0I4fKwaClqqj+Syi6iT
	 4O4EfdPaTMaTGe6n9hD02ucVXndfEc8Zqg9Q4XeI5/HNeryz3zRZxPHHQuVi5gkrEM
	 YckwpWmKK/MGf+5TzXo51kj3sAq2rzCGEsnWhqCnmtf17PJmh9iLtiRxdsT31pptdj
	 C6nVeK0IKfEMsJj6HMK7GMIP5qEUtvCHcax6zTaL9l2dlHc8ClOW8ysUQzntrana4D
	 CA44o/6GU3EJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FFC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178099357.3081.9307355372754509490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb4ef06345dd43b1197b0985384d7382288c3f94d99294359f64fb8f1fa6767
Date: Sun, 06 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751780993
