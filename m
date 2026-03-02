Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1C672618
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772428494; cv=none; b=OlC3Uc8JNp4EAnLMSyRlcbozAd1XASVeXdRY5yVss1nNZ41fe30j6lJxWHE6u7obCXRLuuyoiadhcijTipKS45IjWNjUL1oz0/5wfog3HpZYSuqQZ9+2YfBegnT3Dktcm8ABDjZcaJYKMyEKVprcGbUuxnq5D1Dqez2Jq1FwOIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772428494; c=relaxed/simple;
	bh=XKTDVTZwA97AweHmrqZ9hLq2sNl3ecS44ytNgTObgCE=;
	h=To:Subject:From:Message-Id:Date; b=PySWGsg9lid0MjXIlRIRX/O+gQSFEW1nN0IfP+ieBMMLyzopaCVA6fPkT8HtiZqK3yYrbys3x1HukPmJDfAiSiDsbqa7aY6/TtZmRDW7HwfdCkdH5AQ41nlm3l+smI63b9Rj5X2trlUCmiBU7DtocDXfHdDa7d86SC3ArgQIZrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsExYjfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsExYjfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AEDC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772428493;
	bh=XKTDVTZwA97AweHmrqZ9hLq2sNl3ecS44ytNgTObgCE=;
	h=To:Subject:From:Date:From;
	b=nsExYjfe6E425kBYQPhkMEoYPKob2y/IZlXl+NMXWljxKZuByk2F7dWpV2XcDeaei
	 FwFsj4Em0ziGskEQAE9rf3krz+QWe8jvzqlFyEaRiHVBeJdv2HYjnO0Nyage9z46fh
	 jHt8UB0tKTxd+S0LdmzMglB8vGSAdqgKg0FvyoDLaKDqZUhlvR01/aG9WRjiL185yf
	 bFlBG2tkIpnSTiJ0Rm7EMQlpXc0IhG9ATqlp9o4wOENdsKrMlMykGBVxh9PJYXZGPv
	 +UCXbu53k9dKiHZl2b+TQcxwL2JnCb8hmzhN/ftb9ismVLD/IJzp4xKMaJVdLbmRaf
	 Qiqh86cwGPvGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D48D58E5C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242849358.11049.13923269344395278796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe774b06f5a08a93b2be9e775fb53765972419d8c2b754fed802a81705d4da7a
Date: Mon, 02 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772428493
