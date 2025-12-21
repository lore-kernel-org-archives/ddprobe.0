Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDE5212548
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766297634; cv=none; b=pzAoGBIxyfEKktBUYz/zAkMogniUsO8BP3qMY2uO5hpPPHypv7CoY60y/gsW+4pCQVn4CyPXrHC6q+PljU8xo2fZP6W+hCARWQ3cl9pqKXW+cfF8SpSRp1KsPvqBmcEsy9WTtFT6B7aOi2FpV5hE8qWMKfxb9HNv04ozKbCx/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766297634; c=relaxed/simple;
	bh=BuYRvPgjSzXz1O8SkGPc6fyfOXbVnc55p2KYexPRbWk=;
	h=To:Subject:From:Message-Id:Date; b=a/JBVAFKerj4tr2yfgNgZR80zAwTqlpZhvyx0l6VX2t0nfUEIQ9Qtp/AdQBZil7qGDyA00V7vlv0HWBdaerEk8d82IPtdXLHyH2lwdZihGjWwlAmfzpaewTzFi5BaRSrlrAXCix6DC2JLt2QljjJ/i/zyi2Khr50Ees6nm1YkjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAat7oAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAat7oAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766297633;
	bh=BuYRvPgjSzXz1O8SkGPc6fyfOXbVnc55p2KYexPRbWk=;
	h=To:Subject:From:Date:From;
	b=uAat7oADL5cFWNHD6/oScQ9BFNpOz0e5dYGGFtd3wntevCsAtE85q4b1XZp8wUICb
	 QhmceTvO3pYGqNixbcEnNVe1rrXFZYPb16FJf5dbJ6qbrqDzJwTQVgkHEFKiFJ0I5+
	 85SXqoykL17eu90XVcV2bsL5FyprW6kFKFnSNTc50PzNxMYXfJ1ixanQwbBbZ93qCS
	 kMOC2+7tBY3m6J3FvXhI273WA8P1bdbYaHkKzitroAOCQFYd5s8VkSO6ecYd9xP34L
	 MUZjDxgxa7J7uqhCGqLGhBNkYfGk858iVOj9qj++OACkfQQzF2BD27napmmA/0sFsh
	 7PPrpc2JLi0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C3D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629763357.20969.899953643524575968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6c343687cee1f26b81a49079f1a33aeaf20b7f6fa1a20a22ebb37048311959
Date: Sun, 21 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766297633
