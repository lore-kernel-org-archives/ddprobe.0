Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DE23FEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718587703; cv=none; b=m+YAZEEKn8YCcEtkQ4vVHtgO+AklZLEaoP8LDgw6RqueSyvUxVoxyEkGHwEzQLvoQcVMAm1qCnC94yswPh/ubMrMB1hKpyJgc0T4ltkWxOn6Q24hAGC1iy++I48lo8hDn+0TT1QmZIB+fqyOfzVn5IMahkg9qJNqcg1aF63wOpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718587703; c=relaxed/simple;
	bh=1fZwMPLAR+HRnr4X5Xi4gn9513FD/L/NvG1QJ29Mhtc=;
	h=To:Subject:From:Message-Id:Date; b=CoexgM4d02TYNmrt/jwylqKjGopJMpHWwHYmuLKEZRS3E1M0cHzpfQSwjRuPgrj+Tka9TwEs4a5XYIPSOlZxB4jVzWh19HK2KpJosmY5+kaioS9MwZAyqj8d5tgqVKTX6e9p6V/7ug1dXRKsmnQbJaIjxJgM3OMlajSTMvFiBL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1JnikHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1JnikHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD379C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718587702;
	bh=1fZwMPLAR+HRnr4X5Xi4gn9513FD/L/NvG1QJ29Mhtc=;
	h=To:Subject:From:Date:From;
	b=l1JnikHRAuyzpZEWX6vBrSIZj0nq3qjfleuGxQwkd0Rjxk0DLCXGsD9eJx998JGJR
	 Wb/Ge/lmhmFdIiSrmSIMqVcudltX9nxjgszNOwQn7iR4l9BL6gZ4rMEoudlKzAhhNU
	 5pdKrv9HhrTisI1khwkhyeNW6HEvJ74WvNTae4vHozeSHY/kJ9XoxZmchdmDM+P9dH
	 +SwU5fPYj271eZpGRTANA508y364uCeVSx+pVhs2QkYR4a1HxLb7SOoTS8AlVivPfz
	 z3jSCSh7psi0EJ9FL3Nu7LeEBgXuzyJk/bfwG/TkOSd1ePHi/Ae5gl41jOYJQBLFec
	 tLLaBlnkg2Xvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA145C27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858770275.23317.17799099982598131384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae145ef0d6dc2ec4700aca01bd668084a95555f43c462c31775ed35bc96c299
Date: Mon, 17 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718587702
