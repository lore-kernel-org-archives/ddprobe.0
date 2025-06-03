Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910AC2F2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748950795; cv=none; b=nz9cEDBCoRkOYUOPw958C7jSW/Nfv7i4K4BbSBPaLTGriuBlg461UN9sLzcjPygmmMCm2t+SdcXFxeZL7Qn+DgyZpogg6EhlLoOUgoLe1DjxKJVe1LTfJEKtVhWVWH/rX+bstytnawUrsgUZreYEa0iTJox7RwWv0fEcz+6SPvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748950795; c=relaxed/simple;
	bh=veAyliAR4MVUvOMZ1YSS2g3WrPuuyW1eBbZnI7iPh1g=;
	h=To:Subject:From:Message-Id:Date; b=RegqGcp1zv3+zLgyH2Dt5Ocejj1DsMIxaGJ7ItxEtpQYZTT/uZdYpiUG+UZGx7LUJmXmyhls2W5RV/4SZCrtPr/ZP3Xvb2rWVxbazQJoTOn5kO8tnkIX56v+qkaZdbOY0l9ZpKEeVWH1bHCVsrYnoGcnd61gbNqyzY9I8h9QlJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCiQY4Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCiQY4Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748950793;
	bh=veAyliAR4MVUvOMZ1YSS2g3WrPuuyW1eBbZnI7iPh1g=;
	h=To:Subject:From:Date:From;
	b=TCiQY4Zq3Ce/ALV//3b2sBvAbG3fuaIXGc7CU6ddZoCIfmkLboP5nXVamif4Vv5nM
	 ZkkI6zdTBH75wqlungAuEWF8sUhHngnsL4mGCv/hUDFcRCKIFfo63ubck7Bd+d+bbs
	 OZb710P8ujqZfcsQPWwO2TKaT8R6/CVETlkz/DzEQrtIuhLIzEHpOrR42UWx5RnQQv
	 hQpDgJKZ7eyOxpTgjXa6mGMa1LgwSH0CYWLcQtuP6J/3vxo+PRnnnHU+Ttofy/z4rD
	 yU3WdMSgQ1ESXq1Aq/vR4I3dnW9K8Bc9zQWdTzi38ZFm11QwWn95sPeL1felGTTuwY
	 qvgUDA0m3GBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F238C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895079357.28678.17107376787819133542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25aeb99beff857da42e7386330be564597bdad3189524666aaf52a554831764
Date: Tue, 03 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748950793
