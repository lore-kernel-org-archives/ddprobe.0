Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA14118AE2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782104194; cv=none; b=eZNzbUQRmvsfF5mC/7FP9wgbhk+BDrDoQ52WrYJZ7BIelTUNDaDOfXsip5zYy29NfkXY7fTLPKGyDvAVG1AyUkkU53ywvY8qkgnchBeCsKPKqenco4/I/PO/LvfuD4EJO0QV4Bkqv0DwFtEIWfYM5+TuYuUVkU6p1JzFD7X/enU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782104194; c=relaxed/simple;
	bh=6azyoFR0lx/Zo9vExkfeXuTcZSukvMaeamWiPxoI8os=;
	h=To:Subject:From:Message-Id:Date; b=JEgx2P+qBs4cHvPSBVadVClzy2W6nZO/ciE3y3vBtOiVtudl11Q4KY6uyUCpgKFzsVV4cswxhjGX0U8l8M1vv8h1Au/63qMQdb6fXZR4cAAxB6S14kd923N3dseE0LcaW3J9NycEAzRLCozikYJC0e/MyRt3gHRYGX30x5GS9Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX9wsei3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX9wsei3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF220C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782104193;
	bh=6azyoFR0lx/Zo9vExkfeXuTcZSukvMaeamWiPxoI8os=;
	h=To:Subject:From:Date:From;
	b=AX9wsei3Xbh4749C9SganFJb1rdj79YE6OgPsCFn5rTUUuVvJO0UplvVm/uZI2T1b
	 GXwC7quhyahDmdEXOKFZsfKuc7CGB4hChIirN6pImgeZTaPmuzNjjKIzpM+mPhN+p0
	 5bxOh28t6vpLmVQkuVylQwo/9kh62Xidpwk/a5T7WXA9fSNDHkVB/4n6RYL+h4giVp
	 UikquYy6djQHZlsEKljQXF5+CJC8FJmVLUh1W0MB2GmF899bSzyPVb/Nriwi38ziP8
	 KiKVdlpOiskG3wflHfSzwHLTCdjg3jUKMgRWFpU6ba92xs3siJX863mQcswfvzryQe
	 yOpf+v1qLnh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDD8CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210419373.29341.10079893596093288269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed3d43d746886ef4614dd44570170ca574936cc5bd9ba68b96b1991f730a64e
Date: Mon, 22 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782104193
