Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F782D595B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786338634; cv=none; b=DJtPhox2Dn/bFudMHOBFwXG4opeI1n1tLdvp0TYKYdJEscyM7h3ex2Y2j35KKmco8HyiEqOzHnF7rx3209QV0x/P6wMEGC87Zi8o5Izz9oBiC4JDdReB5VFE4Fs65TmUAMuetz6sxrxWi961EUy9U4W+WJUdKsRirdRD2w5cEVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786338634; c=relaxed/simple;
	bh=MqbliuAFnf6LMEwiLkRkUPbtOKYBMxQ3QtzoqcIARug=;
	h=To:Subject:From:Message-Id:Date; b=l2zSB5QgJfeF27Z99MtTBWMoCe6YjPxeCI089qPFB6yyieIIHgeU2EHMiPHGcrayZHQwC9j/dzvm6XOmvmOO34a/hXwthkLOj6yZNBn3wICAwEs4+zKF3crFZuxLgpuA339j9/A0xmMEl5iIKzaVtCurYSO5fAX2vjUXHAEkCG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbY8AtWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbY8AtWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC02C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786338633;
	bh=MqbliuAFnf6LMEwiLkRkUPbtOKYBMxQ3QtzoqcIARug=;
	h=To:Subject:From:Date:From;
	b=RbY8AtWAayQ7SNX8EmGA4ELgV9+6qfPaawtn16vENqcrkOJViBMxZojFMt/wi/g/d
	 i1dPpM3fSdCpJfjTTYm1eb1oH4eHNRBeBHI9RwmwQ/Mdr+DafEsZm3iSBdYjVLvS/p
	 GP2G9WzNSF54EWtZFjypz16Bd96EJKVxvOJjba8GPG9g8TpYte2BxeTLn+C2yJ/hiF
	 Es/vOnJ5J2Pu7ArnJvg54Bb5iNb63wTS/Qa2RfY9AtMjDqD4Hb1IgGDW1HprqV7/EN
	 ZyM9Xe/HxBQ3vjPPswmuE1SJOqpwWgCYT/F6B+kXE+60wyMR3Eo5ajDvHg3DPT1EJI
	 gvGbkpLKefhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB923C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633863369.7755.10058814042481284942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ded3ac45635866bb89fe8b86acb2c515b0190f442428558a0107371de00494
Date: Mon, 10 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786338633
