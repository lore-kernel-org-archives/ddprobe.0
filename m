Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214023491E1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782949714; cv=none; b=A8dhcxWm+4qWdkU1X2v9f37giSLA641Gyf2S0nYszPWnIsKfNPFEDJZPJ1osx8ef2UnvnVHEtJT+/GBKp3sxKfKTPpiuBCwGE4//pD2OhJMJwoDviWCHhNMxFxx42LxokskDPoncBY9HgUvYrcicCseBsZe46bDSrgpM/ySpPFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782949714; c=relaxed/simple;
	bh=SESAjGBddssEYSkS5XDuzo7Iwf9+9ML+3WMOTw7ANHg=;
	h=To:Subject:From:Message-Id:Date; b=RO0s7QMYtsZ9qpJYiZ3L2UYmQH0VxP4JEGa+tAsu1vqXj+doBP/MLRoCVHV8SkBhGQf+UgBi+VKYEVJobz6iZ2OXO8qdcgCbhjha4u3FeLQxjfSDeY3CqXCHxNl8CUyjM9VB0EH79m5Av0p3lJpAjcIIcIE07FSrSf64a3qVXkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOwKfBiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOwKfBiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BB8C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782949713;
	bh=SESAjGBddssEYSkS5XDuzo7Iwf9+9ML+3WMOTw7ANHg=;
	h=To:Subject:From:Date:From;
	b=aOwKfBiWxYuBdQpPibXVkyXivGCR6da+dAFyUZGSi0D1zinPIiDpQkjhe9WAAzooD
	 H+/OCkFjr/qFYfo+s8Nz8o/hgsk3Qx5trMrMKsqvj5k2zHbZBQRf7L6yVJ+etiL2Vk
	 WTJccJzoPevcGBbvxMe1kyjmYWC/PSLSoq5Lcvp60ET5nqGEkGHiKYJVRpQjVI7D98
	 aspxR1DTM/8xNIsGbdMwKFN3FaOyVHnx71zU3tYvoTvHyzFImZLL9HkNyp9ua18LGS
	 k0mLf+6trACUdKLKVqXlPZ8JtaTWInvaE+xv4E/IONhjrBEaMZG9ZnxZi8cbH5ehI2
	 1E3XH3Ahoq35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294971368.25972.8733071321789083304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee2ddcfc29cd21ff2f1b9cf7dac1fe53dd1d3c5fbbd370afd635c5ec7936a4e
Date: Wed, 01 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782949713
