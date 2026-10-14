Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608DA3B3880
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792020634; cv=none; b=orgOsK0S8RAwgAd8D9FzCHtfPnHGLBYmE8wbqwENS8vghxd6CBuLIOs5XjiuwBd1YJcL+ydmmh8Ghpexxzx8zCl/zTXxB66cRFoxjf7Bmi0eUn7DXKKlzeWjpriPcYJUZBaBlvP+WyHGQtzw3BGopi/4ASWCKEUKdictiY1Ki9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792020634; c=relaxed/simple;
	bh=4qquQGNYnNmhTgd+DjGrdH0MTyvvln9EVEFqBwFGIcU=;
	h=To:Subject:From:Message-Id:Date; b=ftcTC6mxjHmmNhmqsoEYaDtLLp5eDinWlwoTv4aenqD+QYk7ZmEcxdfF/wnRPX//CrVm/M/hZWwd8L+zOlocqq1bfdFojq4mWvZ5x+W5/+JkNyZiUSnHoUQxnH+sBCZuDxzxT61U4UmikheRX1YrEmmL/qiebZyrsA67fjseVUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdfGXo98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdfGXo98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8562C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792020633;
	bh=4qquQGNYnNmhTgd+DjGrdH0MTyvvln9EVEFqBwFGIcU=;
	h=To:Subject:From:Date:From;
	b=cdfGXo985AGFAV/mViuojaDYBj8oDeoQ8T6aRGaLoehbO/uYLfOzh6DgTQiO1z7mD
	 Cn0dD0UCFbbd4oA3LxscFfuoXGjDQJscqvZaDdb2R/LsJZ9wvSMvdovqp15uwTlpGu
	 dUk2AtJR9aTHMIFgSUbLRpVvjflrP0Ps7qZ6q63ZG37MrP6a3cRkPR/uadeJEJBaAK
	 ygEBBD1RZ9tQvuM0ooTc6nijCFColCpdrphe9ZuagOq26sahYNLAjNIcuAYhAZebNj
	 ui3yNl22spr31GIIi6x5Dbo+zmU2Y3BjTyhJUvWByUgCPq0YwIoXkxdBDKA+O1Pj4W
	 0v2ZnerMNMrrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58D7CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202063370.32685.17278859537823042244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817de44ab552443777771dce6d310ad8e5dc410a421f6384a259bb5f5ea637ed
Date: Wed, 14 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792020633
