Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333122BAF7
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755311394; cv=none; b=a1xcIipT/rr6BxwbjtvQYYXvTgR1xX4i1/cMQj+teKPG8nEeKXODzf2CWIlED9OJbbhqSt3OhpeFxqW/7baVZFIwQkSy8PiR+GZ8JYsGIxfToF0PSrgmBAZjo97x7/itbzVPc6EUrHbWylQKBEAxuwD6Jiyu78vCB3s4ukzqKRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755311394; c=relaxed/simple;
	bh=UdVwvoAni2zHD5YnJTwaFJJ/rqFy2px+P7+AeTHMfLE=;
	h=To:Subject:From:Message-Id:Date; b=eDyVhJinjR5bnd2uCczvX60b6En31sO9WzlFo7t91jrBbjVRC4MbNEwBUVRQBqzoeozvMpSuMhE+y/R39s6L2UMc3oeELKQ2refpzoIjaKVm6Ioz4FPfB2ojM29s7d0PhwHrJN0SGocnwj8wX8k/tdYjQ3rwBG9II/hdqqCUCpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aq3kTBhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aq3kTBhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D68C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755311393;
	bh=UdVwvoAni2zHD5YnJTwaFJJ/rqFy2px+P7+AeTHMfLE=;
	h=To:Subject:From:Date:From;
	b=aq3kTBhsQtcI8H21oS/OTO+3nDl5hv2lDq3VkMAdrnBYJYJ8N/eEiwSnLx3+TGAYS
	 sUwIGEyMbK3Mj3OYzUQXJ+v9F6EedgtcvbxFyyZAK9qgLqr5iStVaYxCTA2rtgINiu
	 L2uq0fMd6Owq0EMX6BauMROh3EU2TZvsxJSO/hYmAmfNdraT2bvgFAwPNTwQZiZA9A
	 GzdnGKkohqOh9RbDzqF5toVZSzpOulwIEL7FlRPwa6NIioPRIhXlvWLoLljBScXKaA
	 ah6zLzQTQWbTTpwfpemKkodnS0SFIbvqMMKUQ7v4Olp61rC7UGheXMyX0bFC4x+DHA
	 7xPahibkmJbHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E6CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531139358.16238.18107377488775026458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7658e2aa9418ef91b9a25ea35723faf60daa29bfbbd1e1b9bd84b6d8e51a14ab
Date: Sat, 16 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755311393
