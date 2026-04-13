Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B227470
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776120454; cv=none; b=UKzMxaIdqOuLfYvRGpWO3hGUdTBsYTDVmjNiCOiuGmdN6+dzzsa2kYTUTQcPQnsF1FJ+dKJhphY56WdA0Ni+OLNwSpW/GutJ2e+7RyjWOdCn22DyZlN6nGhpepeFcvthFjRTOw1dwTavQyrAhHBtifHaxFlZFHpPvtLLsB116VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776120454; c=relaxed/simple;
	bh=rlY41LDWIVMNPl++pi7Wckt6I7WDoKUuM79m9ZYheXE=;
	h=To:Subject:From:Message-Id:Date; b=PSg3tMtbKFbtfbHaFY8+lFs+77YpcskDo13vMXO9CA+dwGlX6Ae4uIJ1iCoZErqX5Vbi7PfWN8SOfUTcjCykeliDgsKHPXm6XKM/ctFxU39yCbu8E0ldVtEJVVna7SiulZrAeDC1DLub6IA0LqGaHDlz2PcyFNUEvSoZuhec+Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fny5XSzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fny5XSzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1CDC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776120453;
	bh=rlY41LDWIVMNPl++pi7Wckt6I7WDoKUuM79m9ZYheXE=;
	h=To:Subject:From:Date:From;
	b=Fny5XSzpscCUSYFaLQoSqTpGPPswaJW2/9vt9cQBV6nvDT+oURO+8q/6PbRwVFICl
	 7OGcj0yoVEqUbol9UzQxmskl94cx777NGSAq5i+iv0ekjg6GSgDhO1w72/Mlk1lDwu
	 4HOj9uyI5OAL07eFDvj9FJmpEnsLcINAOqQ7qEG5PaG4tvLV2tIGXnlDkPWTrzs1YI
	 10jb9X/h+kLr+XI/meAOkTeTyPD1fbkWmfRsQs4u24+o8hsJWkqBJxxJeX8Wdlc93h
	 ImOddYSYq+yYElKteyBiCJ0VLRCRYTZQBXha0aQRkrRbaIQvWO89+WnWiF75BwRSBo
	 EsDG+OQonwvwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A7F531DE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612045370.28681.11267599198876844756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef76d40ea11cf9d2a24ba0f8710507b4dbf9028b301d1a1ea3332b4c2e9b58fb
Date: Mon, 13 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776120453
