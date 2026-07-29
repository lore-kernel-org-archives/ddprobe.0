Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF341DFFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785295234; cv=none; b=dTJM4qKj4gRsFKcz4ptOQsUp30dknJxdpnH0Uq3VIvt/zdob0qRasU63Oo2Z5eUPu9K33Sj9SA75j4zxggCX6n9TMQCJ4tmTNs0JNCg6Acei5MEhSO6Vla9j1n6qyk8Hl7H3u3ksORtSsy9S/QARRfRcJFnTCDE72X37ijTPPRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785295234; c=relaxed/simple;
	bh=XtU5PA4WTleCHKW7lNAKffld9AzfqSFJ19SvKattkMc=;
	h=To:Subject:From:Message-Id:Date; b=eFWyfV6GtiHkZhyjPr6W8fiROg6isM3Du6vPz/EzreLthq+qSNCvv19KExdCfrDrKBZs2l8DW3l6Dcp979WTh2Ve45j6lWhEu7+ZNZI6FVsww4T1q6eqhB3qVnBcTXtHh9oz8vmf+KPV2aoJ5Ysud8OeCkp2CoZRyidGJsyFEJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVXhUoVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVXhUoVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACFBC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785295233;
	bh=XtU5PA4WTleCHKW7lNAKffld9AzfqSFJ19SvKattkMc=;
	h=To:Subject:From:Date:From;
	b=gVXhUoVcx60Upyg/2oCTrZbMGf9KS578eaEUlrRipZU7Fe6Uhqbx7l7btL/IB1EQ+
	 YBlmHNEFOJduipA6UKC4nM6CPmqeTExER4OeRFxk6RQbD9jlCVTFv76zNL1UhNcVTK
	 PYme8SBe1GaXqb609MYmffmKIMwZbWZ1XRhyaRhu3G85wloRTYbG4VnPXt9YFfu6Ae
	 qtgDVaHgFTBS6PQWybvfrrJSVxU70Kkn7tj/5Gtm6M/Ufc/ItsgDlE1ghIB7DhmoO3
	 2yrPc/C+G2+s5eMCF/uvqLjSzm1lusjTtaUtKQnK+e8L2+EXzM55Ix27ysuRUHcnjW
	 n2wmY9Rm4PiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9306C54F54
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529523368.14763.684015723078959016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196602ff124bb253f396c3b3eb432b836b6277175ed42324b5447e897234e2f3
Date: Wed, 29 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785295233
