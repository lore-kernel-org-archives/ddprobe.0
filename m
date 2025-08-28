Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD66253F12
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756381794; cv=none; b=Wcjo8s+ZUB77/Zb/S/R87RyR88mov79je9MVj/+KShMaYJ9CHbjR6qioMi0Dfdh4awa8r61B9/exFvL0XoNbBLxZEPYrJUbQdF95bUleG1WB59M6Y/KWNkQmHya1RD6wvYrmWesmhvz0PUrC8iDlL4X0ISkycyacnkheaoDxd2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756381794; c=relaxed/simple;
	bh=VYqoVMrKaECnAL7yIKlgjQcgshNxws8fRYb2aLNZ/4U=;
	h=To:Subject:From:Message-Id:Date; b=C5mKF+VcQDOYpuZM/+CcjLN+tlYy4dy20BgSjCElDxTdiDbI2IIxn4xLtZJ71WkF73OoaKQMDjB1JdIBoB2fKMcl9C53K3JXwx20WtStmtaOnXF4RsWzLYvaUUsThFbHG5FlTb+/dSs+BRIlEyuQ1WUo2hTVHr67vc/sFXSCKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRFrhkDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRFrhkDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F538C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756381793;
	bh=VYqoVMrKaECnAL7yIKlgjQcgshNxws8fRYb2aLNZ/4U=;
	h=To:Subject:From:Date:From;
	b=bRFrhkDbkGaIPw7lSkNl3FJAs4D0/H9EsBje+kOrFSThYUKK9Wau4V9v1jOTRqFXQ
	 ktSV48L3KOIpDkfdae2HfLGxIfmRYe1wsfZq6Gr1OFTvQ32IdiNIjjrpHAZqGDGvhT
	 2SHYGA/MbjEEoqE2WLKXWlCQsXuGzHT9NiwsiNvzvEpAy266ZfkmNu0z2boYa/3BAs
	 elJeiUdxwoAyaX9hhd7+8E49NDrfSnnfNqYkAKJt4pS9bzva+DUUYhzhZUGEff6kAV
	 GHr5UtjfAQob09Hk684j58wMCKuHmSSwWO7YdYj0O/dWOO2UoftJ2pmwhh7LJN1UWc
	 4PAirf3DFJWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EFC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638179357.23906.9138714050441953376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e639065af140fff37934d464062466fc3061b0796d9af1b60c2b5c1f1d54ec8e
Date: Thu, 28 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756381793
