Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0A627511A
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757251194; cv=none; b=DJ/dK174BxR0Hcs751nBg7A6w+zGcey0xT6wR8Q+yLWjhud0y2E8SLPGvBBk/ULf6k/LQOCefd3qajtFlin+5tKrEbrGz2XYrPEzTSTghhq7xdzmDbnW/OfpvxD2OhzCJ/Pa1eRapdkb/WcmR9jljbgqUSqHcDpQgo185U+6DMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757251194; c=relaxed/simple;
	bh=qtrelowQ1q5MEHg8y9IaIBTbJvYA3HwbipYPLN7Ao4E=;
	h=To:Subject:From:Message-Id:Date; b=reaftOpAWGZ2qYRlgRGHw4dCN5ckCk/qSDIRKY2zcXaB39y3szdTe8LLzHD7+P8iL8otGY7YjTESjRuq2CPAFE5GHYr6mn/dQypDOotJrwRGURSVyEmxgHEpdlIkzs2qqNXQsVfsE5VRe/U6FxQXffmpMpj4keTPpdF0jxQssM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBGuaGvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBGuaGvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C245C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757251193;
	bh=qtrelowQ1q5MEHg8y9IaIBTbJvYA3HwbipYPLN7Ao4E=;
	h=To:Subject:From:Date:From;
	b=pBGuaGvHId30irdpweL5PbsIb/PMXlexSQoMIs+IeBoDhmF+lO81vEa/fhljnEJOp
	 1CNYCnsu58jHJn8HSMocGabyyiBq1PfDEi5B0jivbdVtRcJ2gFAp/3l/cwRApUt4QX
	 FJcSU2R0E0nSNvoD+/LyWVNtikTV4pk2HepJZa3fndpI0pPPOfQoPOgKLyIejPWh7A
	 wM4jI2lrw/KEKrAtayxR1BKHwziIW0RrrmS9V6nTQ3VnKnElmY5HAUfnv+H+1gaVHT
	 M9ysJm1Fh4XGQzKFnjgBv6oIsQEJn6F9N4tGuTlGkPd00NRtjP5UkX+m+9rSuIccKn
	 iKvUXHp2Q+m0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F101CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725119357.13065.8861303829905180992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3152f5bcc5fb864a82bb7170e804a55131c50482f42eeac2b0589d7389e34c2
Date: Sun, 07 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757251193
