Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163CE3EBF02
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769325834; cv=none; b=pv2YPhmah+4iLtx8Y2+4J1Svi21xIkalOue4+7O8/ZW/PdNjLUTO7Kzsq1yzXIE2mNhOBZtvQJG1bowd4MpKpUho1JOMMvoVm5yvUKsaXTDV2+lgaO8VuWAPaJBxArHXKCCSEV0KxOjx/vL+b/YqWLG9D+xKTiqoIZHYWXM8sNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769325834; c=relaxed/simple;
	bh=ERijBJUPowardo7AA+ReauuKtPDI//FeagFMT+Q/EO4=;
	h=To:Subject:From:Message-Id:Date; b=fX84lBz0vRHjcOJiApF+FEwn70+pBuW4v/tup1bS82Kth70O9yytGMbYEkRPjsiWMbkHZjnM4QRWdywWWGEICZH7X7/DWJ9k+u5SKHbZ9OovUiNCnXB106oUvJE85aK9+NFVYHGZpbF+hI6XssPhNxXozvLcespsEIGl2qkBk2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JncI1XVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JncI1XVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769325833;
	bh=ERijBJUPowardo7AA+ReauuKtPDI//FeagFMT+Q/EO4=;
	h=To:Subject:From:Date:From;
	b=JncI1XVQesD87MvXXQbjAKNuLwRXHSp4DDUxQt36QxEhuaEdBF9Ll/nq+tRFmVoa6
	 5fC5Iw1V9UyTPpIth1oUKDaZgFD2vknh6jR9SmK829xsrjbhSZZdFg9Muaosad6Uv/
	 8mvZGxc2Fl7l7nkbUYghmXfh/Ii0UnkMplHbbUN7Icch6HNsCKGQf+/7FBnmD/sYxp
	 wP+GDFsv8LjWI9TBQhz7F+7akTZkq2SHTsrKWkQo1dKb9aI5r6iaXxdo//ml4Pe6HG
	 6sGetfmxdLsZ2oDTvenP43BZCny8FSQQM3ew0uJqyZA2pjF8Ur2jxgLGSS1eqVKKZC
	 jBzJIjqb7kmnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF7E63C8F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932583357.23039.10826148345111162274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17af16514e10c723f6bbefe07c08f32ca38d099d562f344167b79fbe7f7920c2
Date: Sun, 25 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769325833
