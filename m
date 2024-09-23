Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DF43FE4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727054754; cv=none; b=MaBsO1CBOMEEctSPVvVeYXJ90XdU2JH+18LpHxslSBL2Lk1CMXN+vFctPIFzH6VnRXE9Fbm/NI4eEdD35CVP2N4qBVxuPgGbvQ490gSS43IPqSN+43TIZHXSDoE2NC/oFlQOZ4KKI/HUguuUOr4c3nONwH8z5EvgowQL/we1/PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727054754; c=relaxed/simple;
	bh=2tqY7ZwxfKFWkpf4p9R00tuYMG0jrN5Aer/RAzOnaLI=;
	h=To:Subject:From:Message-Id:Date; b=X5mpNfFu1mSDVvJlhXESk40nQvr+m19k+KEdgttFFGvcPD0Gx8pQ5zh+aSS665IfxehpHYYWUqJOHrjcvzd9i6FtYYAdt09SpsaWCM4hVX8MG32EwblGuoWWvrUl1PZZL4Kq1V6EPKEeu0DLRdvX6GMeVhCYQ38qrm4XWer2L0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWFqCQO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWFqCQO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE8C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727054753;
	bh=2tqY7ZwxfKFWkpf4p9R00tuYMG0jrN5Aer/RAzOnaLI=;
	h=To:Subject:From:Date:From;
	b=TWFqCQO+lxOMeZr4lF4jpCGyfqDiC1R82kYTynQ82w746TZBD4+KJm6nc4gcOuYUY
	 1nw5u1uvcfHrKrMYqaCNN/foxTQnlBeuwD2q8NfqQQZHDHQ6Wkyv2e0NIULYHFcKxn
	 dg/g2XcLZdcyySnmWStVILXY3W52RmoPRq/7FwDmkAWOJSD1bEKo42l+2U/PnPpxrC
	 xzbqmgcXH1iE3aIcB1pzo1gH6eYn1D44vXiWpYnmbeK0eSrp1dKwo8FIA7gBBNdjII
	 DfwHK0sd0O3/SFOHu24OA50F3+3UJ2Oq58TXF8Y21VGWQy68qvSIPNF1SIgrBHVvVm
	 yG3T9danTXe8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91709CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172705475358.3317.9248742473228532820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7568705469cbf54a97e967792b7f9b15d6a97cedc0afa716ed97037068e1b25d
Date: Mon, 23 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727054753
