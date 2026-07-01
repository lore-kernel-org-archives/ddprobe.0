Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347912C0260
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782894514; cv=none; b=Nmnohi0CCYOp5ABubp5nP4brdB1uwDibLMvbLtpGJMLJd84F9meeq4PQ3beOgSvKUiFE49/R7zhmNxZwib5lDMb5bta7LIDLy/QG/lt97IgopIwLuRIAkuxOdysVriVZ4R1MRDAxSOnccoX1/XrsKB2LLzB5rYj0dFUJTsH1LCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782894514; c=relaxed/simple;
	bh=3XtOlg9IhuF2rbvpi9gqJsW3xzdYdX0MSB4ym8HpsiQ=;
	h=To:Subject:From:Message-Id:Date; b=cIIsHJc48NHF0ZP8KPR3b+pj2EjEr8q+JPPVWNQ99qujs1vSt4QfOC+dRnBrO2GWn7KFilTPt7+oMm4RemcTZ/RUNhU+K7++B7KLgfRyGTYCwhUDMfRCR/7d4nmw01SV1KTIANACrF4jG5RJkkKrUMqugzI1qcvmg9Lpv2Xun18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S20YXPQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S20YXPQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0283C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782894513;
	bh=3XtOlg9IhuF2rbvpi9gqJsW3xzdYdX0MSB4ym8HpsiQ=;
	h=To:Subject:From:Date:From;
	b=S20YXPQgTBNogKpZcB57qoACXzRTP9wMwvMjYMSV1/ID+ZDmxLLuVly65hKaEwSBf
	 pqOVhmRWPx2iHuIZSt5V/3EPOexJRwS0gHtObQ8+gm8HFsPfFI3RIzPzwoBXknAYiw
	 0YA89nwImWMtJYR7d+cbdev8VgwMwX6ZyiKmfLtyQsBpRhkfvsAXlTcSFMLPt0tjnk
	 jDaOYC1fO07z4i2Dhs6nexttTa9pYHxAPQv0yLjXmNne6w3IQAsXVnCCuij7046+Kf
	 netpohO/LCtUDDzm4yLTlaPx3RoZA9FPJej2S5ETpyxQr18Pr1D6TDsUP8TMe9wMaq
	 IzYsfklgOvz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF7C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289451368.23012.8056449329919511686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b385a2b246b5686c51a65ebe2e5fb9994de879681ff985b843bdaf17a5031e0d
Date: Wed, 01 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782894513
