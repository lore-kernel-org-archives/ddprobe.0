Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2107025FA05
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758866994; cv=none; b=li//c0mehqhnWYnRCgkYB5xZzNwrw3aHI7kCXybeO8yr2GUOIadqqGpRcG/bOCERGyCWVRlsozZShCPKxJqw6Gk4V8e9bxAHKLELb52isqJfliKIGoa/QVw0+QJ0wSTp6V7hJGnXrKUiHUGvNwRpnB6KkDzIniLbleRC9MRz/+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758866994; c=relaxed/simple;
	bh=1jgwTun5A9aeYITyc8KfWdkKSztcl3k7kC2h3fEO6mA=;
	h=To:Subject:From:Message-Id:Date; b=s9eoAoYYBoOxp/0TkQrN869SWykeNPfZeGKQLCusEGrSh4rcXGWrXpEuNlxKlJrE0T5LC8ndwkGiCcAgxyXbIWvBQw9d4xgFZewn79SnnT0Bt+SqjxTnSBQrTEfyvbGLy/q3RJhcUoFVFEMoxTa8oBeANJgUlYDKXJIWpnOD5fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAG6cfNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAG6cfNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB71CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758866993;
	bh=1jgwTun5A9aeYITyc8KfWdkKSztcl3k7kC2h3fEO6mA=;
	h=To:Subject:From:Date:From;
	b=MAG6cfNLCUuIraoMrR6oca78Jfhb6xGyJanrleoxAlJqvU3WR4ameAt9GzMjJIAnA
	 JlXGPZ322W47bhVqlEDMRYixxXCoZKPRcYed2gi91+6SWS4wMkeEcmDISsVV55/aQ6
	 vvRMgccWPoLTj57xR8zSCtIfLznmsi3KDSrk2A/ro+QM+7LEA5YI04MvVDNBlwNCdK
	 EkdCyNLZPMq2ENxAWuAIoSZ68Ppb/Jy/UkMO8fbdHQv9RbinghBY/jTw4UHbNcWaSB
	 EOPjNNaKuzgUiCtkdlnPzZ5bqdsh6MKZdS653Aox2vEQF8g1IztvYA0Y91Aa1FODQv
	 GPah314AxlL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99393CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886699360.20073.7772929645037195703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be51aabd1326bbe8406334f62cf2f8864d989252198e2df7221b5853c78b974a
Date: Fri, 26 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758866993
