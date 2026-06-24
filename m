Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1D12857CC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782269794; cv=none; b=tyCiiMNDgwV7/+5pSAxI0oAb94vtLI0q1z/seZCOckCdPAzlYlHKuqbTjOKve/mGjc5oy/2HIin1HxY/WKBMGp3Hji/gTJVArpNvhi24L+qh+wuDXFOzApgtZ/SPj4ECV3eSnrh/udx2pfq9/5Dfe5/pw94Qvx3cUtpiBhBAz40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782269794; c=relaxed/simple;
	bh=L5k+FdhSOfT12NeGbx1iDQq+8niZm89lmV4tQVow0JE=;
	h=To:Subject:From:Message-Id:Date; b=oJRYxpa67pN/Ugj+nGno9Eug7kpFvjGM9YKFHFHJWkT1gADS1zNYsQMVSTjLxy+fyLGqaPyFOVlRyD1JRdzAijzMuzCPBTFv869kH9L2M1syaRU2za6KQfh6Vn3zAUYLWR9q7sGwy8olSvpaPUgtgleRXBKXPMAFAPZVeMWotXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOWf7fNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOWf7fNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BFDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782269793;
	bh=L5k+FdhSOfT12NeGbx1iDQq+8niZm89lmV4tQVow0JE=;
	h=To:Subject:From:Date:From;
	b=lOWf7fNJ5cx6I3iTtABIKzNrJ1lsi2c2E8CMtDEt2thu14kqAJvUECdX3sPf7U/1E
	 JQIC7ZD0SuC+WPuf/3hB3XF+Bny3Zgu09a2RsiTkoHkKhstlC+S5lTOhYWw4PZQ6ll
	 tPCFcZ32w+YV0ieTPEhF94rxsfAmv2BQCwhI2UvO8ioudjF9VG3grWz73HhxZXRu1I
	 WQi4MHuyo31PN6MbPDpMn+5lOjDPreZZbrLRfmHKnqrKilTSJ+XRNfwZkYU21OuTKJ
	 WAtoevZiHUCZpLcSkhNdNWNeSMoY8j5Qbu/e1BB2l0mvMsKvm/AQnA/jsxOKa1Nmpy
	 ocn7nQeUhu9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92ACD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226979369.32742.7572707356248882517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17abf736fdf2b6db98f4085a67f3a7466cbf03f86d492c27ef89259b2bc483ee
Date: Wed, 24 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782269793
