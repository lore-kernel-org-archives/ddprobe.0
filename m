Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D0145323
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732824354; cv=none; b=nT0fE6+DzdXZPqGlNTOnOkj1Yw0+pRSB1o0r8YHT12bBbKYXMlgSG3WyQglPvTxJJ6f056tCSAXx75RH8k5NEG79AAMt9WLX+AhfGnlSnQz7EHAXKG5CIevBbPO7a4aYgkReiIGb2BkrpeGMAg/cHx7Yg62yEDcyFicYsHm7X9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732824354; c=relaxed/simple;
	bh=JzxPD4q5j/UEacQnBA15N1GgWj4wrFT/XPPTxBOWPVs=;
	h=To:Subject:From:Message-Id:Date; b=hF+/ljIc5RXcknWaV9o0IZrRCADlnTs+BPPQ87al6OC1CuS0748asVDDkc9ItVmgrISL5yD3i/kC3H7xpqR+u9PKSciXMfNfYqCFGF7p4wozFyy3vq6Y0tgWHfVvChz+xhgrFCKSV82aLMNYdXIq8UbCRbHU62Z3FI8f7o3LB1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2G4ms03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2G4ms03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC707C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732824353;
	bh=JzxPD4q5j/UEacQnBA15N1GgWj4wrFT/XPPTxBOWPVs=;
	h=To:Subject:From:Date:From;
	b=A2G4ms03vlD5PAfc9w58n+ADK3Lc97bcDdlXOgrSRzqpdqsb852BYagQVETXkeECN
	 ndmv2+iiwE2luMCs55nlrYEKXbGxrQOHrlVfj9WH52JwZV620dLCb+y29AKgWjSCDM
	 5ANtytjmdV2PLMVGmV6mGQ3Hl37iT5GVloIcil9TX1dZV9kORxFBWwdtyCdLKUnyQ4
	 LgmVmk8x2EjbDlkQR7GlYBGqREbtvOhv8WtcCJgsgYF/AEJKCqbmKu0fBSpJ8iwiL7
	 mw0tbzmao7FDoBE9KnHT+3ykok9Bm4lTlj8luaFOUKUerij4x2KrSBEfsH1W31igXb
	 GHwczYvJneP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9457DD70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282435359.22131.6566416939359464901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5a1940c00e0436c2c70c24d6f08c2c0c120460739edad9df15b0417256bfec
Date: Thu, 28 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732824353
