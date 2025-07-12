Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FF61E871
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752338394; cv=none; b=Xx8mA4ck6GrB9HebA937FBdE+wGUB2WGkSkh1JQFMsu0dwYjGldbBE5Y8K4Cdbo4kefuE9yLb9HiISvTe3JDoj6Dn/GGJOgHJu4vzC2JjC9dRMB7RMWPzqYkBN8IRXwvWAtstr/uMnVhlXsBJGVZO6DeqekApw63RbmuP/sPUoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752338394; c=relaxed/simple;
	bh=UgvFzMI01UP4lpXAz5nHenzrWxgIUgVElm8KG4KC7kM=;
	h=To:Subject:From:Message-Id:Date; b=XbXkAthFoL4r8s1ODUp1960d8jPP8biwo1yEcgz5Zx/+dxPYDMunj2U8wA/Bx06/bcNCrJk02egqtFRvY7hLDXv2zLEe5CK4NmUiQ7EiJVTTrkHiGsHiIP1oeWcbGjAxvmq25QJ8X8zjD7NMmULQm5WnwfizockGOZyWM9Mxd4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kzre9684; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kzre9684"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752338393;
	bh=UgvFzMI01UP4lpXAz5nHenzrWxgIUgVElm8KG4KC7kM=;
	h=To:Subject:From:Date:From;
	b=Kzre9684xVLWKYkEFHgzpNTvakkDIIUUQWJssVWXPlqDtqU6qTcZ5Kc+ua0vhFjnc
	 anhm66fAdxvd+CzuWM43BM5QTYIwXL6wBS8+SJNuIP/hO7i+Z+wHj/HLmPuz3qO3gH
	 TnvrAeP5a6h9xYWeWAZvD3RMVDEDfIA22g8r/O6E6vN4PPXhHrc5HdOj1uje5nOtfQ
	 rZEpfGcmFFYChpHCMDwebC6LdOBBYXFmtpJ8G1B8NEHB7ffiE7Jk07r8lO1qOT51IZ
	 yretF600ZfNqef68C/qxxzegJ8/cop4fX7PsiqmUFyUGKCVXIrsKFIa838f2Y9zy+x
	 /NZKd29p6a0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AAC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233839357.6427.15999530321022418437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6efb006aa6b6aa29397f8fd0e77c4e037fa503425f8213f480c1f8cfea45c54
Date: Sat, 12 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752338393
