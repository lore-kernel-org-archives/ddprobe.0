Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2961F1E489
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754279994; cv=none; b=nuCnwD4nveXpQQiO1cyDqduR0H/ZF+rvsTFA4oUi3ZqZggdK1Z3uNqzLGMLaPw1MOxu9cr1+9yvJbtWwisQ0kQL2S0QsSWILItZGfNsxfgK25ZbafepJmPqAsWhy469YOyO27qD0pAtXPjgPOUjPvaNsd/ZTmtvgeMIOLfF/ju0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754279994; c=relaxed/simple;
	bh=cFwE095W7PB55N21B9VUOf0dNNB3PvwsjB4YalgKVA8=;
	h=To:Subject:From:Message-Id:Date; b=C/bRPetYVee9kWTuz5irVM9MB2f1pSxqAdc+AJcNDjT0H1iGU+qjI1ELOPmfWE18hkOsz4C1F8bYQeroVA3LxN0Xu6rJPhodcrkFbQgsw2CJN6kiJwipiNsK+/KSAoBsvnJGS6HTMu6kgA/erlUlJCaZ+U8ZcAUMwf3lwSGci/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5UcctXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5UcctXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D40C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754279993;
	bh=cFwE095W7PB55N21B9VUOf0dNNB3PvwsjB4YalgKVA8=;
	h=To:Subject:From:Date:From;
	b=V5UcctXQC+HeU3Kd2hsc6H6YjL09ETcTaSucvfNzI4n7Y6ovPPO/zK78YeBAfw31L
	 5amZII/eEtGXKvGv7C7ogPt2VTVUScOJPgeobKiniePu4Vu2QUlNytBICDIzf7edOU
	 SH6dlS8FLblowxk/9TV7XyLnaLmooi6zGRPNMauixzWGe2+SYF7NH8gpwyCfbU01wb
	 pP3NX4Uuqu11+TR4fWqYYWxeA8WBq36at90i8k1cOEZ/ML85bUPsvm3Cq5b3/i1eEH
	 RzZ416p7CBFGG+KJc+fx0s43GtH/vh5RnNbJ67SsdYYNW7Yj4tSYNW8XjcKtnMd3dG
	 /zWNyd3O1wvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D6EC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427999358.2306.10879575905058660902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d4dcbb4507ea187d1049c1ce7e1e48ce99e981cbfae0c3e9fb2308c230850a
Date: Mon, 04 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754279993
