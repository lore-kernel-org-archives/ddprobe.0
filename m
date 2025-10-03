Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7CC168BD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759522794; cv=none; b=j/AwbaDGsCuwnygXpiW6Ld4rsDFcsB3fY/Kwp2BCEEE0df4EwLgChxHsy8iIs8V4IuyAuFe+zUc8vKttJT6hlEqu2TH52sXPdRKj7Wf/CQ2Y4zhMRuD4BwTd2bDBwXCr4LuW/q3VB/EAzBbM2+yhpBXMjAw24j+rYwursE4m1Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759522794; c=relaxed/simple;
	bh=UzRM7z8ElyaRxEKjWj9xkoEDXbAURqz6nSZjebxWHqw=;
	h=To:Subject:From:Message-Id:Date; b=OxK+hGBZLHZs9r20K/cNRe4BL3o4qu/DbAf5LWSYuPbjLIP1zCGdU5m/ssp5YHEo+PslCDAKTmzXFdfyWXlEU1YYETLpswZaTIsjxaFG0uL1U9b7AXHEWVDnQkRCB/jNhBGoHIL5W+PfrGYywX2UBPDnZ9wGePkJpua7KPcMc5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQh+vrJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQh+vrJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE99C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759522793;
	bh=UzRM7z8ElyaRxEKjWj9xkoEDXbAURqz6nSZjebxWHqw=;
	h=To:Subject:From:Date:From;
	b=XQh+vrJqUZR26Y8lIJvs+m4QftPJl5Tsf0DUisSTHB1ZBryLpz52n7qcEPzRKbvHx
	 Aqlhz+gmN1ZD3unNebmZVqjt/vvmReWIyi6rMEV1/19/3ejgxOnmCZ7k+NmFQQvJWh
	 Rb8AlVIwl062sb3bmDa4UdrDr+oGb66U2KYAPo+uXuf68Gs+FC2AaSqlLcRa+KcqE5
	 9oyUWu91f7SKgFD8nzTdpBlNGggsr7+UFXBBXQJBiOSDs0gmn1LmvVv74XgSNnq8f/
	 l/WEB/ve75mqfdTaX0SCibDhwJsZNNIHuVcwnjHP25IZHRL2ODx3SovlKqflc71j4x
	 nHSbjzVt1trGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE34CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952279358.19908.12272362900005164120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6f2c4d257d66b1012e07c794f333bdfe165a3fe1084b42303c110e9afbbee6
Date: Fri, 03 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759522793
