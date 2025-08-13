Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AB23D7FA
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755058794; cv=none; b=uWqFoiVQ6nW//OSMZkVvm0CgYjgAm2Qzfm9zuRq3338wK/o4n22Ka5eT8RtlYLOqsAGvkDGF6R2GJmqfzZt/X4Q65iQ9rQdIVE4kJlpAJkg71MPrJFIbLLZtZNmFI10L1VgL33d5GlcugY7Ayg+C66mX3r7O7SzwHe5/I3Qehy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755058794; c=relaxed/simple;
	bh=OjtEYi5Bvud+33b5zAJ5vw/DUOuV8n2nkTuv64mq/9A=;
	h=To:Subject:From:Message-Id:Date; b=lPGNAlZBiLqgT8LBOvA78bAiP/ywdz1+sq1cewaal5u0/zrCWUZlq73DicjNwnl7k7x81YjgRky48PzumqLBNd2ATQkqrEmIcL/pzDMAtQOz2usnVppf9qvciaHI1eTUJW1APaObp238ydyBcPZeOi3imm8rI+OBhTL/ooNiO24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8jDwt81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8jDwt81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9545C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755058793;
	bh=OjtEYi5Bvud+33b5zAJ5vw/DUOuV8n2nkTuv64mq/9A=;
	h=To:Subject:From:Date:From;
	b=s8jDwt81Ut5kLVe7Fs/G8JXDLsurZDolBtSAI83HDZZYo1cPCjcU4SG1AoTM91Uo3
	 ZfN8qUH7MjdbERY6hzSOTW/ohDLZYgji9w0/fxuu2yQFpkA3oTOqnnas9JRgiqpc38
	 2bhBQRmDCyAQjC8qhgtV7BWDcVbuHkRArhfQ7cnChpzCb8Nm9SLMlyU1wIN4q8m8jX
	 kij6MT61p94+OYErMgXLy6A5XAZTzj1j5U88WyVcvVpgPC7DOLQm4polNVLdAL1uUD
	 ymuNEW3K5eoANJCEjbD1mOR0JPhm6zGt4WV+pbnELZFad0jQRzeEYGtyoGvtv9yqll
	 14AlIJc/wfilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEFC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505879359.19784.16720705994342828059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e832fb978d9f38d70d99ebfb84b1e144aef02c0236077de9ce35e8eb15f6e81
Date: Wed, 13 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755058793
