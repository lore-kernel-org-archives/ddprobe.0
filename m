Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C07EAE7
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724129154; cv=none; b=oOUxIs2WFcto0B++FrSEh+KnujjH36lv4jbDdMo/Qcvb5lYqLEvODWfjChC5pIVLCONfCkXwZRqcRbCpohI+XB7jhXZE4mes5dFfP7FHjx6ArIowMsqQe8zHmtlmeVIr29TTv/G8K5/3Y0QvtCchykgUvLoR3PdU/LdhYpcLsMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724129154; c=relaxed/simple;
	bh=c8R9Y96Id5QPJ24iLCDaUff0nn8G74eVwQyRLBazsX4=;
	h=To:Subject:From:Message-Id:Date; b=B2yqerqTnfDMuSyycM/Em1XcI38lDhvF0iwnAaFJVuo8g+gWrGp32R6avrNd2Z7kD98MkOm9YJrKkDb4wiRbcuHyAdbSWPCwAtpTRywB6oiTK8Ws+gE5JVgpcc3WQC426ssr6EAGQIutpVbo56atgA4WGrQu8523ZaAR2mZ6Ifs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl7CMDIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl7CMDIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD933C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724129153;
	bh=c8R9Y96Id5QPJ24iLCDaUff0nn8G74eVwQyRLBazsX4=;
	h=To:Subject:From:Date:From;
	b=cl7CMDIVTDK6iOM0yirqfvnKxpO5sHAihAsAw/8Y3/Mi5eiI7/0Ja28RsWUtjoX8H
	 hONCQJHkshuO1WWNRRQjAJ7tdlMB7/4q85A/eDvMEG+WcRvo/a8Ltq8+DKv56SPHVV
	 xYACAqYbeiTrjOSBDD3ZFP2Liv9jEAmdMINDyGNgKqcQf3oXjP1CKIVK6qdmWxw2OT
	 ekq6gQmn+8QlvJxSylyAn5tzbupKcaVEFL2wGBg7qT2hiU6ciY46OjB5vaVT9Ij6Y4
	 1B1ZzSWabK1K8OWuod7/Q3bGHF7jyfzQNRZkB4741KAJWrgAaKsrBknHOEAlstn+Py
	 1i+kuHDgDfJ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9867BC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412915361.30694.5375590410852045680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d0c9c035be15c06714f8090ea09532a1b29999c2d006e7b653dc686a558a4d
Date: Tue, 20 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724129153
