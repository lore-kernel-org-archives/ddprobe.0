Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F4827CB04
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770418434; cv=none; b=bUhEqYIGLowtRYVhBAfxHrQDd7KMmRz0+Zmp9KZEURp11kTD/T9RnqGlN+BvsZ0ojSeDYtAAE4hm23d4KXic718ZFBJZOnce7qQX5Wo3pdyERhDjRp1ULtiFBlTJTpni/nIaCjpAoCyzCsmwgMQaNtB40hIuZnxMluNFv7ILXBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770418434; c=relaxed/simple;
	bh=eAz7V/9Zrkh1g+fNXmxoRvJBB28DuqLtw0Q0RbXSsYo=;
	h=To:Subject:From:Message-Id:Date; b=AML5J4dImhJBGIqGO/+qhl2WQ34SEJzoktkXcKIIxQAaBXaYCRz4GF3kyQ+enecwgzZHgYiWqlBgNmiiXrW8xw0AHtIwVTcZi51UovsUzesE+IBeiU+p7nYGURUF/B8oPikCe+Z3CC9/CG0o/IIIc4gXYnzla3K/v6t85LP0EDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMeiF/3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMeiF/3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF53C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770418433;
	bh=eAz7V/9Zrkh1g+fNXmxoRvJBB28DuqLtw0Q0RbXSsYo=;
	h=To:Subject:From:Date:From;
	b=LMeiF/3T1qGh8Dr+jG3DVrLc84FSm6wW16M6iPQTefVSLaM51/IWxvrVPVmshEINe
	 3+SUses9PfmrBUaEmhbbrtc7j5w2A87lNZA0uTlEzq4xoAblrR5IGb0kDk2hA7spS1
	 bD5/VrHNqJ8ELsETL6Gjls5lrIzdbL9Xq9sKDIeu8INXY8GaeUjDp0YU45DOHVLLaj
	 Z+Pz/mSCHoI/Vk5iWA4QFSPuAX7IAcMY9shTxqFjqFmbNFBf6VriyXZmzDQ3PJ1ZM6
	 G7+j3FHq1jqXxINZVUB8Xfa5BGYD+tuo5MQD+BLDawT4ViT+a8mANFxzD+zhS8WGJ3
	 JfL+Edao45bAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95237EE6B6A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041843360.23842.13149668254645757576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccece5cd71583220c59e2aa4f4a7d32b208a59ba993e9a9670690054fde76829
Date: Fri, 06 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770418433
