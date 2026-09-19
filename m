Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520D43E3C49
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789808434; cv=none; b=IP9rworGUSKF7tUmnkZtyCF4Ax2vCgaxG6zAJACa+8yy1IWhZwIA5dS/ENmY+zaK5MVf9bdY1czDvlsWzj6/CxfzN4gc8AC6pZPxq8nW1Ts/m42NU/KSvPiCEPR/RScSmdzUM74NOX0+W4fqajqYXe60O7IcFgsnNv3J766yo0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789808434; c=relaxed/simple;
	bh=8w0b5K9U41edP6l7HNBY64R8LB4FLRD5/uAnQpFoWhY=;
	h=To:Subject:From:Message-Id:Date; b=vA26Wfw6jPrDKUnQAskWDTAsFjKZCI1Hnj5vulGxs8NcCC/8ALNNmbuh5ez9aO+pkn+Bl1ko1CdcmcWch0KW4o4l2eIZEWQQ9jfgJ71NwtVhXAz1wy5fQIE6/YPZ3sn5MHZy4D4fcGpQTewk1ctYPx8Kso9G9lIqeOUyWyDF/Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxyeibvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxyeibvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789808433;
	bh=8w0b5K9U41edP6l7HNBY64R8LB4FLRD5/uAnQpFoWhY=;
	h=To:Subject:From:Date:From;
	b=fxyeibvFHotWnQF59JfQfDnfPowI5BoD59hq209mJ+cDQY1ElqFONR00bcE5zBv92
	 olKX3kwkWygIJZPrH1XslmI3jfV3Ho9mEl+wZq7UNtW7TGRSoLsNIN8tY6iyUTCnsi
	 dFfg7aciqyfdqj+xz4mg5rL6Vg+xslesa/j/bUrLbGmQiSbdO6br+D0ZT6AaSsFXur
	 GfJvlX9Qkq25gtNelfBIveHivl4yBdBBOOT+T0Un1KweqKFu/5eVlLI7h8SJ5jpcXP
	 qLijBBmHz4naYd56GSS/dTErgVqjhXaZy4TCuDcSxvc45pb4045j/+nu0ICvFC5Qys
	 m3JsXouQmdzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E0DC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980843368.20764.10428187469769860684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863e5c12d9848686a46554b0a78f457fcfde160d4ced09f71229d02edc6d24ff
Date: Sat, 19 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789808433
