Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250FD225A35
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759043394; cv=none; b=SlrhdjKnZVRMQl3ymFx+hMbMxyG7ylye8NfKhizaf009dSlRCW1UDGdVa1KxBhinI9xW2QxvXFDQhwvxj1ulxbRMnn92M22mJhh1cvgjBB0PaTCSexfoCb5DRyQjTxPLhCFp97o30+HD9yCSL0XLcii34Rp2jK98ZfH3p/t1LHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759043394; c=relaxed/simple;
	bh=S/YOmjHC1V+i4e7CyjRFD3Q93Cxcm3BrKgV1TmUizcY=;
	h=To:Subject:From:Message-Id:Date; b=f2dfhFSAaAMyEFL57Fy+DLykgLFJw0C5/F2G5GSnmscqwePsUtzTzEIB1Aaig5Dheipn4Qm996hiyAB9kR31NJX1rX0zdrKc6gEV9B9PnPsnqae5HfNoG6Y2alMHGUAyM5G24rbzoXeoUcNOg6Imnj5+xcszQNf8FgmpbiFGDwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDIz/rPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDIz/rPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B05C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759043393;
	bh=S/YOmjHC1V+i4e7CyjRFD3Q93Cxcm3BrKgV1TmUizcY=;
	h=To:Subject:From:Date:From;
	b=VDIz/rPGlf0sYAfOATWUFM54P5oUyDaYS2BHGH3aZLd7CaLhJtxzw3jliEieRqEVu
	 uvTzwISD42B4P2IbLhs2YHaolJhcq/fMA+oK1gG7oIaO6L4drYJSsVUdlqx4wv5guS
	 cko2bmTxUrDvzf5pNd+sciq5JGcccofdod+54FmOFSGnbuboc7MsUbHtEq42jAeKiW
	 Cs3a62Mp34QKt80N/F06pj2tR2I0g2VU6Dw/V0/g5hCL3WGFEYS6VfH77zqnAx0tva
	 mPR291BBxy+J1QuvjP8Ts1kFOESmQ8YdyhQjpJlDfxLnQXHHadTpFhmJwupuLafgAH
	 b1opYzOPWcRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93122CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904339358.15818.8184945038872883238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752ec336b0c5c0b1b9bb1fb11b75a07403b58f8843caa399f4e42758b47f058b
Date: Sun, 28 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759043393
