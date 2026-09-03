Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543F730E838
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788408634; cv=none; b=AITKe+f+jB0dz+c3nGYxBgvb1ChKxvCVWVDGw1ZaLrO9dA1OMO4fM4SKhJLddo5gW4JloLVbEkqQdq13jgJk2QuDdibs7Zh4o1GF0plXMMBhBjHwlD+K3esFV2Dhwb75y2nswbMvucuhqpeZDStQE8kP/Z/20+7B0df2NveJZ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788408634; c=relaxed/simple;
	bh=dKssvdFcIPMwZ07R60WXsP14jocDWLS4HryZHaPUdgo=;
	h=To:Subject:From:Message-Id:Date; b=imRWsR3raXT9kG1dMMmAAvNjR8SJ2BCyfyD4p+lXJTQQ9nrbXVUrbtky0zRO450BY1MLvnAvV3CMHCjQMHZ4YSMqJEPxrFiA+DmlvOI1hYlOJkzIuk5YPUaCfgea42r1+OF7Oo7hVAfeCGgeMXW2UtpKiIGdQabrXJB7AUELsiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/fWtx13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/fWtx13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0498C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788408633;
	bh=dKssvdFcIPMwZ07R60WXsP14jocDWLS4HryZHaPUdgo=;
	h=To:Subject:From:Date:From;
	b=M/fWtx13qTj0NbjmISdDw1GF4WjJoU1UbbbWc2be5yGDkOeuzqu3Y1GdQ629cKKub
	 C45YUPN+gGDmm4Ruepr1OYwokF7l001gLZ9cWdHm666kqkYcRAFDQDXiAEGy2TwnlA
	 NTUglmTbEXxWEAADN5eP6zOsdfp01ojbFuDTh8+6N3QuKOwZWmML3iXQNC+48CvI1N
	 AfAHBzfIvAKSSJIjQBww0eo+0pQa4JXfbNwh6aakiL1LGUWvK614ssWatbc1yd+rgR
	 sPqUldFERRGegIGX5qN+V+FUHPEo5bnKTHEAGebUxfoeSGBpXRAxaWi8shsHbhp+z0
	 aVm4fNXCu8lzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACCC624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840863369.18674.1433572444111972769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5042eac9b3cc7dd8a44baf5f77de6bdc196a967d519ae681d432f929cbcf6d20
Date: Thu, 03 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788408633
