Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF783B71B8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791068434; cv=none; b=U1i0WX8+DwwrfZmbuRodU4V3sw1kCEHMqXN3L4JJk6v/556k3sYsLgGjBuz6QMs1NA/HCeQ/HcwYRVfqzMhzIzFzO3h/IcAGbP3cdOSaCYA5STU45xsM5rkYkBAr1EkvfUCqBAWBkB68D0UDXMGoqk6KJhUmWt+2DJuaA8Ffs3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791068434; c=relaxed/simple;
	bh=brgMUwJi+O/JErJYpmIOqTu0h3xrmek10nTwTKxKKm0=;
	h=To:Subject:From:Message-Id:Date; b=inE/N4Aia4DYN412he2y/USU9sJCz6gO7S6Kgn0Oh0H29t/BzygwZPFl97Hu8u5R/WvAl3pfCHgBfejFloohbJ6x5U6GxBRQkaXysrERWNbLSM+4ohtsOEihZI0DaG9w9OtaZUz17QwS1BFGAxwvPyg8SfFLHpmxBXThck9uL0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKhunS5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKhunS5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BD7C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791068433;
	bh=brgMUwJi+O/JErJYpmIOqTu0h3xrmek10nTwTKxKKm0=;
	h=To:Subject:From:Date:From;
	b=RKhunS5hn/OzrHIeXWfRk24/yHZqnmR/212GxtXRO1svkygqkB93icaffwvIzdTvK
	 YKsOTsArCp1Mfxww71zVxu6C1A49u9GXNFp5ZA3gwe+owJuKKU4r+DujJhMHKTIioH
	 /7TVJyQWn8VWQF+3G8kI4xWTZPZ0cbRGky7siQChangVmlnvzvFwf7uePlCsPF5Xco
	 hkcTGjv2aMZ194s5YSOlLnoun4VUFnbYdRL43IwPdVoKAZEi5Uu5xrckYNLUiZTYdX
	 uqsaNjLoljlJKdLRuJGJqoBGVLFB3jckKH6S6LNurv0c9nXDkjorrcXeKtW1ZAUTTu
	 nqQlRTWE4LgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27D8CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106843369.13966.9416244021315748823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a60848c58afa8c0432ea3eeeffbe41c40d9cbf4b457282ecc0027285905202
Date: Sat, 03 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791068433
