Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDDD26AD4
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733490354; cv=none; b=RS0+su4PA6lnTzvh6/fNPXdeyj71n1HPYKtEpE8jXmCNY2PlDSG0yX8wo3enu7CGHU6kvV0BKJuc8vVsVDxgDmUn3gQTzI3wFfyI0DoZBu+g3gtovVQVR0a+aiw+nL9rgBcxMFpT80uxtqCuES870RxzRJwsnxSqa6RylNmS8kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733490354; c=relaxed/simple;
	bh=jWlJsfV6miOK4UZaF589ir4DuLY635zq6ATmoGSb6VA=;
	h=To:Subject:From:Message-Id:Date; b=SDVsgrYxq7NQXkDLf6lFOkDvyY7vgvrYhbCeoZWCqGYJu+PX810saV/i/Zrgkj9w+gGcABIHkn+xrPlJ5mVpfIItWNHUZ5t70jSoKt3YUyfqb8TjfsHwwfGcI9WM8/W4wvGOol9m+Gc8gx4RI2E7+GKWqKGTj/5dB888Otb7ix4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHHzv1nU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHHzv1nU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B0EC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733490353;
	bh=jWlJsfV6miOK4UZaF589ir4DuLY635zq6ATmoGSb6VA=;
	h=To:Subject:From:Date:From;
	b=sHHzv1nURXL+vLLjWYnEuLY09/YR3hUgS/Lli75cvKlbmUsZeDM8e/s/HivGKfnhx
	 IbYqFLGhdbFQRXlShF9TLPB44S9RoOtkaO/x2uVkEFNMwQ+JoOXs7sKUYGeS5Qe+qV
	 OsDsZo5XYlkxTSLMZZEsqPViW8uIYb5PezCGxIAZoiBl6kBoPITD1RBdFZchZ0lps3
	 qp9c7+/8rV7/SrKlTVFUxIYcn235JnyCTB4S6+4Inlb6jlKu8aEq8RiZzB6B/q8W3Q
	 U2AVfLJmLOw2s1gbk3Nr1IS0Fu359NhaEnYdDK1qAuAaXxvZw1rU5g5hVGDXqYhvY2
	 p3p+SFiMOne+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B0BE77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349035360.16538.1911712809523102458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7cc139b044fcf40922cb3325b2853a56d85c1f08ef0a5cd4150b826008f3be
Date: Fri, 06 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733490353
