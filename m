Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28C1DF72C
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755429594; cv=none; b=HIGUAuOVoUY4F3H+zZLItKou4RHBg1ZMLnWf9hPQ3v9/R6yZWgaf+/joiGyoFZkNnJgo4dVLhLcKvp+k2zycAkIZmFFHxkyZ8xfibXnAWjlqOnygyUkDO90PTF//oVLuMaJni4uhQCkkg8F3mnNHnidAJmMuIdszoRnHdCioLoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755429594; c=relaxed/simple;
	bh=O1Q+EForFdyAZ0ehEq46gItEG71d7Vb0k2R7NeG/HpA=;
	h=To:Subject:From:Message-Id:Date; b=LRsF37lZ2dDXztHiHdub3DgoU0IJ62iBU6c4xpinc3VQKwY+xIdohmnC6arKwFO7HCc7w4Lvw+QEfjO2r+b3CAahyIVyuJbVpsmcR0SgJcME1zQwAYeqZqjTa8LDj+9dK+vDQ24Fqa7gOz/uMILQIqEdy1GPeZ7ySTePkbtGMpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1CwYw6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1CwYw6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755429593;
	bh=O1Q+EForFdyAZ0ehEq46gItEG71d7Vb0k2R7NeG/HpA=;
	h=To:Subject:From:Date:From;
	b=A1CwYw6TWgPOjGGjQfEKLsVKRJNP2ORRnS04Hl30QMuAtdmlp+Q1O9jJ6WBOa0qeA
	 ELwuBeoOjT/jjb3l6ErK9iytfGV4xYiekMcv9X8hYKgyn+/qL1Y0IaczI8EE5AUf3u
	 Swf/0S/B0B4CGpqfXN0yqjkkt7ckSGLsm6o8uFR5gVYt3N9DYer/cPnUnAsS6lumO9
	 qpC4rrz7Wgjt0+t2xGoJnzLz2NqCPpR+t3L2P8MONQ7tJGF+pAnuVRRQksXZVKk/Ox
	 PZTMxSDZvTh7e3McBpnoKl1iZo3vihp0MAVQKJZSIVTnpbUgKJV0W9IzyzW3gfA4UQ
	 kNXO57awU/NtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDBCA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175542959358.32085.15462856831444750167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a257b0aa1cbc43a1fb76c139298e62dfb52199d4aff1e2c144fc754a0bf77bb
Date: Sun, 17 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755429593
