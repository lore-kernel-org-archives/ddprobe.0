Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286C7374C4
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747285194; cv=none; b=EvaVdTjM/yUcY6g/qeUQJdanF/KNnqH5oMUCKnfPCFVtPcGdbbA0oynFmCGCYzxtNS6727LS6s5ABvPG5+flbnXHY9LUfMJyRfkzxfcw4Wu7fWQk8Kh8CRffo4Mq6IHx7wLJxIVpbojooDXZOv6dp8mBrOmS+t0tmPgONcY3nEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747285194; c=relaxed/simple;
	bh=6D8cG8X+b60dilGv3HqG1wYkPiDLe6JtbSrl/fdBOCM=;
	h=To:Subject:From:Message-Id:Date; b=ZWYavzzJDAoegEttOp6J04A3u3UkYnv00EKa8rie4qkndxAKxYJn72tvRMHV0xKHcaf8894O2GRqY5HPoCiSnCD8qUKkkHnc/anghZJoZoPNSpfDNdxRQIXq0j+F76yWAzqGnipcxzfLmzjuZAz4KtJz1GLzvlWnJaLwFgxqHww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBp71UyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBp71UyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99439C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747285193;
	bh=6D8cG8X+b60dilGv3HqG1wYkPiDLe6JtbSrl/fdBOCM=;
	h=To:Subject:From:Date:From;
	b=nBp71UyS8WMOFSZo9sMdn8lhrO4ljqMvMvMtrAssRbEkJkYQL17v0k2Cnfiy/O5gM
	 ybKNKR4px041teYJ6GSPUweO/gHPxL0kkS7QkfcI8zk7L/IBgg+1LI02kkx0EB79sj
	 eJPdbOEchfnuObcIP4X4ply/LoKHb8ESbhm74FJ+waQzqzx2vQZmEpYYc10H0U8DpV
	 u9WzN+4M9uliRytLxNlXmzTuucWCHUYKRDxqR+mPJyxPi3BGCuidM+PE/42YEW4N+d
	 zkOGo0CWlCn8mUKEjk9PiHhKnK3bGw0gJSVXUE64+PT27837G2gC+l0UZswfvunt9Z
	 kj8lz1G6N5thg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014BC3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728519358.16395.16057925471207455186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe1af9a41f012820f7a1f6f2b435bb57b88988a69790722b67919d479c74355
Date: Thu, 15 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747285193
