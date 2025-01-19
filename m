Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A884157A5C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737290154; cv=none; b=gddh7jASzKEah33U3OBQdlFs42i//DabvQXD/h0fLUkNwxoG/u9m2dE9ii7GwsWuiU+oXEzOr0OqqqQmhVF/4wK4Es5vh7mRB5JKk0M6FypEWARgdnJToKoTINOnlNvoxyiRVJq1iBOxtjJBVC2JiDGPH4MGdC7vKWuSON/NKw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737290154; c=relaxed/simple;
	bh=W2r18pxOdASFeSFZPJtkqZWi2EGf7Kbn4dtXSyl00Gw=;
	h=To:Subject:From:Message-Id:Date; b=AhveWuSMVviwSXovO2H0I6u2mRUT61jUL78rTRXAgOxJJBN4VON1lzt1pvWKOcSN5HEgZvX4Uep46U5lxNHY3dlXlQkmYkvnis/Z9wtYjw90vpYxSDFwl2EdV+3PQWYpdNmxHqm0gCT6tscpak+4Y+DzSbXp1tRd3qnDuZ4wOOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTJCqGdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTJCqGdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F9C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737290153;
	bh=W2r18pxOdASFeSFZPJtkqZWi2EGf7Kbn4dtXSyl00Gw=;
	h=To:Subject:From:Date:From;
	b=rTJCqGdGgPHevgYx7f3xf8rRO6mE1iPxjgvgbpeou1HR/i4jA2jaH8/qrF6l/z4w3
	 rEwvwpR+g0q0OhPVXV2ZlPWvfMf5IL4X0saAeI+BJH2bhjLw3unbg/XpF6jo5KDJzR
	 r/I2JX4OUT//h9xwh80OONiH/YwvsHTT1pJdBTLVT0JNzIPVC0owPyEDdHG8NFQ0Af
	 weilRY2XuVS0wuFRptiZmX/HYcDGiBXH7pGoEtE/InGSt6zlxN5gewmGKHhk8hthgM
	 iQHUNZs21Qq6CoHZqDHnHDbiw6HkpM3moGLbV+AS7pvHe/sLuv67hM1st+WXr3zZfE
	 LM5v1IMGpeY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F12C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729015359.32492.9693965958916473308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26632e8fb5ffdda7a9c39d10324bff394ddf2163856176e74555d6aa8dbe6202
Date: Sun, 19 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737290153
