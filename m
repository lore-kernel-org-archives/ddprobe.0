Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCB23B6C13
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792188634; cv=none; b=mseJmsWchG0kavJCy7sT3ZH2kpPcFcuXCBoxmqZvaBOp8Cm2t3ie3qL5KfiE40C44FxFIoWvoqrrJXtpsAHM7PD3SWvxlZ0M1yYgoFKdvd0oXdE/reti/nQAggz3Nmbtcj75Y0kefLoiKiSBV1p2s2f7bjczi9HXbJCg1ZEb+s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792188634; c=relaxed/simple;
	bh=QKDbtpgo9oUs4yMNCG/Ja4hF4m5LVFbBCKzcwg0Ow+Q=;
	h=To:Subject:From:Message-Id:Date; b=jHFbl2xXLCZQLWnuMAdIsLh5nivvndm+e46RLNkaNTVsoqMMTBcdTcc7H+BSfHaowzm2jSxBa2SQsGq7r0A4VdxrqRLa/a4Y7pCpzg2xNsmQ6xr+WZTwbg9He1T2rvlvRCfzrHw/isaA0WM7sPF5PpUr+woZcHGJeixx6lgIMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAc27Ydj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAc27Ydj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D693DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792188633;
	bh=QKDbtpgo9oUs4yMNCG/Ja4hF4m5LVFbBCKzcwg0Ow+Q=;
	h=To:Subject:From:Date:From;
	b=NAc27YdjQ12bZgyTH+ZWnD2B4UV24ZVJF2+BaujfgPuaUhJQPjtfxI8PMvOdYDYpm
	 zMVczWZrNKMjXJmIAX1Hgsxig7O85iBR0ro+K3K8kTEmgawP7Q/UHSfd7sqil8ngag
	 Ajv0+3cOtMwyKtg7nG2D0WI6Twyp2DJqw82czfzCbs69nw6td4ZbflpawoKB7Lxiz8
	 m9cdLKC16UK0RISGGh4tv9CkOgxp/WCh3RVSpqRuxQUiuYAT7KufOThtEzaCHLWf2U
	 z/rHDC/idmjSekR4yenqqAf3krPhOo9HCgkmn5jpV2be6mGyfUVZAqwqBkZpr21zQ/
	 r1lUsxoSxiRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5B7CCF2C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218863370.22499.5628226498081193227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30399168bc6dae117aba5b1a572137a46e6193a722bcc38ff2e9876d36cc6c3e
Date: Fri, 16 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792188633
