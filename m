Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD611C9B87
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728618955; cv=none; b=DlTFDd0NdKFBUgIcXlSdheMkR05dh/ttSb1TpDkG8wbi4QJU68Nj/BXKAsL0ypKLbhvNiZrd/D4atdooiLdZIwmFVTduho/QRTdKTxcVDi3YBxQaStQjtP/VHU+xuZRw6z5TOTRsWEJ4DFA1Dtx2OuID7Oo/+ElcSEQwl8qJglw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728618955; c=relaxed/simple;
	bh=SVvQ60KyiK3+dnNyR0ejprOfUjmAgeNaxbHeKaZJ+D0=;
	h=To:Subject:From:Message-Id:Date; b=XY/biBfjodoo3TOGaa01GMEloAIDFtgOSYjyJ9ZVlDyfO4xfumBJ5GW5UQ4k+glRIQ+Z8q0BoH2MYWWhEYXik2MygyvgA9/CbsyT06jmmTJAF8V30vOgCIU0c2JXklDlCgBXyqYWIGNM7w+vaOy64pp391XbpTuAdxLUt1IMKpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKeM+WyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKeM+WyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957DC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728618954;
	bh=SVvQ60KyiK3+dnNyR0ejprOfUjmAgeNaxbHeKaZJ+D0=;
	h=To:Subject:From:Date:From;
	b=nKeM+WyGDeY0LKIPsnH49AqsS8hAOWxcd1nbfNNlAHBqviLLIMcS8/Oyr63hk+5+h
	 5BgAoGnConyqFirptJMW0veYN7joK6fKGta9Dx/OH5PxMjOynFh9mGucBEGxOrVgdE
	 GiXAw2MR18xVDM19AxhyQCVYAM9qdpSnUHsOZQCFZH7Jn27beo35a/Vnyd685vT4Hq
	 0EMTn1obQ/Nin77ArCwLk3uWkHtnlnJAbqwfayVeDTQXWMfTXQ+5v5K5c8Yv+QvtMn
	 0Q799/FpDZYqBQNeORO4Ay+wCBzlbijy8ZqsykMnlK6cImANJGYBBscAssAtXGp1xY
	 zvYDs/SOWEACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94227D2446B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861895359.1701.7152418192894407783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9960627f7e752896b651399caa42e24f5769d4f289293c87b78a78fbf24c6f37
Date: Fri, 11 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728618953
