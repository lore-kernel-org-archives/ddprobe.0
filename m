Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197932E03EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785703834; cv=none; b=Ba5SLO8Xxef44BOYfz88nFqc+EhY2tBYxGeeGri+zOiRVeuNCumjEm09AQ3KjyRPOpezBPm9lG81diOWT8u4MvY7H/AgUr22vH1fhOITJHMLJ2wVe5xUBDWC5b8daGJOY6CylaxM0tkVHuLVSa35OJleIelUyCZ/vqMmdkm+8WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785703834; c=relaxed/simple;
	bh=e4+8wrJtJoJ9z4pUIiUDZi4rggKdKEA8MlueA6g/kNc=;
	h=To:Subject:From:Message-Id:Date; b=jkNqf9xClw/1iPZhOFQJnOMZLRdLqQaGM1egHlQSrKKur8PCjj7j1U7KVtt9bUYkY5IyTPst21jaTq+WbUen86+iqVBsQpfY1R1tk9Wez3xehzaVuf6Knsc+r75L+YI2PAWnWrf48zL9qDZOaR0YgcfAGMloo0xiaGhbpL2pG/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPb/A/86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPb/A/86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2CFC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785703833;
	bh=e4+8wrJtJoJ9z4pUIiUDZi4rggKdKEA8MlueA6g/kNc=;
	h=To:Subject:From:Date:From;
	b=kPb/A/86tJvY8Mv5dUnTBJhq0ODpXgmMsD1SqADxXsW1g7KrMtk3q0cjCv+vco40U
	 nHj3d12WkaCodHuPBiMqlYMFOnl9uZDwU2aobaal9HUuAPdUN+OTp37ZMGPL6B1BxR
	 fGWADvxAS4y+izcqk4Yq1pY0B14059raALe6uKWBKHl/69JuaZYaUcWKHwU2h8+IKy
	 Qq1DeOJTf6VAUhTKbH8fSuGvjuWNaHSEt90a+2EensWpafkBtjZbeo7Ni6SufrsVxx
	 w7EOxNGhX42xkBXY9ool2wz9UFT5JP+kuyK8oe00c1r6ouLdVClyx2wcV5dZsk1Dun
	 A8ef246w3w1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CCFC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570383368.693.2749065718551710971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714f1a38b4b22b080bf3c2b474c34ebdcb8fba6fa69f646ec6db76061b8d4309
Date: Sun, 02 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785703833
