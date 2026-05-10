Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484722F8E9E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778455834; cv=none; b=ZDnC/yLL8iwNNW440E7/nMLM3PwnuXg6sb+QvH+3nXqExfZqQ/xf/pk/iheJnZovnbsk6qJZPRZkVI+OnAd3Ybnjl4JIBmLJs8h8cJb1GuWmFDO0e/9rTaJ15VVzPMY9hfao9c+BK22BFFNfTFYjOo4AYRLT/5v74a7odiY17Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778455834; c=relaxed/simple;
	bh=zYJwxArO5KmPwz3S+UR/fXn9RnqA5hiwJw38PNgC3pM=;
	h=To:Subject:From:Message-Id:Date; b=RBo2MsLY0AfpHzeF8tkwO0j2ZfEcP62lM/Vj9ltowgJCkbUKyvNO14Krt7N9NA0gnqFnBG7U257ulhtNXt/VNQKVPA30XhadPX1AA+r8fAI1jzKO7pqXbaUozB04eHSkA974M0h6yWtTv80BCwH0JdtJs0FhUi3z9iLCh3Lfv3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdPKVZII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdPKVZII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E0CC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778455833;
	bh=zYJwxArO5KmPwz3S+UR/fXn9RnqA5hiwJw38PNgC3pM=;
	h=To:Subject:From:Date:From;
	b=kdPKVZIIA93gsC6hdlrk0Tto0y98alm0Fij5Z+t3xrLSZdua/S+AzN9nnFjf7lqJe
	 bG+Fe9qlEXuiLyoEudTDRJXILbm6erko+sHE2bzXha/ctMt0cDIIh/zn8tm1T7GMll
	 iNTqAQ/a6ZXAWkcj8Eaz2C2DnvN6X92F8YBvtjpuNWatBa5b7+oKjfrt6jmbjQVpzD
	 62aax0aX/e/azpu1f7Rald2Sw6GTdZP5hAdejHdC1eOlPEBCmYxmoJbAPuCUwp0ixM
	 AO2v0jhpJieQR+riEw3tWHFkYy6bvZiJp5QsXJzs7Om2yW6sd5Yg277vd/G+O3kPsF
	 Q8qv/OG8sq9vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8CCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845583369.25570.13471005044816206996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8fa8e775b5f3bb8850a0e60332f6f4ae6b36fd84dffc673064f2b228d8b456
Date: Sun, 10 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778455833
