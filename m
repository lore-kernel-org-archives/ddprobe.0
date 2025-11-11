Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EA02EBBA9
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762894194; cv=none; b=ieG5vbdPEoYG9CVQqVaBTdqAxVI9Q4tNzESS7voIPgos2ePFCHAm4xIQnOA8fVWiWrkq9sahm+ekfnCY3+vauhEVThAeOE63oLnnGe9svhKLmOtR8QORUeVwUcOT18IqxbPjrIwhI8E0eijlDeoFn4lSFV43CMCJ/GaE2dBcrq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762894194; c=relaxed/simple;
	bh=owjMcBr6tcCxdh5OAuXRUzUeLTrmRsbFPZe1cMr2QBI=;
	h=To:Subject:From:Message-Id:Date; b=Id4DPDmZ31jJXNLnTGbqXLycaoodYTGeTF0/oV4evFB7dhJCSFYIOA7igpVT6ef4zCtcMG46D/4fSCy1ZMxeB1MNUwJgaNIVI+gTvtYYjFi6IfPV/wQ87Y3OXEMPQhfWqA4rv+5i0XnSFw0vJWpO+QmO9syvpj3X3lcZ5t2FN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qR2dgNJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qR2dgNJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0F7C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762894193;
	bh=owjMcBr6tcCxdh5OAuXRUzUeLTrmRsbFPZe1cMr2QBI=;
	h=To:Subject:From:Date:From;
	b=qR2dgNJ1ASqqeEdeSSZiUl9ODeNP9qGGXapBmvYGC5hK3qaCQwYGfO8qBvBnjhD3z
	 AtDwhJ/MXP0kb6Lgktpj/3NNc49/7JYrBhaGLvNhcEON91z53GxSwLKh3zatoKY0cn
	 DbCW1I6620wRfWEe8CrjaBT7kOXvRyLleOmMoSKJYQkXSlIXkZLyYHRVaxB6c/RoLu
	 EnEF0mt89u6qxJpCWCCc5vpqoQQKQR5P03NctilUioU3N6Yzfx5lzKiOLceax2VH4W
	 xs+HPqT4+VeHILQLW6MwO4m/X/xcy0gWUHVPNZtkvaFSpdcmWFTL49jWb2xjbObQlF
	 2glluQPyuSWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F045CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289419357.10204.15778249877561057109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b96886bbe01bf3d878576ef54e51eabfa386a4462cc7f494fed132b0321f1a
Date: Tue, 11 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762894193
