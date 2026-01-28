Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131F21531C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769643834; cv=none; b=JRysl4fiYXIcUlBgyp+mwRnzaZGT+fZxlVuFCDZk6kKO7TEyfiYt/1DcntisvYerByratzw/xHe+ZNKklKiwS5Wv2e+3zFPHiMTRFGt02hUgSygplQQ3MnyufX8LWf/28UK95nQgunjp40fYNO+3KOvIGYZurYpBQb4URGSe8+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769643834; c=relaxed/simple;
	bh=vyoVspvtZaAA59bYGjUn1FGW9+OfaIej9u0btgWKlBU=;
	h=To:Subject:From:Message-Id:Date; b=ZdFh4xpP5c1X/JRAW/cIcbCjZP5Eja6n0587nwkCG5l26kkcicNUceTasyF1+B7llTXeV8m2TK4loTxWF862CCzejfuBoKR+zWWyHidCwtbwbMhi4h/uEobvNt71ZIAigeBGOgAP4xWhe2KXwP92gM+hq2dTvIcQ4AXLOXPfih4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bccUy4ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bccUy4ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769643833;
	bh=vyoVspvtZaAA59bYGjUn1FGW9+OfaIej9u0btgWKlBU=;
	h=To:Subject:From:Date:From;
	b=bccUy4STLAG1Luev1+3GvQUOAnoYeFEs6MdalPxbbkKGPqUk64M37DCfq346C+mz5
	 rzY+0tSXJSRZf8KHtYXrriQR4evLthmbufICtFpDNYJdsdXlIVdikR5UQuUqeRRgI6
	 UINQfLd6bq99yGYKArSulQkrlviOMcTqN9OAHqSLa9aj9HayYoVotYXj93myedc629
	 lAls8CUrUH/vZizWPvKO+71b5j7nVJaOoDyyQgJDe+9HKlBUjtCSIObjZCGjWd2d3s
	 /HS8z6t5+A7E+gVJuVltOO3aPn838/NMKcCp1b47uJjtUIItz2eFuVzqMZsvkiwtsB
	 fHsPfGnyT9M9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2AFD46C01
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964383357.27952.3344155608881909617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb6a960a27de7863ef04c133fa65c82040ea90658f4c96e763bd30b64f275bd
Date: Wed, 28 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769643833
