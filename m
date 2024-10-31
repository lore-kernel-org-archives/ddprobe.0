Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327FD84A39
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730343354; cv=none; b=NAqY7NXyzzg4WpcdrpKBvS8rvt5KNLzyJOVsFhkjd/ucUFlXAJOcgk57Kusz4dcThPHAqScokPCyhrWDJvd08/b6IvInGgDuNA/CfG3WTxtIMHUKofTwpLCzyOaS+q+5LwO1bxtrNmXrEdkiNQQygKaWCqC5hrdV4VNSpTiqcEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730343354; c=relaxed/simple;
	bh=CJCYCb7QMtqU7USploZB7s5xoNmF6boubfS5AgCYehw=;
	h=To:Subject:From:Message-Id:Date; b=oxqp4iWxJgN/hcX4mHMIEBwYoVUprM8nHrz55gDrCVci2izd8C4n8wavkW5TUyRvXtFEB6QRlP/usMybE13LjVMgytJb0YS//1qIgykMIlSf28r/WkhH0ARMDAsMjxZJR4EJJ9qdr0eNrIYz4J5qNdXhSEUhwpQa/ytAp8G8cwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaU+cNoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaU+cNoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F71C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730343353;
	bh=CJCYCb7QMtqU7USploZB7s5xoNmF6boubfS5AgCYehw=;
	h=To:Subject:From:Date:From;
	b=MaU+cNoREckz5C33gjtzDFtECGfjy5zA+yiw/TYXsF+Au9JTJ3qby/MaTu6Mi1vLS
	 iXByc1oUhj37f1+NwXJf9FPUyKZii3szSaRAbDP0c4HwSS43rJPtog2g5592j06TGe
	 YtN7KkyRU4wLlg17QIlzVnF9r6zCrkbobu77y057KBpHbJdl1LAaHd6LYkDalfHUMv
	 8pienhkBJ5fRoBNgpIp2FldHtOqRFbhH1sU0cuqjpxo2jc40YwvZXEuMRQupzLwQBg
	 2G+SAK/qZRQKGx7y8qm07M1k2J7waXQXDZaa+MQgVnutxaoFm0y37Sd+TzqOZ4Y/Ll
	 VqwmR7WAFJE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7695E68948
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034335364.28848.5495861848046405713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464456f79fce62af18b6889cadbb29a794db4dccfff934a068b1d86c155a6bb9
Date: Thu, 31 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730343353
