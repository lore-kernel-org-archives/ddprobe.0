Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75E8282F09
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773336893; cv=none; b=Yk6Tud5wv6InBakGieIjdl3Efj2fxBKwT3t6nVvoogxihXx9BRYArF4KhP2hPSAKprlw1UvImXradPNVZsObuw2WzYhhZTN4xzlZNL7UI2mKem18kaIvrOJos8fbP+3IiYmztScyOdZjcagaen/RK6GlINMtK6nwLkUcux6haE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773336893; c=relaxed/simple;
	bh=azby3RkxPOfmD2nSW6wCkl/MXVVJZHxB/7fRVGYlYEw=;
	h=To:Subject:From:Message-Id:Date; b=C4CthXkWbtNpcwxOoDjbCVLsE+ISl9NWFUhDeu0koOtGBbi38MeJEZ9TsddsIXorlu1sODllZRzO66RK//qx1O9gk+iP6fEuRLt/ATS5wZc3Z9bIcIv6gdsinwkoBReSEsWSZgCgh+dxEFXhkY5SxTh5uClNLgMCkiqWvfmVfyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXnYVunR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXnYVunR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC38C2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773336893;
	bh=azby3RkxPOfmD2nSW6wCkl/MXVVJZHxB/7fRVGYlYEw=;
	h=To:Subject:From:Date:From;
	b=iXnYVunRjRA5d4IX8YWyJ548Vwd09eiQfdYaeOMS1VHAGKEa/MDczk5XVeP40gjE1
	 sa2+vDw2x9hOu40D9lFjYEhikmMKNZSLHCzA2Bu2+blWTUZGHcTUhvqSi1poi4EsdO
	 fPrdx1ZJgmSTuzvmoXWOadmp2dWVyoGP/0ODLz/X7JYw0TWhgGjzsjs6xRWCJKs4v+
	 DBM0omZrCBmCZGRb5lLMvgbMbLIBdis9LmyYv0wNvsb+iUwEX0CMrlcE4bZ/dhRoSo
	 RCtUn9kkkoigUEmknidhN/R/AO0oijuTCJsTU1wc+K6xXxJoy9gAQHfvvBkG6ml20T
	 PDTAooBVqHUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E79D106ACD5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333689363.16632.9895788840755279569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce6aa764cac4bb21d444f2b1f49dd02cc2604f113b0934d97f740c621595173
Date: Thu, 12 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773336893
