Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAFA28EB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749957594; cv=none; b=ow14bhksHJJ1IhGmyOzivA/ZhMGE7xBrqyI2bzo/21Pmvqw+qszEimrXTXJsOT4K3FcRiJw4QV9d/rGrGTgJ2cBA6+rT4EHE00vOgKJdnrzh+F2o/VrXfp0gskc6fyroMl7PmWUJOUsoSKks90ErrcEDhL6mdaOo0tV2gstJY44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749957594; c=relaxed/simple;
	bh=XH85lBlWKFO058uiT0JnNcb389qgHLK3xSXm5j28yGo=;
	h=To:Subject:From:Message-Id:Date; b=mUm2X5iX04LTTd5r77PcHkiJS03aKkZnCgoCb/IaOFuvP67jULDhxiED4gqjemyaC+zMIpSEWPo7UmhZ46cciIHeVV62hFXjznZtztfj6MzpxWYN/TOJ5GLZEm4us9DAW6sgAv5iTlR+tQt1PvPYTQP8XsEzUO/ecXAr8zqfqb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6rSedQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6rSedQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4CEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749957593;
	bh=XH85lBlWKFO058uiT0JnNcb389qgHLK3xSXm5j28yGo=;
	h=To:Subject:From:Date:From;
	b=N6rSedQjCqeDzs2VIEU2GCgcftOd49XBkWFNzE+wV+fbd8T/bZrXFiyZxdWH+7XTZ
	 wu3XsEHuwdZSzmzySrEOiu0cdS5Uh4b8BC/GhL9q36lBusL/NPy0HeDDFHTZclDwc3
	 DVGo01qM8ZC4QyjqIcspvIGbdH7BaU0sVHqlXfnsWS2JQsNHOInSfLwskaTfCtJuow
	 msFYiJaLIKObCdCrxWca99ZGuardIvk81eUIW/eL2VBdxBjGZ6SJqn63Kz02nYATY5
	 7vWh4maSbDRRXL0KqiSO2U26mhPiggRVnVTuzYtMnUwdBk3bZxQXAoSiuOiOpoDViJ
	 n2/UqFcMF7gCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98184C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995759361.11085.16782236176973793501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5cebaebe41087c3ef8d5ec374a6ed28abd7067b6fda1532b70ecd1dd6f3fb4
Date: Sun, 15 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749957593
