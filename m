Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A418828
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746931794; cv=none; b=nlqRvZjx629nB0XBi7RyHf33UlGuRAWU2BAUUYKJE0k10vDE68DGqMvf1f64iau9Al+mlseERPDi3sxx8tXlehHF06sqnKNvtSBKv50a5hvEb1Qx32JAy6ZY/Mn8LPoSPN9D0VusIs79gp7i5fJ1VCzQEEInrjKkLkX7Y1t3Ugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746931794; c=relaxed/simple;
	bh=Greyf0OSsxMPNQFIo3FrR6ZuOEryEebZSpa+XmOQwkY=;
	h=To:Subject:From:Message-Id:Date; b=HG6EvrSGov5ealktp2RDUSZ4vBLO2MvRtITYicWP82QrQ++riMq3AsKiyv2xOjfh+mSFx2aCvVqTdYiZ/ZfANJM+5ucFk8WB7+TnuXEd6W5Xh/47cr1vKvEUkGt3U296BsVa5a/5+a4bbPl/aSx7+eZ6RrxcY49C9ECd/PFjvdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCBEOlHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCBEOlHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A867FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746931793;
	bh=Greyf0OSsxMPNQFIo3FrR6ZuOEryEebZSpa+XmOQwkY=;
	h=To:Subject:From:Date:From;
	b=NCBEOlHfE9OFo8zXzibY58nTSDaS8/Eb59/YdRxPilx53yk/uESdOTkqgRfGUMPDA
	 bNG1p2CBXUBco5vPgwCPMYQYNLssFKAEXF6U9H3NRjgKfsAQFhnFuo7HAyNtVv4Qll
	 DLLssqzWPIAJJKSalD8E6ZojPFtpXL0KJ8KBLTJKNdlLMeDpndRpJneVyeeRB1Yp45
	 vkBJ38gnyZKs9zcD2FeQ5YUby0LFTvzyRLOn/z51MSBaEpirxKguCIJ1fY4sMsZ7/s
	 ozykMoQ/+52Jw5yOqXEnPySf8p7hU5cRk8ywl3AcOPhZZKVAz6D7bQZ+zpJJDjVAkz
	 MauJG1rrr+BNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94111C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693179358.4151.277084020273102010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7524bc2dad1ecabdf8e7c39ab7d1c96c00b325b17b14262873e9941c0e1bde29
Date: Sun, 11 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746931793
