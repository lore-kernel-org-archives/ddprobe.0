Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220B81E766F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749470994; cv=none; b=lBc/pFd2X8Ut4Ft1eyFahTqDoV8GMTAFfYqqvjZTf44tlVjkOkHh7JzCuUi3X+czOgCjzU08m7Kb5OC63sUvUjOVMR0WOHKzjl6ClPs6M+GKGTK0k/w+uJkONE66mAl9tFaFWdj1SNpu43NFs0bt53kTE1/DKtP/otPiPq4p02w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749470994; c=relaxed/simple;
	bh=Ar9Za8T8evaV+Fxj3RIniC7nx0pWOY1pcXdFI7W+seY=;
	h=To:Subject:From:Message-Id:Date; b=oRuf+/kz/62Dkg3eJGQe6pTSV/VWL2dCDJGq1s3YxW3gFKxkP/IWrhqYaSMZrmtWH4XpLGi9UuTwpQUgkyKS3uz1/P3BGmapEwVSknf3fAz8s4qVI5Bd0xDKisI3wCR6t+Tlu7+dBa/xxQLN0ob2mxUhVqIR1eVPdpY2pXgj9Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEv802D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEv802D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4922C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749470993;
	bh=Ar9Za8T8evaV+Fxj3RIniC7nx0pWOY1pcXdFI7W+seY=;
	h=To:Subject:From:Date:From;
	b=lEv802D6BMcbtleGVwRjCjt5MZ/+ZlLFMMLmD7DAiBzK4shkIJ/KFOnpT3P0nkv8i
	 lYanZkKX4uaoZ4OmNuzmapTDuhtpdyZYZeuOp4naUcWlIEHBLII4TFEEIaHoIIy2PN
	 MytSXiSoPq4bD0W9NSQJRfMNivWDv205RZrhaceQmbxPI3LdEaa2CyA57MTwruKc8p
	 FgNITKDYdFESZkpLun44ZVSX1/tI0q0nuoqfPtHTVkUiH3wKccpbsTD160OXDAOxMp
	 QdKw8S4Kct+RYzkuI36QZ3B34CW1ibvryPcKkP1HtyyWd0SlrvoD+P6LwC4y2r7iq+
	 i8v/n9hG/U9SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E869C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947099357.25322.7980479902900498146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3947272e2bd87486213f57163281c92355c746f121e69768de46e19bdadd4b3
Date: Mon, 09 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749470993
