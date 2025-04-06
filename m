Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B584C2EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743967194; cv=none; b=kKKNxicOveOTBp7/xuQNnCzgUDxsyL1Y9oAc0L0K3H874Cucme3Z9kXH3RdqkhdlTOf3rxGLDpXE+2AjwtLrSwrA9IW7ZWtXJbnIJwLPkA/146GooXLGKBnDjCOGUyKMfdAKkyOFeU0xE2gDrSgiFrL+HEJGGL8i0WqlrNEEcBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743967194; c=relaxed/simple;
	bh=7WjDwO9cdf1JM3Ow0V88Xa4W2Zf/FsWk0t6hbgHxG8Y=;
	h=To:Subject:From:Message-Id:Date; b=H9iST647akZHRr3+6u7F0FWLgo/p2THfekEr9x4MQClb9LVLo78NG2ARk/Z/6ZpRxnpMbB8Q7gs0JUdcyQJRRKFkTWY2nzEXD9V6tDn7804HJsvOqeqkU1Z/HMor3D2tKDcmOPuXkRWorQPHn1t0j0uW5TNaLfZEyz4VwjWmPl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTRzWiUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTRzWiUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9749C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743967193;
	bh=7WjDwO9cdf1JM3Ow0V88Xa4W2Zf/FsWk0t6hbgHxG8Y=;
	h=To:Subject:From:Date:From;
	b=RTRzWiUlz5kzLtXbIFF7zpjyEgbHseJIWTnuNt/xO7YyQdAjijcpzP+EBdzHiDgLF
	 BCHQXPuhKfHn2fwcEWBQHLCZ262Rcg2RgzRBgEaNB70f4sbprwpnvFFume+GQox14g
	 QC0rWB2XYwBuVMX/R7XdMBL8mieR8RTpv3Z0ZVoEtPqspFk0lIbXNKpwhMA4liG3J7
	 HMn5bQxIRh2lWelBA+WpK+G+vc0J5xrFGw32l0i291sEP9uP3jTcZNUw68jV4Oq+21
	 bfpFWpwqIQlfK4jIaJEpHootOVcfGP84AFUEHCVzjogWm9UuYalHtu/26NcRAKFJbu
	 5V5IXT2YTS7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A62C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396719359.24981.10536300793961167695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3949fb6df27a36bb400f11835c52bde47f22d2d23be5faa3069933632003569c
Date: Sun, 06 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743967193
