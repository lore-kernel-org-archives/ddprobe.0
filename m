Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4B733086
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746073795; cv=none; b=CHJeIR0hneuVd7AqG/zIk4mzp006YbjwOb0a4eLALuBOWXEOAFT69MGIe80odxa7kPazoKCtNhvNWHJL4SXMqMckgValP8R3JN68WsIT7SzqiZ21Z0xCsei81JODV4McBPxiywhf5wWWmK0S5tmmxhxWrIkLOxGHTRVWr2xZZUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746073795; c=relaxed/simple;
	bh=4VX1lgfNlPEVejKP5PlNLV6EkgjLew1ehZmmc43y7C4=;
	h=To:Subject:From:Message-Id:Date; b=Wm9yuN2CvPJcIplXxQK1ehvG5o4rRLUg5TBqqwGBagAUpsYl7IbUSliJ63h0cQwhB025SbYNRy6O3nLuxEChNmuqm10abXp/AkMYDV1t3MCPXrzkhGtpd9EE4gegMY0ESCHvPuyM+yLLDQo984LYPyZkAXJrMglFhnYxH74zYZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKAJZ07+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKAJZ07+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E59C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746073793;
	bh=4VX1lgfNlPEVejKP5PlNLV6EkgjLew1ehZmmc43y7C4=;
	h=To:Subject:From:Date:From;
	b=WKAJZ07+fELKdcIDyjATaK0PTJINihXVTWVlFlkRF2iuVmsWIEUmdpO0x2qU8lApW
	 rvoO5uBMIPuwG1x5SG2IJV2pgMtbqHBD+JKhSkYRo9TK19vWvNcs4T+EFzYzW+mOhQ
	 /4pREnhfBnuTIrSq2D3l97YUp1Fopj+u7c3ouNtM/BtKK9SeyOHphAf1KPVf6hMhcK
	 pEJ7fUMom22blxMTFo5ssdz6qfG4QUiEyrK6CbNxuMY+v2lJ+XVLa65uEpw/mBY/FX
	 dTnMQCo5Mzn44LwIQujgQkNULG0YRMEMBem8NIUI5UUQG/wmfH1Cx6PyB70a69Lc3Y
	 BZY9k0SQFLe7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C2C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607379358.20761.4734001591991913194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d1f8530339d5371ed501a09557b67a762080ceb93d46f9423cff8da6957374
Date: Thu, 01 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746073793
