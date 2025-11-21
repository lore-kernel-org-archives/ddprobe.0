Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3225B31C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763757714; cv=none; b=GCItJsR1aE88s0RZ9oL1bqoSwDCKZNsZbIhamNgO7gFtOpAe3iUxN6Q99H9WnX19DX1+z2KAu1eK/qUjgzs8Nky9zbzt0tLGG154gZeuqUjTdiN7jzE/+y1ON5gkMrIslHG1tAF6RxDpAWiC3jlZmK2R5RXViNIeZCXcGESv4SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763757714; c=relaxed/simple;
	bh=uprYc1ei7B3eBOlF3+qkqQNn7VDzff6oXV5nIUGqPi8=;
	h=To:Subject:From:Message-Id:Date; b=m3jBv37JCcW02pmBMmR4WwyjHmF7KAJUidnIvzGYvj/n89QNVwIODiKAmr5t1Alh/SpenefIq2NzvjjH4Zt66qmDn0+W4gXeFLrPspErk7kz7fx6rWCTJeMe3cAqYWNkL8IdzM/wXwTY4wN1ylg7exKCZKzuD5dCxET3bKtuvp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZRuMa45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZRuMa45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB769C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763757713;
	bh=uprYc1ei7B3eBOlF3+qkqQNn7VDzff6oXV5nIUGqPi8=;
	h=To:Subject:From:Date:From;
	b=EZRuMa45DVeVH+34tfNtXnGFOMSNU0FAPhLvkz2sJ+rgeNIuoIMjsRY95YGc9mxE2
	 pO/Dt54pjH38q/qc70aK3fM+3KbZjxD8xe/0yLoYrdVOthaCZQNYGej0akhwRU4NR9
	 +0RF0PTlAma9sRlddD/VmyacnU444m0tPQ9YFhYp7Cxr4DkYVYqZe0hQBncJm/lYiD
	 3qSEj87UYb8dHnhs1gdEbY7efoT6JFOa7JH0KeSvGthXu/U0XcGsTgdpELsyCsc4xk
	 B6cU5zuuQrG4GlShrrf4kH18DI/oyMipzDxl9hoAT/ItVKHPvlKhklTHz6xfUYsQa/
	 LKILSObd84yjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B544CFC506
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375771358.21052.7874231544349486982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6e1f052f49c462fc23f1f2484ccd85cde776808c1718434e824c8dbfa6ed74
Date: Fri, 21 Nov 2025 20:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763757713
