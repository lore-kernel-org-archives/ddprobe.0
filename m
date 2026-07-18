Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331061DF72C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784378914; cv=none; b=M0jF7OTwUta6gEa+jTSC4auxBTMhfRxQ7Uo+Oq0CmtKjkUIVM8zzOQxPPHnaWGnN6XRGu6s5dpN+xxe49BvuVVvoPo2l8WArutIWal1AFg/BDgvqzutryIYW7/FtRBZqLZghWwDV3C2/g43Qvvlony+l2xUsiQlKpo+7wU6Gc1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784378914; c=relaxed/simple;
	bh=ykTj9QRhzyjMeUTnJdSrhr14p3ExCMy7yVeeyrkEVls=;
	h=To:Subject:From:Message-Id:Date; b=TQgozKt3rtc6xuvwR41yYcxeBt+pBoJaqP+aEI4YQ7sIRgTYN4YQfD/+ABuNu5SEVUmXkVDrN/qnZpgRHvIF3nZ1Doecj/5VYioM48idPANTIEC5LL6GOOeMkwhDV2/JUdlP/FMmVKhtb9dZx7plP+29SP2eXNGMcD+kpVEfin4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYUV8pS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYUV8pS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15DBC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784378913;
	bh=ykTj9QRhzyjMeUTnJdSrhr14p3ExCMy7yVeeyrkEVls=;
	h=To:Subject:From:Date:From;
	b=AYUV8pS+wrdOBVkZkiR9SRPx8aW3yUkyH2XtbMA9d6WO7K2HOhBdVLMqnevyo6H6r
	 siy2ryADFmsQwpyq9GmRGVpB7EzMLzcuxu2b1FinpliV8gPd7XFZI/UzVzu11P/RKf
	 SDohXr5LWQrqAdtotZb2DZAPjfZPPnXiFyfA/YzSLOmJiql5uIEI33OdGZCbbqKKyd
	 7C2xipuPKvBimELSa6scczO6giAqUG1YEn+aYeehy7Z6sXYUHBZV++IHFjULojTCP1
	 Uq1hXiCSljNIgVst0Ch5/YGHS51at+jVJhHZqXA0fZARE/bVopfYakJmOruW+sq9lp
	 KvXeDXvQBygsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1B8C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437891368.9931.7602884628005087565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c428287a5c1e7028bd2d3a74ac4260a0ff3cb96c7524f692d45373a487c299cd
Date: Sat, 18 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784378913
