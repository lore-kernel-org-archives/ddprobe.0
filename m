Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D0154C0D
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742194194; cv=none; b=FEPO8oN1JChINtMUUf/PSY5opiw3Q4GFFxrQ6+CkvvVPzY2/ZsLhCHxnrnz4AWbx5JOEVEmg7pKaIpd7A7V1rcnLDGKruUfCbj23Fsverz40DeS3xKPN6/aY2VZ+k0bI4AwikZqG5WvizpAsrYpLrV5Ay8aGcAGjhJoTYKrl8UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742194194; c=relaxed/simple;
	bh=lbRtrdx3CZaAI2lTkS2vUQNufDMuNcpupbojWolfotU=;
	h=To:Subject:From:Message-Id:Date; b=In3xAmRVqE71SlxSupSBurjoUBFquI0JJEoIkv6Kqu8jqGxGHHcKeG6ldRZaRM9C2ksNMrnEyxHBbDRZeFDerfWTDAcgvl9pus9JmJyTKSx4VkfNQ+wf/d1++b47l5ZhGtHeINHfij1b8HkVKZZpfpfvsWQo7ha5sFWAVgQM0Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkGu38je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkGu38je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC95CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742194193;
	bh=lbRtrdx3CZaAI2lTkS2vUQNufDMuNcpupbojWolfotU=;
	h=To:Subject:From:Date:From;
	b=rkGu38jeTQZh2lLSiEcRzgN92qqyuqY8JMhNi+7ekKUyuyV2OHnjBI4zUJw1n93w4
	 HW+klRzFb77Nk1fRJRFAe4hsYIVh13wJ0sFz8wHyUiKWJCrzzXAWiDLp37ZdvnCfTU
	 c2QOFjSwC4DRNSJMI5NnCj64QHCC1BtWE4kiPVqhhZnStketiB/IXBsN3k9cSEQB/G
	 cZgWqktkAU2kAAyhFm/ZYZSpP4712M4WMY/cosbbCdMK9WOLH2C5idMuevUgLcNKWs
	 IqQFTwZaiFIhn/HeYlfDwOWneHerje9xG/UjrKxa3Cuvg2quwCFe+2ls4SHNUhDYh8
	 bJn7VLHDEQRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8280C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219419363.30985.13297304374947429821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e2501a34f9b2a518211bed5bb98377ce41693451660bd22de439159cfff2b0
Date: Mon, 17 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742194193
