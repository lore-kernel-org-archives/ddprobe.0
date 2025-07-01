Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858215AF6
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751399994; cv=none; b=ofrSQa5X0eMq9K3KSauPYGqjnJCWnWJecqLavjlk5TE4ZqS4Lu28m9rxPskWLcZ5dlyJSsX+EiOfpBv39Gg3BNpmRjNMr90rmMs75UmlXeAcmjJYu8Xo07cms7KMFr5+L/RoukH/WMCSDdXzaxKdiI/cUcQGS0ch7cfrornw0vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751399994; c=relaxed/simple;
	bh=fLJRvheg4GS2uiaE8PRVCPUuwx6OSrZZho8Y+nPpv5Q=;
	h=To:Subject:From:Message-Id:Date; b=AdAWe8kzkVZGHHj5rRbGJ5UwavfQZuQPpd90EDGgrF2wSZc1pQMrs0DVff8NkHatlHiiyKzQe2T6/vT5R+gPG6mlFMZ+Za+J4SZ1/Gego4QBIxBqzxGHB7mxNgQHZIBMZ1rhDGO832Se7PX1I7J5t1oqOkol/Tj3THK1ad8d5Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgjBIiRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgjBIiRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0644C4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751399993;
	bh=fLJRvheg4GS2uiaE8PRVCPUuwx6OSrZZho8Y+nPpv5Q=;
	h=To:Subject:From:Date:From;
	b=KgjBIiRHmJSNWsz/tAxDCitQsOsHlxXX5VWSDhBRH0mZ39282yk+edFEiAbBmt7Si
	 9PUm41BoUTVl/cr3hf3hmezAQMS2CCvPvo8YLkRxPC3xcOXHUvD1097yZnCQm9H8q2
	 G9vBC2HvZJPBYcdUO0l/TcwZFEEmIfa3WytnHUYBszSO45cgnmdyEiwCdiOszCotTD
	 fwP2LnnxQdSSHI8F++hkEsAIh5DXQrE/0/usHzAQoZ84IphIa+fEGe3EyUcF2nveF4
	 2wUiIVyIrghz5SRtcFVXO9dh2vevHCTOXEX4vZpNtTSzp2Nzu6Zt93AjsXk+t8qMIV
	 YeIK8HD/MqI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9BC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139999357.5686.5824143331243227812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9b91fc025a7f2286cb5508ada5952bb4c3764cfd9c31bfd0bc12e4ff4e3c4c
Date: Tue, 01 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751399993
