Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381072F872
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746956994; cv=none; b=WH5SibhyFO/hvU4cjfl3d49s36pDkG1I+MQxcxidVwDzhX/krrhmVN8ZBsdBKPRDP/fRVsMYiMF7aPGmQu0yoE72UA/J5kq2fLW7d0uD0+ZhIks/7iXAnJ9bVNGG2E34JawIgncM1PsEkj2Je1l3JfhNpKgppppghsmd9vyylMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746956994; c=relaxed/simple;
	bh=c4jUWGY6MINoXN8wqUAcBIO/Iuz5Z1/sMRYNYwfek0s=;
	h=To:Subject:From:Message-Id:Date; b=CCcOSQF26yKNJaofXkCBMx1BYDaHRUlrWA9Qjmk6kC6D818dMbiOZ/end/WXGqUKB9MGztKrppcSQG0mE34iXHG8oZzyajkl0+UUrtpkwtEttwxW5kXklZaKvYa9c/KxNM7nrUXFrHlUnWYBwjmlpBw2eD+c/ghImdVVqyuibjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDpRFf22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDpRFf22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4438C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746956993;
	bh=c4jUWGY6MINoXN8wqUAcBIO/Iuz5Z1/sMRYNYwfek0s=;
	h=To:Subject:From:Date:From;
	b=kDpRFf22iXxvRT6JEtABDVTjAfey/N76uLg+21OTyh2ExznhcnJt7MsmdLxnbZrTo
	 KQiZq+pRhbhkhBV9HsJTx/rPkdilkjHw5zj4GcVZtirTGcpBppG2JZe70Jptph+2nO
	 rmpLHomA/dKx+LQb9lEN6EiJLYKbCgVZ8zmCeEost6UyJBZROcTp18u7QmZ5WPcFyP
	 WDElnH5bs4L66FW42kb8Gmmfg7kJWwZe85EIDisZ6KKLXIAFa+AYbMLEOPu9vE67mO
	 fbGdet0KMUU6Nu/SR70yP+eD9pBduYhbMpsoJjQONvsvployhKX8g7cW6mSB1REbXM
	 6+rYHIwJynI7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071AC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695699358.13065.1151823228203462638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32390cddefbe8b7ff327cf046a0087f9cad701dbbcdb2d38cddff7b63308c86b
Date: Sun, 11 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746956993
