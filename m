Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EE323EA84
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782114394; cv=none; b=GoWWyket4HPBW0p2EQXleLNWFx2DeB+24qDvxi7nwA8AaHqWeUban8e+8ZwLORlmxGLMU5veS007nEJ7/rTkAeLagu3R7zZLEsqJ5eC31a+gcbnBizv27+ky9UzMujp+g9Q4+Lu7+2ss6KgnxYxkCNa8ovbEhQkTRg1ilDBi3P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782114394; c=relaxed/simple;
	bh=rIvFD0VwYxlKfROJucoQDRr/rektMwLpbpDZm/FUxOY=;
	h=To:Subject:From:Message-Id:Date; b=asL3O6Y8lPocMQ3qOMx7ASgarFE/SEXSc/k/k4nmWPe+6T8x6haonllW5n/cB9PIFLWxc0YsKIW2JQLCbdSIc7w0u8GZZP5YGVh6dyzPDp1eUPk5wVeFnmWT/e+Rm+Xat5EeheI4ef77dEMJnWy7FVW0ldWiv9q4gc4ctWUAyF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWKc58+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWKc58+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF31DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782114393;
	bh=rIvFD0VwYxlKfROJucoQDRr/rektMwLpbpDZm/FUxOY=;
	h=To:Subject:From:Date:From;
	b=JWKc58+nK0EdpTIvUrQ/4f6y8fJSOLQDQJKJcOKnS00q5/vUrQbcTCN0lD8wTLBXy
	 JSFdsNqhP8ft2hotQczcOpzt5eKmW+rN/NucTx1GchflxMUQsq9wn3IV0TaOsnFm7N
	 XaIzc4juW3uQ2EU36iFSbebKOOAHp353fvKnl6+JzlryCUIoXsXIOoHGWKIotP2FfX
	 WaaLr2ftOXLx9aMlh9q0yHG1GcvOw+VYo02N1DQQdub4/li30XrcpdvfUMCxI88PXj
	 DVkt0rvUBzTBn15EE2iVq3ohS4Ypsk3IROE0EhAm72S5jQJN9s2+L9yCdWXnFG47l1
	 tSBSdM+svqsRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24A9CDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211439371.22652.7024831558110782532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b4ed0195b99f5bda9f3f31a413ca81efe85414db9121db647cb7aa363c98f2
Date: Mon, 22 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782114393
