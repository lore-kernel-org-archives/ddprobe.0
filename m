Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB67153590
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715608943; cv=none; b=mdruaVQK+RwWLp8gwpYAguAu49Lck51ZMG+MyDCnJtrrpSCNoqWTi5DLpc/yMitnUohaVnNhllJkwKkc6aG/LlXGcqz0fTTOIl+7qu93oPv8/Ie24Hyq/b6r03j2dCRDvbE3m4ak72MYFHlHlVesXMGWbM/EN3QfyRyNqjkeuCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715608943; c=relaxed/simple;
	bh=2e2Q/tGJswWsOFeO0563Wm3qc08SADqHhK0k3bSPkSI=;
	h=To:Subject:From:Message-Id:Date; b=AGmVoqYb22F0bsNODfUqHsXdpWCVr3qXRNt0W7Gs7lUfHMgVj/PR35QZkqo91CdGe4fH+gzD0tilfBQCddxtczpCLAJ+X1snEEs2QQOPFk5Kvtt1oB6lj434m1Nz2GsdCtreigB6H6Eml1bzbVA83j5usLtrHQEAJZwfP8rbBMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDAE/Ha7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDAE/Ha7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8B9C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715608942;
	bh=2e2Q/tGJswWsOFeO0563Wm3qc08SADqHhK0k3bSPkSI=;
	h=To:Subject:From:Date:From;
	b=lDAE/Ha7kuZ/4kiOXKY/cFoLI5FrX/fDukpOtz/bk9RDtCaPh3oNCJnEJPRo6Z6ms
	 tOqx/pPg8ZJFu7NWkejQ3CuNfIP5Gmwkv7zSynlHpzqc9L3FPoea4nd2KdUoYcbGnJ
	 EpkS1M69ZcF7WK8zBpYugpqeTKPHwvSmASLIMVGB0r9HhBcHI+DOv6OadkqDP61do2
	 zWmQjzF76TbVTl89KPuG+BINUQmzo+a6qmI7uus/UXKdsfSQZ/EVjFltodQF6XfcYH
	 uT2FCmNxOP+WdUdhTq4awA3KmXQhZeVmCMdPz8lh3Sc9Sq3TbPC1YS6JpZhcTt3Yxj
	 mWWG130wzLq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8E0C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560894276.24058.5378192325027244940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b505b1e0eaa0e12b9c0805af4e8e12e0989c79ccc929d8a49e0fe8815189a98
Date: Mon, 13 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715608942
