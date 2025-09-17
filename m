Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A97227EB9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758137994; cv=none; b=RSPUAwIGSIInOpWXiLgOvqMl6bthx4+jvXvbrdLxoZcs4mBljslB9d8JoQn8iE/ySdJ0RDvmnglW3MaIRW84vE6AXI7S3eN9rzHJCE6KmsPf6E260Z5KcpswXOBYU5G6FHOv3hiUpn0cplujWmjbMLlhqACIVcItUIu01grMKH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758137994; c=relaxed/simple;
	bh=8LG16d9HI51TmkTYOh6+LpY3f248okeLAfaxHeDCRL4=;
	h=To:Subject:From:Message-Id:Date; b=tjZdSWeS5E0WrcQuhBClNQ/6tAGNyVtoOC9AIlKtRy1kPZOOmFeouXzqAbtgYiTCWBcX8WuKnGyj3v76X0Zmz/nLWXilsFZuN5a1WFoK5rrXaP47zpmC8VQQVcNl9tO/slSNqYfB7XveRYj+uDrmn7qPOSytCPXKYxwwZXlohhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbGJpzcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbGJpzcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E041C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758137993;
	bh=8LG16d9HI51TmkTYOh6+LpY3f248okeLAfaxHeDCRL4=;
	h=To:Subject:From:Date:From;
	b=IbGJpzcnCQ/5hrJ9WAhHdoaTy7Y+IAhTeasELUGKc11rgUaarxeOGAkgzQwjpU/Yl
	 uVM1lB6ECqUTkOTw/hQPBzP5LDg7Fm2xkQiBCSrst6JeDVJuqnaw/QVm2z5/EIeV/r
	 U5RVonEeMDlRvrUqEsEWgdbW40NcAylbTB+kpIRi1smmsyGxkP/eep23x7FH+qN/lL
	 gPBUOSgidJ2iFekDk7VSpi+ffCNvYccz+ul8TnT1F6vq+y6jj6k5LfzfJ+zEGspuYg
	 bS2FtTWliBFM4w171+yoVNvRiz5WZl92C32379xSWhzNX1sC5KnOpsMzqeNkptx6Re
	 OXjrCh/dYu6Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB1CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813799358.19195.6001886666386081543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b13a36637c74ec49a3f9b477284d12978adabd4508cae9b80a767715687735
Date: Wed, 17 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758137993
