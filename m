Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7153E2931C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789878634; cv=none; b=m2rwC9J/JzF443C3iSetIeMDsIXUxlGNdMET/Ym3DSV9/OBsuOq6P4zWHyb3EsI/fcbt8YiQ4X0jrFdgAZluwIgUPn8T24VcwzH8p+t/qvgwe7nG2SySJtxu2VG8xiGXk1Qw3Q3+yccM5AB52PIlYDooZPKG17IZnP/UgmQGne0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789878634; c=relaxed/simple;
	bh=E38aohupJiK15/886KcD3JOwFyTomWqwCTdLaIHr4v8=;
	h=To:Subject:From:Message-Id:Date; b=iqnA0aicMGRzbh9aKrP6l0HUGwx4try6m8W1jfDWguzYhsni+qBVCuTWgcVOvq248wedJkPydL+gXwMQAghxcCMb64u2q/r2rFR167ZQUkdWSVJ+U/5g9qI2CMHlj0ZJnhS9lpL09rKtmB6uND8yOERGCEaaIej1wdyaMNwlRNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqsrVz0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqsrVz0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82AAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789878633;
	bh=E38aohupJiK15/886KcD3JOwFyTomWqwCTdLaIHr4v8=;
	h=To:Subject:From:Date:From;
	b=mqsrVz0rWi/ZjD5uZXZJNEew3/Lgi8DCL54HBe3If4+l2a1OYQ8DQgHrRaffDRGml
	 BywfRC9N4Vr/nxjOBgteeE7pb77BUhfFyBRw4O3VQaNJUox5st8AcjUj1LJwT0kuLw
	 7xGExvVZv7ozR9/tMTmMRHXUg5YjiMlziWDR7Fnd616lsBjeExp1XHtoDCjQ1qb7/H
	 SZJKFhEEBwVTJg6iYHISRFQtJDK+YRr4kxKgXAaULKI5JDPFXSsoCQsHMkEdAplIwh
	 U32HwuTR7gCb26A3vVr6QrVPB0jZwDWn2ks58ZB8fLMmotbm55DgJJpMnXuyVyJDjc
	 V2wrIbIGYGWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF026C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987863372.2653.17432966541767426416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49670c7675727ac5d5608fad9a84549aa0d448bb8d5093fceef6852167fb07e
Date: Sun, 20 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789878633
