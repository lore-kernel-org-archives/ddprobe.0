Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9BE28B4FA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783907914; cv=none; b=T6Bs6LsLVOj18ltdHJ6KyVTTSmvjx9UGnLnZSIYaL5Komx0Rcun5hb8Y2hiSouby6INdJ7HsprNpXpNAYvgVOeOEwYmWr6Ko1YqTEitykmsqzFd+8Mnu/ovr/jMZUmS6rHxhDJAUrAnTr26Z+diSP2Ff/G1Xw1tVVJaPgQpfJRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783907914; c=relaxed/simple;
	bh=qshCYG8KmmvG4jaRVScu/tp1WCefcFOOGeJM9OhpSOY=;
	h=To:Subject:From:Message-Id:Date; b=eUnxn08Xm0D9pUyfdJU+QdlYNbMdrvz6G3+KxTjupl0je1IEigOA8wY0nJCXafxOZ9IGX1t8oyQqYIsLXAOIQubahU0tLzfu/diDMfhqhfS3h2iDM1mBCVqqqES7LoH6Dy+ns7RULP884PzykL/i0qMTZvzlag8DdTr9RBMPJTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXRKi4em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXRKi4em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA693C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783907913;
	bh=qshCYG8KmmvG4jaRVScu/tp1WCefcFOOGeJM9OhpSOY=;
	h=To:Subject:From:Date:From;
	b=pXRKi4emcAjes+YPr/sdUJy3j/EKLhxDLJPgRiHF0BWdFS1MTck5Droo/lTsRh/J0
	 oscNzOMccG/B0wUHKdYDZxFsXYGuUSUu6gsLhJu8kn36IWY8EoPrXdcRYa7DVreNHC
	 Thlo+BjIzRm/XmRVwh+K6CeGzTluFgqFSSI0PyXe0Qc4MojJIYJrYxF9/jWzTf7ec9
	 ppvSjo5hIttPYX7rflCl+yZfjMRhnCLUSHjyZX92+E4oQs067ozfzfKmf9NvV5dVkN
	 9jPLe2MWp2ztJGAf9h2fJdFFttP6aQ7l/Hspqucgs3AbZf9Wh5WBqiai9JmApJgfoo
	 uPapzaU0pJoLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86EBC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390791368.11292.9898330107861497470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d427418a758acd753dc33a8335118679e61eb24b03475783fe886051da5f2cc
Date: Mon, 13 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783907913
