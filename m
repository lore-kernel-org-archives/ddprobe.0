Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29615EEDE
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755565795; cv=none; b=HKgK66XURpAeQ4pMDHpc/GWBIEU07fgRd64tu9S0neTgq/yi15laQejxlTI+dR+wjya1x4pTAR+XIGOXk3ySYKXN2NoRWzPnX19qh4Vvp0O7HOEQGg/pSxFahOJyANEsF8B4iX11wrvpyJF8QkN89BN8/lhcfnsi15kLnWGiZPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755565795; c=relaxed/simple;
	bh=FkA65EkJIG1/1MuNkQ5u+3vdciE8O1NWnJsXVRUxFaA=;
	h=To:Subject:From:Message-Id:Date; b=Ol8EK47ylXGP1e9oaj7vAafaBHlUTDAFsXtAhv1HKa/3Paz6orXFUFEoEU2NsQ4F56HPXOM236Zrnhtr73NmgF8g6U70hdr3wi5MK5zmKMslfCrXbh9Dg/gy2gGkqBV+/25jzhKFSxDyaPAJaaH/SIjCK9vWOoK8bhNfQYWJPTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkElA0av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkElA0av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC50C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755565793;
	bh=FkA65EkJIG1/1MuNkQ5u+3vdciE8O1NWnJsXVRUxFaA=;
	h=To:Subject:From:Date:From;
	b=ZkElA0avVfllSStltofRL3bNFA0SaZZU1PTAkt+RKuL1/RXxTlk2XONigF2U84Ocx
	 NUFIaAcuXT4asUiCl1OFD1LstzfdCkAQ1ONB6FqylQ3ULVlZrLZMrNAW1gYcJj0l29
	 NtRRPJihTtGaV812BdSUfQcvTMO+XYm5Xfz6exl8mf+KVLu0Kk0PG/llMrRdr9hLky
	 CO3ffNEiWdYOPqDTegQWrBrFy950um/mpiul7we4L7OMrAe4rQt9dsrzJFfoz0LvLy
	 u/WF5vQVePSVKtbvCpe3oaqtNHUdhLE8WiwjvTExAFws3flbM8YZlfKlWaLy8eVWDd
	 o43xuXB1HqImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED82CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556579357.31597.15254056597422293212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bc2d737884014d0b64fb71f47884433d70cd3def7865d20a5b2ac04a509284
Date: Tue, 19 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755565793
