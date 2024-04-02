Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC1B657A7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712056697; cv=none; b=FqfJ+qAatnZIt1LMAN9IB8BAgQJKWYPk3VPzSXCYzo1Q509D9O/p1EF31m1UB+vbBe39nbsFIBURztoNi6PklWCgt4qQAiIpXPYthJGXgF0lfSPI2vxUhMDQZyeyq1S7V14+HuOqmUiPgTD2ohxbo2mBL+B+ZXK7Z/KbkWOqdoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712056697; c=relaxed/simple;
	bh=S5pPIYWj9PmH79vHKFrz6kpAlUJk2ZZP5cYZ0COK/68=;
	h=To:Subject:From:Message-Id:Date; b=VeoA71Lp/G6x5IL6ANmaEaQP7Pn5RjKuF44GawHOS7VuNpSSVzDkZrLFP6yyXkwj2FHYaG2aXE+PMTXgr/377ej4taX5u+03R/HseOk7ZxmdfHe9ry94ROV/50tRfg4zeSshj82Y0tM8OEEg12dfAMDMHP6+Ynw/wNn6ma4xkW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8DBMyJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8DBMyJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2FEC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712056696;
	bh=S5pPIYWj9PmH79vHKFrz6kpAlUJk2ZZP5cYZ0COK/68=;
	h=To:Subject:From:Date:From;
	b=R8DBMyJEIfdCVaotjoAVyFXx2ICg3Cy7ONW8TvF2nPQHe7najbot7JegIasgAFssD
	 7ERNgtRHRQUEUVkoZSDk8SZsCjlewFb2JqPSSTKVplZ8eXSiGVY50WPrbi2eXod89C
	 0m9faf1JvcLYirdgeTQUnNHQkUZBD31PppE92bjtdhq/r4T04cqchEmP3UKuSX4jvP
	 jN/fqRBKQTyQISMxwiq3EMxD27gxSSnNgMFDgR5K9od9vyvbakR5oj1aSThReqhiVY
	 owvbP3pa4Nf0oQnrc9r76JkkdxhMkoCL9mxxIgAiGFUfYaCYEyyArXorrT9EjUGEGe
	 LHJDl1hayWstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B5AC6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171205669641.5640.6454418070949421121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35755514615ac7687e46e662d71b426c6c834fb0aa710b7c8b9f2ee9322fd2e4
Date: Tue, 02 Apr 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712056696
