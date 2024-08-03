Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACEC111AA
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722717354; cv=none; b=KRmr/bg268nAl7rbTe4BgOd/EMmdC6OfphvJbJCx+49C/0WoIXJZvX9n/QWeeWvd85HETwN5ukwwuy6JrQsTGgBHUOkAW2m7PiwPNdUo40fWA1RElP39HzWySqX7HPwqZk1jy+VmguYdv6X7BsH+X+vJDO87J5NdrEAzSiXP+F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722717354; c=relaxed/simple;
	bh=28aX9tj+smtCdEhEl7/j0/ArKrS+da9jzWKCuVImR5I=;
	h=To:Subject:From:Message-Id:Date; b=l/wNEoQ5tMYsLvytPsfXlsRKAKMnt9zaWiSOtwgDAyfsZlxxpclNi2n/gx/JACeOfZ/yCy59/OngbDB1qIDmaIz8r2XEdWmqToihslPsptVLjJIkTqY6xN8wYPVX/oGoItWTmg2EPGCG2FfsmUZW0wP3UrI/UIlAGXfixi93cm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiDnEqHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiDnEqHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E41C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722717353;
	bh=28aX9tj+smtCdEhEl7/j0/ArKrS+da9jzWKCuVImR5I=;
	h=To:Subject:From:Date:From;
	b=KiDnEqHvi2P6bdDn0sVGT4E80ZKITuYn/InnIJzC0WKSzt0/Fwi8E7FPO+zKBVV21
	 wVcW0+1RO3vuGRcpWZrct7EvqnpqWgoYza4Q5nGF+Jn50ZAacwHToL7PEuGeWJhJOI
	 h1OMTXowjRggC9MFNIqUAQjK5w1gmR8FWuNKfcScxxnqR9/onkp0iIQRuZzT+kOQp/
	 q8pLjTlsz9AB6xrXwoVbp16iKxhxBiHuV7vcRq/Kgm3V7JpluI3zxnrsHNU62ZKKak
	 5tcAilOi6gfUYS3Rv5ELXSayPnE57uKdlrf4PraHffmCWRJ8kWb5HxLgML14lPTYrx
	 eV1dBgYYcrcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEF5C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271735363.1377.17593307861953674527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c011505daaa22876efb7841c35922b4cc90bd3156395dcc3b362be8dc56853
Date: Sat, 03 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722717353
