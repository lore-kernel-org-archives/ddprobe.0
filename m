Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD241E51EB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761464994; cv=none; b=TLiyMVfYbSFXRMhNpRAy/3ceDw2IIHKk+A8/SVxvOedSBXbXJfedQgjlFvLhOLRQN0qNyB4NFs8oTj9lQ3MalC2GKIv+zyyFHvqgdo1dFINhIbx8kaW4/Brf6iFabbazqM/06i2aLDaHoVDyRelSo3mxLXhfWIMVRO9qjkm9htY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761464994; c=relaxed/simple;
	bh=5VKtYxM4/97lLhsTIZW58HdgVnQVnNozbC3wYaZpB8M=;
	h=To:Subject:From:Message-Id:Date; b=pbn6EROfwwTwOF75QSc3aMULGees1+NJGN768BAMCmIo2pDU1/lVJGIw1uMMv2EKXtFRKY0yHDNmqJQD1YKTbSgvIcFWIIgw1GhTEB01AX+FBVu8yMqX8jNkQOJIopilScnMS32SSc3jAzIZ6yoTddkE50sJFCgs6cVa2mjdusY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxN5R8rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxN5R8rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761464993;
	bh=5VKtYxM4/97lLhsTIZW58HdgVnQVnNozbC3wYaZpB8M=;
	h=To:Subject:From:Date:From;
	b=hxN5R8rGQlki0IkfGGNnFaDWz8PC2pgh/3EI1c+RUFPtsRbcDHUSY5lRMZpq4/lAq
	 NrEyxKNQsoMGtWVFLTq0INYhISYFFk37w0aaP6L4SXxY0Zc2AUrEQgJgvd5THAyLkg
	 YOKxeNnAxaVkGu3S2NBPloqujRgjOdSV08AP41MLXWH6ZeTCu9FDJ5l151iUKPT/SH
	 sgrmD8Iy5QXOH5KXM7fiMUiRGdBQ3H0i40iXWr8e6ZYK5aVhAEfBMPm24bp24aJxe1
	 SLmlormFKfD017bkv4YLg3GfJEdH+31ollVSectCRlVXmafsXpO/+wUnQeYhTA4FG7
	 rFcqNCChtNwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95612CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146499357.30768.17580632418752515499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbcee75e415ef2c927422b949fdf84b1a0ebf333d94a78bb078b2aa64117f4f
Date: Sun, 26 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761464993
