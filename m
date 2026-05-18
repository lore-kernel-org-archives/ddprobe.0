Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A085305681
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779142834; cv=none; b=O0yidpGBghBpG5YrS4g5rQomwoGo7B/srutyPUMkzIARu5cKLX27fvGXP0vXEzkhutQ0GyS2zNdyLxhnCIIG8XJ4hVe5CifH6xpPuAoYW2DA406Dv60MN5e4dUnIt+6gpWGOIJa45O1c4UcndoE77ICz1w5ZfBndPsmBcQCv09E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779142834; c=relaxed/simple;
	bh=O2SobQxHMVlAnzN56w59Bz18YxxckgqOVNz5vHsTuD0=;
	h=To:Subject:From:Message-Id:Date; b=kFZQuhwdcCWpdfd7lR1JeoY2fJNIJbuK8fEgXoIoZZ2fVyW+m3yQPiA4c67k6XNqp07xAkE+J/cFvxCjw57RAU2vdVYhbfEs48KMCYq4ssMm3dIlG73vBMSDgn7dLuwmfbg4b0dWSTzxYUML+E1kJHUEcpdmcaTRMHMFaUxAH18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfo0bo4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfo0bo4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9062C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779142833;
	bh=O2SobQxHMVlAnzN56w59Bz18YxxckgqOVNz5vHsTuD0=;
	h=To:Subject:From:Date:From;
	b=Bfo0bo4PcqksfDdJDH3+5rISaSE+EBFsAqiqUUWwQpsD17HFo2b7SoTZOhy9oT0O/
	 dT95NF+oanBwY2nGJ9BoWzTmJ5/aQm7whMQz85Eh+nzF2Da1ho/zfpgQn+St9iiCmV
	 glb854kQ91wSmKMZ7tJNLtPmpc2wyJzJ/q3J9HiQWlQsAHVWoAVcD1bUbP64otrAHQ
	 DCbcqoswSAy7/2mCONleOubdlQo45SjAHI6E5oN3TqQ8O6j8CjfcEYc7kGczg2YrOD
	 AW44kn7KbJkpWSAf1Bjrn9E6TabvjZvWoLPV6EiiFnoueOKynLuv7SUgoZgEVfki1X
	 iP/6pR/oQgs7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDACD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914283368.18408.1416846379721991630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e66e57da2d9e7789733d869a56f04542793d2bf7db2e108aefe16a3ab01b0a
Date: Mon, 18 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779142833
