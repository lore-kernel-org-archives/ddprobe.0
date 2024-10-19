Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128BC3307B
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729355754; cv=none; b=rbSYwI9ieGO452eR2dQvIgnDzuVr9RUu4t5mHGY3ZssydezjN3ZQY9df4JtoI7dikOqMk9jiEGpao7FF6PE2nSQruxMLB5sZxEMgu0QFtNPYSDI3dFT//Fx1Q5rBJt9iPfKme512IC8p1VBJjo3LGlcfsL1aaYe8kD8RkYOiofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729355754; c=relaxed/simple;
	bh=zXVsI7gCVGsjMB8f2Gr/HE1AdPFx/Xmlcbt//Eggd8A=;
	h=To:Subject:From:Message-Id:Date; b=gYkHKhksFP1X74jvLwm35OhA9GI/TFq6et+IxujdX2R9yTcq/Z7DCqJ29oG+7E63WEXUMUVI0qcsivdnbF8AgPYPUvaVpvJrohVnsPT+ieNjr3X0zX4d+TXo6TsEhrqCYYCwNPuconv/u6oqnrf3RRV1dGBY7AOlNvPqjJTcpO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsxFzLeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsxFzLeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD6C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729355753;
	bh=zXVsI7gCVGsjMB8f2Gr/HE1AdPFx/Xmlcbt//Eggd8A=;
	h=To:Subject:From:Date:From;
	b=JsxFzLeZzA1QIVoiC+a0a247Xvi/33cJHl6isw1rhbS9jMppROraFGH9gtK87JDj9
	 2tsxqyuMOAyIcrmcvJMoG2LgQlxkQa4cxWUx+dkZmUDPOAOcwq31pl2Cwtd1EMA29Z
	 tbLx2haMBD7gSfbo2f4ACijxSbcymDJtaSsZoP3HEnqD7ZPg68gjcMGzFCSyUsg9Yw
	 jMO2RF0xVobKXn4sOdJsp+MDRi7gPBTxzHzX4xJngL6RAn4Z1pYB3P418RBwkeBv7Y
	 cHtjeDAPBMg/lPSTX2ftZiQWkLzkXbVePSz6Hu66TZHXuKYM1TI8DF9nHAes8QxE/G
	 x6hDT2xpOsfLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D43D3C920
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935575358.9403.7368361435269404171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acd2b8d9bba46428dd425438a3291979d00c8f95fc8f603eb04b1bd5ec673d2
Date: Sat, 19 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729355753
