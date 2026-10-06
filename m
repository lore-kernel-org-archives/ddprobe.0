Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1542F7ACE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791316834; cv=none; b=lb1JhkOmT7fENa2ObHy7wJv/MmLNhv2EIco9WqerFGEDdAbz94JoRUiRFw98eeusTGVBDj5MbLN6D+M/8F1yQhTvVVeaOfsTsFO7aluNFMscc8igWstfk/rzH/DjWobjZMnOemnk/rohMywOPRYz7rO1Ur0fCawddDSiSYQ613A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791316834; c=relaxed/simple;
	bh=6lzCaO05Yp8DNmoZSj3ZjMr4Xzp/WzcSP8tCuU4IyNQ=;
	h=To:Subject:From:Message-Id:Date; b=e8MbBJsZtTqRNyJ+HTN/NRQTzMRa0COGDJiscsSSnw2HQ0BoE43vAZ8uwrkS50u6lPkptP3aizzEr+VgFxaOrR32mIwi9q75064VKtRBakpqaADHbSnocJuMnUoWKIdzzK8obsf7FfTSr9dFy7ihNAH0Vl04H2PynEypv1Y9iX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0SHFoTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0SHFoTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4349C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791316833;
	bh=6lzCaO05Yp8DNmoZSj3ZjMr4Xzp/WzcSP8tCuU4IyNQ=;
	h=To:Subject:From:Date:From;
	b=o0SHFoTmZwA317FNl94msKWcbcmVpvR9UjSKcGoV0JM9z2fT/My7nxtCrbY6moBmy
	 h0mssLYDU5JD8Pt/5IhsZHIFqap/N+RP7yzp582FOJEGVnaXw+bBIxbTOd6HknYau8
	 t1xUDpvOYEzo5geEn2t/KcuVLbMg5nmI8nFL+9wfILKlK97Q2Ycb5pXVNTT4x65XEu
	 ogboIcSrRtqOCJO5TMuIJT2XbE09zbCZ/N1BzBloVX4QBRhnhxUU4aC3Kz8owmDRVB
	 nu2pG4Qduz6fQo+16HYa2YdGbq/paPFathGfNCpgIJbBCTpQmJFL2pAYwqIKBocOTs
	 q/QG6ok8o3eTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF934CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131683370.380.1632276570640660768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a93017bb004fa6dffd8a9db93c11c93cc0aab0e9c6f268c87ba469ab5b15a1b
Date: Tue, 06 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791316833
