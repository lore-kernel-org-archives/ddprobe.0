Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DD326939
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789279234; cv=none; b=lGEGO79QiwVXbahxFS5GcRkTbr8HIwJ6plgFbtalX6BeRa1Z+o31r70hlO0wsmDJx5jQ1aLPpF6Uo1bPr+PPSXmcSLGjWPXusN3Dq+XUzxu/vycY/wTDqVg6wSTTVwdZh8lKl1/mNhhOHsE9loOby0ffSBA/MACR1Wumf1uOtgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789279234; c=relaxed/simple;
	bh=pZ623dcXDaVTYVx4Q971Af167i5UHL2gX9VUiIcSiH0=;
	h=To:Subject:From:Message-Id:Date; b=D/1FKH3+fC5k//nJhlsaN14GpHSYQqarVgD4pr6lKlVrtumslAuyZ/LulyAqRelhhRRNY6ZMljYbgxVEqEiKSQSEggxDluO3FihsJm1ch7YOEhgO+063IOx0dVCT3Gk7s1rEWGZFDSUx/ckujlfac7obMeSQPD6V0BsMuXr20iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvcCeNs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvcCeNs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD12C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789279233;
	bh=pZ623dcXDaVTYVx4Q971Af167i5UHL2gX9VUiIcSiH0=;
	h=To:Subject:From:Date:From;
	b=kvcCeNs0jMne3Eh9eVummuEPOHBChrXRFP4/PfnAaC8EQK51a746hoZK9pD4VPukk
	 Xkd2ZaqOkw+phlLSdLEgBXfVe+BL0xbEuXmvix6uXbNzwN/NIUvSUFI6mEV9Xrv78i
	 E/BJ6AidXDaAvEQgLMYx4xT78rbwF4pZafiV6BcwKl5rFI9H2u61Bes6dWRtZJehYU
	 VmrEVPa42bZklQfxjC0LD2Aigz0TKiPZGaD/JRz1SKk2CJGAjO9r0SsRjANEhzYjpl
	 Q8XKjwJdmUDxTBwT8eruQVdq2Z+MzorWSzJ6x7SL5TTrsHsxzY97NFLDX6WibpDl60
	 ZZYcfZ2eJuhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8AFC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927923368.18831.1882733863298515650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab1135a2b7fbc47f19559c95ff2fa3c1bbbee61df315343ec07047e1d050f2a
Date: Sun, 13 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789279233
