Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E0C38E5E3
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773051294; cv=none; b=VbLEnaA32ua0xW16O87zgncgX3KGJySazJtXDe3Qw+d74t5Nt9dPDoB+HlHlIy/d7l5MNNPkorf47rj14e1EPDRkkyfSccD+0hvek2j28aed9LZyZO3BDZaahnhWNF1Hlt8D5q6V376089I076nLrnH4VjMlAOngAsbGb4l/RzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773051294; c=relaxed/simple;
	bh=neBxwow60BUSbyz5MKbtJ1A1jdIfOaZPKizCPFliCdw=;
	h=To:Subject:From:Message-Id:Date; b=I/edS+mHLiu1Ufsn1mZtpUdNwm04yofy+l5p0wOSZDMvjbX/eDmu6NtlJ9g9ZL147MZZHW4HIfITFxyzXGfz+ZJSh0XaR0zqLg47U0Gmlz5n3XTbxeZtfRFXIuzykvHYKn9oRdB5aeHFYN+dJtNzEiBE1EveFCptHqOeK0Pbrtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQESurmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQESurmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC698C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773051293;
	bh=neBxwow60BUSbyz5MKbtJ1A1jdIfOaZPKizCPFliCdw=;
	h=To:Subject:From:Date:From;
	b=GQESurmI4gVho9as88US5mS71iIGccebqYcTAyE0sa7S/11ryLzFrPFPqSgDxIgjf
	 hcwUhZ5EdYieZy8otBRZmfDRy+6Rub/T2QkwQaCTvhgqTyS3q/nx/qaVNBCEw1EehF
	 p2TJLbdsjGoC9h0GLT+cBvWqhLTQP8OwnbCvsl1P9ALZIOVQ464Acw+CH1tb+dFecE
	 0hQtZ9Dz/hyIe5dVowDZkRObkKbc/rHE4FbGDRQMOmUYshXTHjmtFGINxWXNzSDotV
	 fUn8gFkxKUs1TPknlGGdvuQ4CFJMPXtDFoydShWirA9WG3yo4DEABfjl3gIQuRrLby
	 IGaLtphzzA8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCB3EFCD7E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305129362.25002.2231770039016442457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8bc2933ac84caa0435da23a9885a85aec88a45952055a242a4af2506806358
Date: Mon, 09 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773051293
