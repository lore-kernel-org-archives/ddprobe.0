Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694F24BB277
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790070034; cv=none; b=AdZfkhEy4faPivxdDgprko+Tzw3sVQPFPw8uf+wtZRBI4yKjlan93hQKhkPf5LtEErWca2b6ngv6XNLfvGB2gfcWDzYj3R8X08kfFPDtef61mTvVt9XChDoYPhTGG7SOu9bDXHAKtNcRhyCDaDksVk1U9S9HF+4u5mBlOWe6Fjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790070034; c=relaxed/simple;
	bh=5NLSPFAAcJUs8xEXhrFqpdc2UlPoLZ/MsLqyIPZHQmE=;
	h=To:Subject:From:Message-Id:Date; b=X+fHNRBDE9r2a597vE8kOiEd6Kt4G46yaVGB0W+IibETm8BuBypdNkBDgZDcj97ldosJKFnSXmbtYim06mePW2ZJxmbpc4NeRER+VUTeznSaoRjnz4x8DWsaHW9uYtCVGpx59nUGAC9ATA+xRbteiBdhLKH937PkyXCSZYvSFYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbc9TrHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbc9TrHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59E4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790070033;
	bh=5NLSPFAAcJUs8xEXhrFqpdc2UlPoLZ/MsLqyIPZHQmE=;
	h=To:Subject:From:Date:From;
	b=rbc9TrHpAKOhdz3XUT4Pt/DK+Eb+Us6coVu+AGycOLiMBXFmxPuYOI9qJNSwaxE7o
	 TGIrFMoupnQ1spWFDTK9dZE3+XgDeKYh19zCEQNDbtfTy4TUY3QAHRDxTWGLUsoDa6
	 QL1DR+isyQUHKoImp8CwBX3wQrQOU1QQKvohHEtaR0Dea7ii+/Ws+KC6de/9xUTdCV
	 Ec7rLicSBvJDTXhc6W+oxrbf681YXBNguk3s4Xv7g/7lTsNnT8mfXen4XVkzSgRMe/
	 jy7iFOYpnQ9hqmNlx903lPrXBSNhiwkW2pw86p6FWqElO/Aa84O0JJGShQUhXp+MEX
	 vgF49QeEQDELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7DC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007003369.30715.1849929618035575352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ec92f511efcfc8860feb9d26e3e91ccf0fa0f789a112eed30a1450bdd67bc9
Date: Tue, 22 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790070033
