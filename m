Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8E22D9481
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769092434; cv=none; b=ZXOqstvwMxUNyr4mSBqR1X38zYLfKgjD8vi0xREmxyzuVCuqM+cCzDYzK9TSC1D7Sw1vwZZLmOh7bPyZxn1Iy6tQdTIzzCXg61CGTuCK/kvxc7A9mxWQcAEhBB2B2m44GD90WIDMVs+piiAB45VUg+4SapMbrGgHNOQztwHJWgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769092434; c=relaxed/simple;
	bh=YBGw1NJXm0EP0QTMioR6GcHEHRWeizXwPnvcE/EAYYc=;
	h=To:Subject:From:Message-Id:Date; b=ELgu6xi2zwsC/+PKNfCxDiWTo+gopXAbg6MlAzFi0Vh1V3SfAzYm7eyrBICnrr6pleunvDeP8RU3lF0i5PFIue/5vdm7idxUrCZakeodRgx2xOpeMHgbVwTTu6cLptn02X5GuOprihu5hhTN10dxxHNE5xvaL4Gv7wuKsOIVGN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgE8Hybg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgE8Hybg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C96C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769092433;
	bh=YBGw1NJXm0EP0QTMioR6GcHEHRWeizXwPnvcE/EAYYc=;
	h=To:Subject:From:Date:From;
	b=rgE8HybgXJn26KhT9Cyye8L/5K5Sih+ge2j+M9xiQxoPulizAEVwN6zEDTg9brjI2
	 AL5qjIwwbW6mLZr+tgAQxS7ogjaJDTmGUsyNJv5nMXeRCx4D2v1fxjPO1iuUWXICaU
	 5leXMpPyS4eh/pkAoNTKICRi0lk7bo/W92gI7E+v10EQXkOyIH1Hk/EAQr+hMY3gJt
	 ITcZfcg5YRGHbwfz9blWNGQhTBBBOuBOGJ/RNnihvuvlfCEDx7BJ382ekaQIUf2nHl
	 8BnHYKDVVvkMGHzWiewiCR2hCQhV3Ea5mM+sLumfLGoZDFIIHv2CGWKwuIpX5enKg8
	 jPm9KCt3j65FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90992D3EE66
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909243358.14172.12773155468278585936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9842ea470d92c4d57a2d49944582bf3bf2d7d147c7ea7c6974310ad889230d4
Date: Thu, 22 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769092433
