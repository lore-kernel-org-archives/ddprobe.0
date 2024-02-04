Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1445B38C
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707006497; cv=none; b=Se7GQ/UDMemVOUHvq2ORBkEcxVm52waPa/77SBOU8jLVEVWYNpzszF2ZGoukkVCCc1tC1jPS0TXRG2gVKCPibixookZqYhYlVfrxDA60Ty5ptHprn8rASUX7Yjj97Vc1QIO+iXJyTUfvDeqt0EWwjSk1icxXkPwQH3nhq0Y186I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707006497; c=relaxed/simple;
	bh=w3aayuiXdPY+ssaQ08SL9p62jq1c7zxr2sQoi5UWw4A=;
	h=To:Subject:From:Message-Id:Date; b=nGqULMZkPk6qbZsMgdVdGjJZZLdmHd1qEqJntvhTI6m1Ks7XuQQC4firLl5UWWrp2jVMAwp4NVfAdx4WcvTlK60UBEm5w2ABKR45HiiA/TmiMJOMRSS9lxHqKSqUVu2pXkHjdd7DVDZFMmRLLNbKRk8a9De9mEVAdpFD8oDZVOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR6FD6/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR6FD6/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86495C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707006496;
	bh=w3aayuiXdPY+ssaQ08SL9p62jq1c7zxr2sQoi5UWw4A=;
	h=To:Subject:From:Date:From;
	b=ZR6FD6/SaHH57+jXD+YD4KwomtrlTvbieLgIE1WjYLis41x25gvX20RjiWt+aUu0b
	 idhobmb+GGAfsFCsecKWHLygcAz/LKqn5pUviSlINw5cF68LF4/p+F1ijy/FfPcDxf
	 wRj1O4vc4wvn1pRMl8Vhjb5ojW53EP3ZnP/vasTfbC+oHoMNyrYbf4ALK8RUbxhy2f
	 v/A/bpMFbCsRAGdlnkXMxN67RvywWiaOQaTQms01NEqfsUsBu1OaKxrRQ3rzjM8MeB
	 QleADvSKkVTBp/Tyze69+1EXsgCORE6pA7XBmoyrXlZnCe0icAcUB002yD0P11QS6P
	 XYij9KwTLs+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A0C7C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170700649638.1019.9744161208235079661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12672d5c16164b8da1fa10720868cd7a1589d44a79c9391655d4008093c74458
Date: Sun, 04 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707006496
