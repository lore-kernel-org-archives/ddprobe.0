Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335FA79E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745725795; cv=none; b=WCs/mbUJgCbncCTuleyEymxOpT6Hjpxtlc9ig/0tL43wOHSzg1SUggZtNwsIToFR4oSGjRzi+Ajv/smq0L/KegkRX19hB0acWwFsvbnqvDZHOFL9Xf8F8nhw+0OctVsuOapt0ZxFjXy7LWt+PeCgLr/38LB7xO+FKYeoTY8wIoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745725795; c=relaxed/simple;
	bh=0rfP6o//rYic5qHjm2nhONo94hmdIc4EM9vUhSmH4WY=;
	h=To:Subject:From:Message-Id:Date; b=Pg6KUKFmdppd7c4lZYfJm5DAJhT8PJRypXTGwEwV5fzig9tp5aueYZoGCaydp2C3VaMjcGSLX9qw5HwUpbhMctLiDFJnQOULAB+20OeQhiEpcD9LRS1iDQ5tQ/Jpa6idN66r+UEXHmpvkIQwA9v0Q2xKoLkUSw6CKwWr9iopoXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrZB9WQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrZB9WQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F578C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745725793;
	bh=0rfP6o//rYic5qHjm2nhONo94hmdIc4EM9vUhSmH4WY=;
	h=To:Subject:From:Date:From;
	b=YrZB9WQe+bJVlVgi/eyJGpxFj7xD/BwT4HUOuwAMDOKNnJeI0uur6LwkuQothvqSp
	 pU6x/ljCMcB5SExOygWXRR3MMOhYs9dgOqK7nKDFQGdkXlIZ04vYrsjU5xLFknRG4G
	 0AqWS4FsxDbYzrc7am3qeU1ZXN3bWgEceF1owC2REieEpIoR9EiWuKYH4T/1ICvTMP
	 olbeTtwbVGQ1iTHpFLVnpheU/sgYuZutYnzZ8igghCYAdECyM9y+tS3zaYVgyJxhOd
	 npkplqUi0+rM94a6jQX5tfVY+Dz4OSYtckP37RVc2Yznjuin/Ulkhrs/J1YittcnWz
	 Ocw/jrkRMK1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAFC369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572579357.12274.14054838551846005943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0f375be6b93756c0a57d77b6cb0870d3bc68ddc5bc5782ae819b082061940f
Date: Sun, 27 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745725793
