Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203C9433B3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770424434; cv=none; b=MuwMxzcGOHtUuOM8nZBE71B0LNosoo1At8zNo8IgG+vxHFiimLB9yKfFIsAKRiYcvRpMolrVagE8JR/aAmCZAO2WTEhgOxppGzVOA/LJhp5LA7lWaqgTn/xv5HukWdZ19I5LkfoetD7MGhZDFvS7IJVsKQiAKHh3CGFesi9XvkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770424434; c=relaxed/simple;
	bh=l+0Dv+b1P9px/xi6K+ds5gFIrzCLu1KkYDkDOsGjIeE=;
	h=To:Subject:From:Message-Id:Date; b=AJU0OcD3C+DYJC9XWsq+VjRcShIBJke5zk57QIDVFOizjC122nZKXW9RVZw473ZzxN2lmBtKSAPU2BVRF40NMZRP7ecrF/2Vx49J9p0XNU0F1KiOHCCP69Uoo4qFRxThNciVKHuPNifRy/Smk/0DQ6hlx3UWTaYN91KcivgvN9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnHubguo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnHubguo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FDEC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770424433;
	bh=l+0Dv+b1P9px/xi6K+ds5gFIrzCLu1KkYDkDOsGjIeE=;
	h=To:Subject:From:Date:From;
	b=MnHubguoXMw2hqxH95xanb5DieDoNW02dgq1OIzucgk9d4Drb24CuyNEVkpYy/HxK
	 UtM+x8ETCmBd9638qwxoxL3/Z6YNYvcIitkrnRniBvu71/XeoWM4S7sCyUcfiu1yQX
	 srI5RFRQvr72tFoe2cOMCdFHoA4ZKIq6MFzvpA7qEpvHfM1GphqoGrkWFvT32fnf8Z
	 bXLnQhHCCvXd1IB+tg4sWpy2Be2NVmriTdL/9siqqZ31/Sop8yJD8CFE/q64nge+jB
	 J4UnVjjacE7UliHQk60Eyq2Gdtbj1vuXv+MGJ2TXLJymGrZY/YjnRK2f7xVzSFygKo
	 d985idydUpuEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB15EE6B6E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042443359.19101.5475784259704359921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3332cd43ea017f9d5bd332aee0105445c524fe2d917f73aeedf84b85a35cd90b
Date: Sat, 07 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770424433
