Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF6333DEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770777234; cv=none; b=AJCGVipkByAJWUTVq0RPhqEA/1U9aEtpwTnU1Z4vYCQnBb1gknB7x+s6FYBQ4fjwCcWIVIW7tYfRSc2ESVPDAthsJBzHFSoOeviakJeI0DshT5dZrQOMR2lWbWXlC3slJ1k1ya2iEQKBMgiJou9/++p8WforoQNInku0K/93FdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770777234; c=relaxed/simple;
	bh=e6LueEV3zsKr2SWxZHZZ2mLepMLFOn2+4qhZRB4Mktg=;
	h=To:Subject:From:Message-Id:Date; b=d0Df+KnfiWGINaM+ZFXv1lgBKTB0aIDW7Rx1rWAAOLfC7iPkHt5znD9ozHKW98GsRHqChw4OgLL4W9WNeUllKfRM4pdwErtcTsLCVV/XPWVIhdm8OPxXtC0TG23frkVC3/X0DuaBRFrALjaD2qYnS+iHgfjvFdinqseb30U/9Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmwTQNsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmwTQNsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D170CC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770777233;
	bh=e6LueEV3zsKr2SWxZHZZ2mLepMLFOn2+4qhZRB4Mktg=;
	h=To:Subject:From:Date:From;
	b=UmwTQNsMKTRCzCKR/3qcH2lPsQB7+P2gVwvwGrlSdCZxGFq0uDS/WBp86GHlkrh9V
	 F9z5kBEWK/UnJdwgRoWkCoSis6w7H6cxWQ1ugT6rQv424p5PANWp0w/oFOFA+AKGFi
	 7qlAPsbJ6VV3+ZWRhVGTr7fC2REOZY6LQZLIB1UKyQgz6TP5bbl/pewIKlGoqZPyc7
	 1TCE5IxraCJLuRI44PmOpZwKW4p33Y0xxlRK8LksNos4Vkw4B733qiuKHu8TUhvjop
	 dn2odDNfkveqZo1mo/eT5qNAgLxegy1gz6lrk6cIKG7xXqrQuU0h2kDGmEGdtxndsC
	 Tbe0ej78YPjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E1EB594B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077723368.8006.18400274480955208425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0f969e5581c2d130884aaba5da4ae785ff278ea46e659aa9bbe47dd7b83ba0
Date: Wed, 11 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770777233
