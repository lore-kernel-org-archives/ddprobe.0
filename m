Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2895A1C862F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769330034; cv=none; b=HfVA0B09utTR9M4i/jFfh69imLAV3XrG+LgUeYisfDlx0PVE9ok7k04819/f4dvvJsfCy5I4pjx5u/8ktQrpYzIcBttcHNxqJwSW641LV1Caf0Pbfc46kWpTfuGLtPDhUNx3wyjL0RACmPej41mKhkzUosTKbiBQiCAYTjMPYoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769330034; c=relaxed/simple;
	bh=8hruXfc3LKkzfzDxE3FpWLlGpT2+opUXynF3p/4j32A=;
	h=To:Subject:From:Message-Id:Date; b=SMn03BhwTtHbeTErmd98+LC04UgGHsGkalKv6lTfMHBebylShMaS4PLLdJSEEthXKxruVDgVPpzgqWRyhBYcIo7iOU+4/8oGx4m7EwXGtNQ7yt7MGQhSuV0amwuvA6up/r4/T7Hw5AyfcjsZYu6rSxK2JR62DtiTlnA83I8jlU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f03PGjst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f03PGjst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEA2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769330033;
	bh=8hruXfc3LKkzfzDxE3FpWLlGpT2+opUXynF3p/4j32A=;
	h=To:Subject:From:Date:From;
	b=f03PGjstO785RlG11MZ3RJd4KknZmD5E1IZ91XrXCdIJw7g0zG+03ff4K3uwDWGRW
	 H8GZbcWbxyAma5Kxl/5ktc0fBu/c0urEfPiFoJAGz7MpRsS+6hgNPcSkhsCEqBm9W6
	 Zpnox20a4ARfqm93JS173QoHyeCcmjzWaoKVNxPWOW8d63ZCTDrBbEs21fQQV7+Gsm
	 /qnngb/SNDwhtTc3N3jfWtGjhhZh70AJRPaSFOhM305Zja/hKtuGfVNfhjVEqMaK9U
	 iHGW7moCjhL1Or2Z54DtVNMn5XrMGsPo8gFMYoAJsV1rsTZVXWeWdHSqbGre77RhbJ
	 E/cUThyk6NSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B2BE63C95
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933003358.13541.1687829462059916595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042820c3133eb13e1ee65bb78538bf0dd89b686f544bf7d4fa3612f3e810fd68
Date: Sun, 25 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769330033
