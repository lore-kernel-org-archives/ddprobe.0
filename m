Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252281DE4F9
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730969754; cv=none; b=mOb/egV3byMuw36UZPS7UUvfagOUP76UphxnqHCcM72AKS9U3chs3s+tGR3IWscxa0m9LUwlp20v5pNxGJ7LxehWc3IHOqA7nAaFZv90zrV4saqg4yoxckSZc81hSD6jK1Lhjh6aipY0milKwyaKfpe9UXrabwpHTlNI5P1CeM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730969754; c=relaxed/simple;
	bh=Kz0tKPCkzsUqEa6JDkYaj5RR34SKPlFAMaEJOVZihA4=;
	h=To:Subject:From:Message-Id:Date; b=Cj0c6iF9dgTKdTNPC+lvGzeKVxQJSmhd8/XBjHNKaSXnoEeQOoDMbaIbkrYdhlVOCFcGZDixZya+ONeeJPFP6I+tPCsBbuYdaELXTgc6oo7hA/UawwWNIaN0Dm9ChhPN/4J+VV8YkVjm60H+A/3syujQDpd2iaYmlA4OEtp1rQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnBvxDhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnBvxDhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CFCC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730969753;
	bh=Kz0tKPCkzsUqEa6JDkYaj5RR34SKPlFAMaEJOVZihA4=;
	h=To:Subject:From:Date:From;
	b=YnBvxDhOxoq9sX01HBCOKGzU1zq8ZFvrNrvgXq39/IYZ1Z50LxILN7FSf9+wSuOzL
	 VNRcDYbpnCwk9Thdt651buigpo+wfnQ5vTYcXuoaUPnf3t05LinpLm/2X7ZBlKzL92
	 2tX3/xG8j6FtJvIXsp7nCGALboWlgH018EIu4R6/lj3Jy2vh1zi0NFkUo2aHtnTXG2
	 uIo07UnOPGN3w2qivqW+57XYt8cIp5uQYk+efTCb/ecEJRZU5jTh9/Chj14wsYplUg
	 4EhGwxQEsqMKm/C9b+bJ3gopkPvEsqX/u0HH4kpqg8QyIPPppP1VKj3CbZP8nqf2rN
	 NuEcttIF4iqCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B87D5AE74
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096975360.23438.15955716535827578132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba305785548aa471f0fa1634464672c55d33b0bb38bb917c2cd9b47561ca8f77
Date: Thu, 07 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730969753
