Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7C9372
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735002354; cv=none; b=ZE0PgZsX75yI6YWui93Z8ps4hRI/CHF2QJAqaB/11+xCWxBoyApcWUNtA0j01kGuddsl1ChNFJVzf0dr+ykvaqLo80BoGWuhrSyp32gWlP/9RDEMO8XoawexkeFt9mU3ULg9cvRmCY82jRa3EWrrUO+TidyJs4dQJbztigjJFH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735002354; c=relaxed/simple;
	bh=+c868CvFkqqhx5DDJWjSFo+Ezyjz/sHGj8qaUVFgQjg=;
	h=To:Subject:From:Message-Id:Date; b=ZVuAd83fdNx07fzGDJiyNN1yDpof7PteQtFQXpsWHHq71b2tJvnktKlbvscXSLGtFCRL4qm3wqP81DUh4sEzccDx/FoMDNHUVT5M7M6NUt6488c3QikHqClCzLsZce3lEaGIkiGR1G3c0Qa2LXpEqilCxKgk5+P69QE0xT28FvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtdggpaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtdggpaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE010C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735002353;
	bh=+c868CvFkqqhx5DDJWjSFo+Ezyjz/sHGj8qaUVFgQjg=;
	h=To:Subject:From:Date:From;
	b=JtdggpaVlqKDfLQn9lvn/31AbquYyODCXaqreDpuyT3adC1w8UuDdy9ShWnzZkqXq
	 aXvkLmr8J2w5wFaTFXcYW2p6rsTrXjO8CpM02RqSjpgh2bIhEqfabgkAMEGLkJichm
	 VbmLQvPwGDAQXAE5PVcE71/v4n/ZIj+kePVkWIgHelHzafaVEysWzzjQiNRW0qmfJz
	 BUeDHmQmXCmMfXqxo8p0pbdIbEEtLkHqB05r0W9bjMLIzXfiXOPpyXG4DinKdtIz48
	 ygfuKebhWdQf7FfvlGO3iT6Q70Bg2+JMovAOtxHre747O3Q1qqDszeJif8PWIpDlKR
	 lU3memEBX1YlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D40AE7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173500235360.22450.9109064448624183264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6bb6b7a65fcc84466f673f11505fde741406c3767f5836f414a9ab87a8529b
Date: Tue, 24 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735002353
