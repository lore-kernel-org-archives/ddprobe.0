Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4161F3D56
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773028494; cv=none; b=uRjUAa5wLMfypNr5qYfmtiOL2JKdQAteUJlFeufUEEWsduEKBp7HTivWQWb3Dyh8lGGjU6q4VtPWyWZeLZTl8ZbSsE+MB7+UTuDhXrcmYSBIExjxTmQxQd8m75NJ+C+fFGVBcabAIDJrtRHUunch2IUvX4lDM7aL5y5CK964s6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773028494; c=relaxed/simple;
	bh=xrcBXM8/3GaP0AjWdW8nAfkQ/WFxJWuo+uBZNZAzu+I=;
	h=To:Subject:From:Message-Id:Date; b=dRUbPop4gIINiebPekhb9K9psm9vMonBSF8RrxG7dDIyGKZJYvlSv5DiIzZG9dNkBi19i3S5aLPG2dcge3F8hZs5b0L4/ejImYNt+36CW87mAc9uexQ2tiQ4KJio3hOvssVLLgYljeuubDi58HoT5bH0UAt3B0CdZ4+CQT9iTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G26rhFQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G26rhFQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F2EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773028493;
	bh=xrcBXM8/3GaP0AjWdW8nAfkQ/WFxJWuo+uBZNZAzu+I=;
	h=To:Subject:From:Date:From;
	b=G26rhFQ22liw9xj98gd45VbrH5pychWRxUMNndHiAHN59vE41AvfLrhVvfopN4QRd
	 tL9Sasett8UHzklKFou7dW7LoX8etqOh7bysGvJ/RsbODdX1NbYW4O8LHdFnVF3xlx
	 WHwioqibFrI0Xlxa+5wgxY2BoE48xf8o5A/rStOv1ETEV/vgEtwbgPJO5vrS19JYWp
	 Zpts4mNII56PMr8yi+F/K0+bAQOzcHyqs4Kllaod1UpXhzbLH8BtjKSJdxLXWDzcuy
	 13X7lqhMixlB0JfvERAeKd2eU13cyDWtyXT0vwrXeuMHxTN87OVt9OdN8CfzD242ev
	 Jw6A1A2p3Br0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35CEA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302849357.11143.6333869832421155383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f48d9ad4658d5f542931d73b76b2ed4f55124d4c721a6933954c7b14e5b976b
Date: Mon, 09 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773028493
