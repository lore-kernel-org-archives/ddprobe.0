Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2270235B653
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777211854; cv=none; b=dCkBOB1JvQvdJn4v1zQE3zmofnwR1rMvzRnB+0dC0bTOcqnddVvPlD5Rr2bqYH4tTRKE6RhwSHVboCmqs+QYrBRpvzf0OR4rmhb99jQCtGiWWzO7oXVkdUJcw7zRMzT44KnlLCYWODb2umOyOI0d11D86+093dlftm8ZASHSUmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777211854; c=relaxed/simple;
	bh=Nff8BeaxA5XPnNCZ2mOifVJ70u1lQ6u/3x3FEh9lKE0=;
	h=To:Subject:From:Message-Id:Date; b=uVCyB1EODQqUWQmYPQz/QeuFVD9zys50x9zE0ycasItE9GlDTa/KUkRCX97YdYMmjfjlWA3Gv72e4MEZfZlDsZdZB+OclPgy8lGBMbOxcHtY8drwC0SIrvnITrhlicOswG6POR5sLqJDriYr69I+tkYHy07zEZT2EdkYttkC/JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGsqlnz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGsqlnz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AD9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777211853;
	bh=Nff8BeaxA5XPnNCZ2mOifVJ70u1lQ6u/3x3FEh9lKE0=;
	h=To:Subject:From:Date:From;
	b=RGsqlnz2LJWNgVPfbBpVKPGA+Cg7T1fhwbwN86bG7QAG+CNZjleXmGjWT7zJqI9f2
	 I2qG4m/FzbRRm3uDpdiOVWjVkflqzmT/aLmRzPLD/EzmY7BtjQ+EYRCJ2A0baQyFBZ
	 u4rmHyyZ3I0yfs7PT676WPKcvUcdauW/mjpMXkj9dFjwUvsyH1rGe/KYM3zRwEjlMC
	 +Cqi51g5KfoyOWaG1H0Vo5D2M3y4lq8Gh8tsS579APgPKCmWOLirP+M5Il35FlusVR
	 m7jXshhjGChDhuRgXe/SNF7rNH//xQExy/oz37ADgMhDT7g8mc1hvgZvxJXi7SBax6
	 OzTokltjQiDNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C26FF8863
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721185368.17284.8646485368398400597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6298ff3d95e91930f59755113e35867991edf23cfc1e409187ae5df5270025b
Date: Sun, 26 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777211853
