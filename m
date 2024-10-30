Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7441BD9E2
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324754; cv=none; b=sr/3o9IDDhuVaNaaLJlEcGs45aXyWXOUkqe4MI35/bl2EKs/O9qu6QWpreSkBKK0qn9Mi8gaAQ4l0H3SLY73F301Iv2EFoV1tN2gZnMSicSYxUBbWSnR8shCOkXWNA+B0hqqvEBY8+7+CQF9F0RjH5xPMnQrg5qbmMVXsLN7BPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324754; c=relaxed/simple;
	bh=bxUJMwp81JW9qIwee7Szd5N4rrpSmW1RBYXDdq4MIls=;
	h=To:Subject:From:Message-Id:Date; b=MbHHsBKQhEo+YW+CS0riFHsdv41p5NtdhRNJyvOgmrHt/ZfRBv3xm/KcF76nKzkUaB5bFf8u5eUJZ/iEIadyEW2cD8YrHlpqUDWzPYx0sruFjQC1s2f/aiAQXxbJp3TltnbWpJ8b3z4dZbib2gKFbi46MNCqV/4VZe8wYXb7MRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBQjbSqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBQjbSqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7533C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730324753;
	bh=bxUJMwp81JW9qIwee7Szd5N4rrpSmW1RBYXDdq4MIls=;
	h=To:Subject:From:Date:From;
	b=JBQjbSqY9AHePkvo84ky6axznf7T+NGc0tOBPz5W7MZM152Y1QL9HvAMH2D8kgno3
	 0E94NJ6qDxcAoZqtSdzMkqJdbs/nvZljz35sGfS5i5+KVIqz1j+gIboubfm88uQB1+
	 EM1VY8q32NUGHHJvD+1j/46pIHC6iMP1nDN/AC9TwzCYjXceSiF+kQCXrPCt+QgTJl
	 HUo++UzrwBf0Ut39Gk9xpGhF/3c+kxmezOv3QgaQf9c6fiCxtfTPT3KhBxSIuP+VwB
	 RdkySHcXxUu3BX7PvqnQn6heihLz3Y+7XPTNZ5GSEa7P5OLThbNt/42r6gew4gkwIE
	 wfcRyKMvHdmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D8D6B6DA
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173032475372.21242.11810940249870439717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8350fc51760f3989c9a6c7d4601a28bb5187ef4ac2bc85183c3d3fdc6c226b3
Date: Wed, 30 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730324753
