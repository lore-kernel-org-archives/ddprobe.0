Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606DBA21
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717368923; cv=none; b=P5seqAfKDiFda7wlwwgMTTVo6amIZqAGIEmvWsS7f4dWv0q0RdO/bPcHcwqW2BwKTseWcK9y7S906ftB4XZaD63q0+tzES2ddGJ9FKvgYwyd9P7rjAq59LrooIYk6riNRisuk70yJCMHeus779iCLgodDadFKZqJgg8gqL1Mrxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717368923; c=relaxed/simple;
	bh=zLDZi0ar0S9V0HEOHRhSPK+qyafbowS0UcAUOIm5LWA=;
	h=To:Subject:From:Message-Id:Date; b=UY72EfgnCz2c/albIZxSuSJFVYWDu3ze1Noh9f4c6QSQOt3/OjMvb7R/sboNTmRVH0J1+XHq8ao7+wLATUI7k7kGWhsZHGKa/5/KgUmGpX653YIpTm1B6CsN7aB7vr2P1TcPgelG7osiLLFBSEwu7Jhp1uY0nIYsLYVbPiUWW14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeMsEJ/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeMsEJ/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7974C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717368922;
	bh=zLDZi0ar0S9V0HEOHRhSPK+qyafbowS0UcAUOIm5LWA=;
	h=To:Subject:From:Date:From;
	b=XeMsEJ/skNSYeuZgGhAev53ybvyoXZi8Wg/HFgGySxh5Hfyl2j+GaofDm5lPinFUF
	 4XRspCN+wdI5TYY/Azw5fbfoom9hCnbKIUX3MOzB2vd2F/kRRhYhc5yhuJ7m037/xK
	 CjzumcknoK0BQiWrX4EX6twB9zLLbW5E7kQXLlhGZeXEw5Ata8jz2TzlZUNC2p513O
	 f0jGC4YtPNqLsiaIwal+3oKAf0tHsPdk9McNj+NJ8gFKYQo4zfm41r1pqa72lqbOR0
	 bceDINVLR7q76zi1R81P+aOzU1KO+Tfs2elgkUw43cRXdsfidcU0NHwj9PMEmLG1Gw
	 MOKGDqCOS8QkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E76C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736892276.2522.13386112756569233828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99afaa8bbe9243dce59737ad93527914c0d5816b3f7f8fb9ed901e23d27e3b0
Date: Sun, 02 Jun 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717368922
