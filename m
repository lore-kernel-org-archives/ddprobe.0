Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34634156CA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748498994; cv=none; b=SVzT+DuagOtumylkCwKPLKS7qaJn99hwZ5lTEa+cLQOWzIc1gpUdX1Gl/rSxajDdGTNV9pX2fZtrZjsPR7NxtC2HZ2sA6ouZDQi+8EGO/gVxvVeMPvZ81l0p2ghlLY18CaRc7iiLn7XDBIKkkjIsD9w3VFTOZIDPW2FG9l6sLFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748498994; c=relaxed/simple;
	bh=8kkeAGvUM+vTArhq2GyGZAeUQKwyNzdOtqPKW4cb0WE=;
	h=To:Subject:From:Message-Id:Date; b=QNWnZ2myBxKfHYynXhHeKkDbZIdISGkx8DPdDoINEccVgNrWtmxzQhHh3qPxpx0DWRAdrbXi41i7Tm7UYboswNtaJlHC2/JIWbLL4InFBThAgu6wWONcbmvJFHUeX5SjQJQbofcu3EIUoL3m8cZqz7nAjYcUfuBoMUPSJWXM/Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZcefLWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZcefLWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8141C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748498993;
	bh=8kkeAGvUM+vTArhq2GyGZAeUQKwyNzdOtqPKW4cb0WE=;
	h=To:Subject:From:Date:From;
	b=lZcefLWxvpUUqgFslsax/PJY0pT2jjwFIcaZ1XKLGpPX/NYXHz52qAFD8H9m4YfTI
	 wZ1a0dtYzrWzI9Au5433XEzWya1okKaGMIs+8N9H69Q2dkWApeOxikXyoG0q2lQRai
	 4AICNyFZWd+7eX5D6mcOTlEIAEZqPPhQftHczCgm7qCZ36KSI2pbCTW38F/fmgkFJd
	 Qf4qf7UF4W3WxSVXWOuquHC58AhzHebz2fSB0IX3+T7eGDS6D8VV+alatg22EA+WeF
	 NtwuADCtY4Z4KS17itMAOxMHsuXF228pdV7H7XDS3JNDW5QkdQFX/wTcS6S4H0IQ1h
	 RAo7c577a9HNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943ECC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849899357.1116.2539224541461327723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c7787be4d835f57614d5e5d6abc3e318657cd8da27b878f21577f294331b7c
Date: Thu, 29 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748498993
