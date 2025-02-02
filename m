Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481F82594
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738461954; cv=none; b=MuTJ5TkeEz9uAtfmSulhCHV9TsTqdToxoPtA4oOI1Yh5Q/GkgHmhOEPsaTKAHpJI4CohdpVT1LQtd/Am+0KFIwClcERwsz0OPi9EGjuCqcDfipaE7mIj3u1fWW9Lp6rTipa7qRCHWBxyRb+0cuKoHsJq21+QEhhQPzLGZMh3U5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738461954; c=relaxed/simple;
	bh=byAplduj2dA1euUFLpCXobtW8Ufp0HICFd7axIGdAwg=;
	h=To:Subject:From:Message-Id:Date; b=SAK3eutevbckeGEBqOH7AzOMPKXh4FgGvDxnlJue0VeVu5FwtgtfKT3qI9qW0KlwOqgceWmv8FruCuIMXPSe0fjdVeh6WAzzAYyA08Xzw8+tWRAzngJr9dBlcY+ROVQIMFH3qebzWbMYXuDbCFKI+tY5Q3VHC7p/LsrTdfM2xto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFvym7MU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFvym7MU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917DC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738461953;
	bh=byAplduj2dA1euUFLpCXobtW8Ufp0HICFd7axIGdAwg=;
	h=To:Subject:From:Date:From;
	b=EFvym7MUxHbLK2wOWTVM4tOnoCEzZo08NvjRt7XzcLYMoyHlmKHpu3O5ziO8dUQ7o
	 ez/8WBqBJXDbY+OGXTskez5DICg6AXiRetF9hIEj+wkz6t7KqIjLcA/JY66ZJyT8gx
	 KL8n+palfL0W8/IdPz0Izjkq294eFhtmixEdtZc+ByQ/5RXYuaJhY8BmSjtI+0EKot
	 YGy8l8ZTc211O54tfESwj3OB0SardN18oZpZQLVzsuSziwJoKtX3sqdVAusWkZ2JEG
	 vWDulWG9VCW+Ccv2yMew2dL0Q5t/nS3smcpFZ5d18k3QNAK0AloGJwSblX6VXBFrbs
	 bu2aVfBM+3obA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4AC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846195358.4833.10165249575565164030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eade5f2de8a6fdedc01fc40d6f1285148c8ab3f7d53d568c5fc94fb53c4cb279
Date: Sun, 02 Feb 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738461953
