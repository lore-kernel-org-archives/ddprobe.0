Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B66017579
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726389354; cv=none; b=olZPugbUQIFRsCNl4wLQLB7nWVzCCgz5gZgPndOxNOFdyMd91l79Vw8w/+AHyp3UhsgBscnr4ctx46ffSwa+b/9RUWkBaiQDEIL0BHbfnDRSXPVz3tTNf2so6RoE6ZtN0uoIzzTIB6D4qxwEP8aVT+IcWaIRRdFVfyjDPnd9FRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726389354; c=relaxed/simple;
	bh=dv0YjZdPBDxrWOH5JlDEHTWx16XWZE7sb6qsiSrLxzo=;
	h=To:Subject:From:Message-Id:Date; b=sWTABWza1uypWf/Kwsls66B1srzcb8yGzIMbwJTW9YVOqhnA9SynD54z7BTK1fmCUlBdz6BZIh8xje06L9VvAXERsTU6Hc0dTC6YxL+TI5ee2ju/5zbO3nF1pzjTnjlvXqR9NJgKD/s8mryRFtywSkpN/TOLbPDeAZheQWuvgb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A94VFIJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A94VFIJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8740C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726389353;
	bh=dv0YjZdPBDxrWOH5JlDEHTWx16XWZE7sb6qsiSrLxzo=;
	h=To:Subject:From:Date:From;
	b=A94VFIJ9vsNaI4WAR2EmThMr8KhJYSzs1UgWqemNirjn4k4HsoTD+ok/CO47ix768
	 1QBNhUHLq0YVDBAfN81n7xOueA7zLGOrCkZhYmDwu8jbhFQt2Dn4GoGRTCPihRO9Gk
	 MpfPaazs6QRjVMGQj2OCGCEBrIRt+ahfmffXX7O/0GSJ5u9NDSP+byURG5GxwAzV5G
	 B7fy5/olZiZiX2NyVieLJfUBieqb+HnHTzQ90MGNfeZhmcE8t+NLeYhWwSZWMusmfD
	 KAVM2q4UIrvh4DiowuoijAJ3ZMnn71VUiUZneDgDuoIy73OyKMQQ6YWaKcBPVT23Fh
	 0yAxJBLe5qz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B07C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638935360.11071.3014942390984775293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d290faf9cfe1aa286642472701d97502f0f540b5b0a0b029007cde9b83815089
Date: Sun, 15 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726389353
