Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7AE283FC3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763709114; cv=none; b=bStjdsxXh1ESMJZAd/h1Y6RIcNMj5uHVnDSAlcUlDoFIX3Ed66t1Sm85bzIs2S3HOFhMmnX4NEGRnYpXzP4ebQr8lwqukRMSMNU5i9RptRPrBQc8bhNm2qH9zRYmowbd38eO4oYj9gKQJRaarsEcdewKy/bZ/RibqC52tGdTjLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763709114; c=relaxed/simple;
	bh=3hxj8rkAReJARl9TQTBEYt6VnE+6Nglj8TQLppmCfuI=;
	h=To:Subject:From:Message-Id:Date; b=ujz6PVTk12vR/OPY6pHcFqguBkn5UtAn1i23V2WNDxjh1WS4tKs9eLLEl9XP1S4fV/tIFnjRsD5YWCa1xMc98lTjFfy/zvENwkVb2vvm6Jfe5VQqf8mwazYFppyvEgwExmmeK/QA44aB6drKlUHr8uRnRz+jYsCWjKI3al3DaQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKRiBgne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKRiBgne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0202C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763709113;
	bh=3hxj8rkAReJARl9TQTBEYt6VnE+6Nglj8TQLppmCfuI=;
	h=To:Subject:From:Date:From;
	b=mKRiBgne0McbfvEmKs65Rfq6SzAdVyksLtYo+U7CBUlA/95d0UeI3cpv0jBwuNfav
	 vgPHUfwcKBuLhy+5FflTCbd5WC959Kk+BA888iaFe1FE5v2w6iFj6XRI5uA0vn9jjx
	 OSYxqsVvzfyzIEoAD0QRUo2kq3SNAbfTenQXzfl6HjPnb9Ll5UwG79aJRcB3mKcAuc
	 0o5Sc/1MPrHE7LFvqEsNDyNYMaWLrW3RTpvGsQKWghRmeIlDWFUWzg1S7dfaMY97w9
	 HwUSDXRTaQ7INd1PMbhIAlLxMX2F9+qy9XhCf2dObC9LdymofQGcIQUz+FzT6bDRON
	 ldwsVHTQsaAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9ABCFA478
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370911360.31770.8170999054125257492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c99647b5b0edf126aabbdd4fe70c0051a6373474483668855199e116ed686d2
Date: Fri, 21 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763709113
