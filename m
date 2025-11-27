Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393C2337B9C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257574; cv=none; b=UVyeIfZYziSFknyBGQ3Ie0OxOOxxCb4A6NqkZXLdBaNvNbTcHoQAT5HtiDaywol9pSbe1g0hMCLTEcMNNf1CVxRIg1zCWvUm0w/hFD6gT+CnM+XHKy+DeY/Ilvc6U2m65eet3wV7wFJRmpXootECRaLrMQW/WaS5Gsnvd1T5HdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257574; c=relaxed/simple;
	bh=x1c2l5sIwjzbsEQs0IWHDRNNM8vyw7T3mx9dBMXLd2E=;
	h=To:Subject:From:Message-Id:Date; b=eQa75KIsESyoP8T8Mej/b8cdEOnI35qqs/b95MJtFUT3sOuATyOuAeOU3KA5Nrz9JPFYCAp556Rt0j6pFay50PRqyFeiM5HVOD07uddY9Cab/wA2OWWhyoIJT+vfo4YwtFYmmwZbkmlolaXBkAQIPJwmhI2NTsLDyP8La9Giym4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avr/cRdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avr/cRdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4094C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764257573;
	bh=x1c2l5sIwjzbsEQs0IWHDRNNM8vyw7T3mx9dBMXLd2E=;
	h=To:Subject:From:Date:From;
	b=avr/cRdjWTRFVXSJS2qOjf3wpV+E4D1sRjuENZMMZh4Hn0OALuBzPPeIb7H+8Bq9T
	 mqjUhvwwy1qr7m9acYw/TL6f4QlVZ45lcbo+uF6ChSy8QeL+RqdPR8vhYTkLYCC8km
	 5PCxO4zTW1phM7RumNKI2vp288UO8Aq9rejJLQ39Pmd9nJxqqAD+qnXcKDlRgtx1DT
	 yS4oh8jWAoDpvqidv7DSFSi01qVutj2krxBWbMRkBgzaRYEg9Zh5cpVl1zFgy3tNvX
	 cEyxrbrYa/L9VAM4D7sOf0ixy/H4ExgVmz4zZ5wf2YNPzWZoj9zeMm+wyVJLFHb9xB
	 T+izQi6p9qa6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E01AD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425757363.23486.500706000793026132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372e5ebb62d71daf880ba1948919a562d932e5af541e05ad0b584385c9be02a8
Date: Thu, 27 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764257573
