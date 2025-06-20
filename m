Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB635950
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750382995; cv=none; b=PSW4VhYyqCu2x38bD6b/JwwRwu0mn+4R/GytgJKAGrVNG92L9W0sxlvhMLFO0+yoX25fAB93FkFaR0iJtkVRgBxAMrLB2gieAxm1LBJShxlR/Dr58ICEUqdAHxd/Y6dO+FslOcvVeo1UMq0JtxadmcEhTTuVcqJOocR0Uh6E/mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750382995; c=relaxed/simple;
	bh=bMNzwngF6ZP7JQl/ClDYvUHPSI11lC4cGYFQRiL6daA=;
	h=To:Subject:From:Message-Id:Date; b=joglBwL9Hh8KWscKoNP6/Ip4iSQLx2iDrd8VpRM3CAgYURw7hZCUzuaiBrrPM1nbYQNu27eZQOM9LCuQ634zLIFPrcgty+DwwJS4XJWHlOA1NP4d7yo+3X/ppnCDvBaFOxe2weyKWx/tBbn4LSNlGiL2aNo5XZaG77gpbYTL+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMhLCc7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMhLCc7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750382993;
	bh=bMNzwngF6ZP7JQl/ClDYvUHPSI11lC4cGYFQRiL6daA=;
	h=To:Subject:From:Date:From;
	b=LMhLCc7svuJskPB+dIG6npg2gGTFA27Wiw/wCthb4HnvrGeu493U5u4r4nfRB2n+D
	 hA+o0yPOJ0CSEhGKfQE+hb/sjSeKFCvRh0Od573mySh0RX8kovwVJXi5eloctfcwL0
	 1VceqyhzqGB1ubdlFt4NnoNeYVzADkMescGx+ISLfOaZyJPCYNxx7tsCDQv0keuSOn
	 9sC2CIb6CKcuIbL+MFWFIWMKWCjr4/73DjLH9zqNWeaHf6qZsEpWU+rxfQxCGnaCYH
	 skY2rnMmXltBXQJEclVKr8AeTEYuJzmKv3/uCqBcYSvH8SD/NMbnoLz60W7XuEzJBl
	 FTLFIjHhwzRCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C9C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038299357.20353.5904535840744571298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646c8835b4673b35b6d203b350257486fddb625d522cd3317cc6b83add142d33
Date: Fri, 20 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750382993
