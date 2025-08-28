Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D139B30BBA6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383593; cv=none; b=ooPxN787xULwe29ufpZY/ZtA+jCtgS/uhPy1oPU0+cY72nfXHf57qUayuaGtbQOiUKnQOlhfS5RM7XrNbVs68l+SbRd4vWKKRoKpU+M/JSQIrk3qqlUV2AK2nYSukZcUsUHh4B1JGNEDvf59p4rDI3/fJDMnadjYhp2svR4hmo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383593; c=relaxed/simple;
	bh=IARy+KdU/uF5NF0aDKuigHDeq92BQSociEnwT2n/ffA=;
	h=To:Subject:From:Message-Id:Date; b=SjeLJRUNBhoPxoNlBjlmUIYvXqE0NgnREZIPJ9dnvo7pBYZ1iSqQL77W7mX5fvv1u5bMVm2YbOqN25g3NjDnnn3A1INhtFiqhfeBiACg1cC/hF3QaJca95WP3DK+P73RbMJE4hT0VFLMXsE8h03uGcXROzLqWllAtgIw7z5ZBDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMFU1Uhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMFU1Uhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A369FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756383593;
	bh=IARy+KdU/uF5NF0aDKuigHDeq92BQSociEnwT2n/ffA=;
	h=To:Subject:From:Date:From;
	b=nMFU1UhwEOQfTdAdBqgo0dXsSQspCraDsOnDXNopNtKFlrB+ZeioC2JZ3NYtqdddN
	 /kbsGKNKtJF8/cdnrFsdW0Jgn5E/jXS25bV3frdnKTAvw+75Y5q7mTAi2/dM92XiQe
	 416XcVu8+KWe+M4i4EbpwOuFyYFg2rWCHNyhH/0Xc0rPPOZ4AIKUFVdX3assFPGOMO
	 vGIcNpTTZ4LWYX6MpmjM0lShX1B1TxUPHC8KW92onwc43pbFc1ApJWSWAtcW1dJoXf
	 Qxgou9O80DGUXtDfATXZWho+4gLr2wUX2F0WwT3lgCmEf/a4ybip/gXZuW/1cOzT6l
	 fjmyIUCzV90ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA57CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638359358.2671.5195741981047138594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c974dcf3ee60386c0751324d81500e500b83bf4875f3d030b46b5418f70de96d
Date: Thu, 28 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756383593
