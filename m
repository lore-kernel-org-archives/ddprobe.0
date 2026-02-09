Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A475134CF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770617034; cv=none; b=Q40KWbyjA1rjZhqgJd4pW6bCUBA5T1Id28JEQBMC9DToiT2PVG9YgKegVWdVC4T4u6bjRX+FE0Zu2NB5DNo2f0pALCE+3fUzRFVF5+L1u2YKuadDg5+lTXRcsmSPRN2u736iSagl24kZwBuWtEHzf1QyARw2bOKUF321o9FG5Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770617034; c=relaxed/simple;
	bh=Zl3RZgDCVUVsip9NOcfnf17k6ksehISl2+EJTuVl5/s=;
	h=To:Subject:From:Message-Id:Date; b=kIz6kmsYwT/oHxvZTsO31daJnwtaXod/PkGAIVZ1IgNTfGxydq6ybD/zkb2BNKjAxOxf7m0SZBY9w+XNutu7S74GIyZsD7dRyd0gTeFwQeEPqr9MqqEiJG763cFisjNhMFpvlCe5phFrC2i/S2UUVUb1HqHaykwWsr/FcUnj3+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFZH27Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFZH27Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45B8C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770617033;
	bh=Zl3RZgDCVUVsip9NOcfnf17k6ksehISl2+EJTuVl5/s=;
	h=To:Subject:From:Date:From;
	b=sFZH27PcnoTW2Xn5zZvLXE2ZKM5A7sx/0Zbl1QSnwKOuApMT38kdN7fCbEIzVTtfC
	 BjlLEg4rkcNp9B3nWC+xllpn77GLt5Eue+LhEQdvaiMcRcfLp/2eR2DeTF7jVIIfqC
	 LnDv1M2772LXHsCgyVhK6NlrMzzMMoYoj4YuXqJa1hoN/0WtsY+It2S5uHp4/DBTuT
	 wh5KWayPszITNmgXg0D1SfHJaszFa8QspEUnZfn6KfUiHFyv+ymsY0rtXJzxHuBycO
	 S+fHSTyz3zXKaBC9nS4oNfsi6QlJLvSwiJSOb2XZ0S7deMIYYpJtIKgj4gWTHKcaS9
	 PSmyifDZkeCwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD0CEF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061703366.15847.2362555111686892518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcc3cb09964f89126a52e6e8effd8e1827aea0d536d8b37ae626bdc7ecdf1a3
Date: Mon, 09 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770617033
