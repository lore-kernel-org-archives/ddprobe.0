Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFB5A59
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752317994; cv=none; b=PBCrK1KXaLAdybt2cGB7mSZPdqfkLOjeSl4Nt28hHdNp4ifbVGiUlKBbsWi/Gf9qgS1l1stWApGzo8N0Dgc8rDzVT9w/WRcGLexotUDXYckSQ7ln3fo8qPBOy6g6xOBqyCBrNB8mMtal+7ws3qP1HnHygkeklco94g8ioS2OX8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752317994; c=relaxed/simple;
	bh=T9JBKa8TgwLbLeMvUjFNmXasW8CIiuy8nI4RVRzJ6WM=;
	h=To:Subject:From:Message-Id:Date; b=tzseyc07oaKlHQvRVLsCINA16gLsD/vFCoY/Zk0+Qr1Yhs52SKuDu+h4Dz5qOv/z3Gzdeals8yzN74UcQXnn4j9JKHEOuH44qC4uRtPo2mNb2gK+6//I9EVusfzvegBL8vSos4uwjSV0FCVdBaIcnS9O0IWykARuPLwA9Q/EoK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmqhO7t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmqhO7t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752317993;
	bh=T9JBKa8TgwLbLeMvUjFNmXasW8CIiuy8nI4RVRzJ6WM=;
	h=To:Subject:From:Date:From;
	b=cmqhO7t3/SYnO4Vj16IrwRrGwjViIqy8nNi80bGksm0oVMsyaRekaiBN0O8+uuMhk
	 NAhwvchZIc5WKxqkyGMa8k8kZ0dWxeoW2qwPzuaiAu9DPev5aNurnmHoSbKa3JlWG8
	 7ejbdvnGvXGGI8J115yb1cre48EdSq1f9g/Jo2c/dnv6+C8m/KFWaBaOC40XJjk/Tb
	 +kn+MT1saSAlICXnBjUgViKt9r+DFZavF6bPHBH/gFae34ypee6hE9ldqfMeRAymxL
	 qSAp5QhVbE8/X3sJSP//ulBvHbvEg1pZu3OY3BVM+oBfNVY/WXcuEJxxnz4Mz5tU+d
	 ExksaSSuu7e7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E34C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231799358.13916.3525707128646873685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9425e2f2d8c422ab2c54811d87c899c9ac663a8bd99038c0276783253769d6e0
Date: Sat, 12 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752317993
