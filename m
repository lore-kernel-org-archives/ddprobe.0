Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D0F71B30
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719662063; cv=none; b=BReBfeH09BPipEsHvdQu5+MpfV2kQGugYBITsbSQYRjkYJhbAr0jGJkqGUIjYG3RjfwNkas2rIEoIV+bSayodEKyeAaOV45t5TJpYGjIvEM+AQ5SdHYPYBjeSuahL1f/hFVVNWi9Wg2OFLeshtzjg5qCVIL4KqzWexO+sWfhW1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719662063; c=relaxed/simple;
	bh=EFx6SrmFA6IOMSvp6g5EvB00MsTJRH0m/1So6MIgypE=;
	h=To:Subject:From:Message-Id:Date; b=Van4rgnAiRNkCU715Gtxkgh07U2uAxHAzLrcogoHYwCN2zsQoH1dW/vfoCq+9s30S2OC8nVfXFH5yD9Sdq1aruBqR+GmSl1PCXEMzsX4ks/5R3Wy8prR33g1YUEu5yoTxjyHtDuGeIclacLF9+hL0/j81MaWEXoDT/+BgMaV8tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDznfTvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDznfTvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FEEC32789
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719662062;
	bh=EFx6SrmFA6IOMSvp6g5EvB00MsTJRH0m/1So6MIgypE=;
	h=To:Subject:From:Date:From;
	b=NDznfTvfWuwst/DqoXQcqvzZhq9Dlw4OOv/pXO4hJRud3wtdgXkMHa48cHCXluD56
	 5xoFCn3j6dfUPaz0OfUus2LdCRKHHszoqD2eUoieDAcfOPHLjKXDcBvnLTmKajwPLk
	 w9kL5U1TMaoBla84cC6H88HM3j9MNpd99Wo8kAuFotJ6NjT26XajnArM1kJWXYVA+c
	 zA63BIj71WwOcuq09qvpkq8IUJx/t0gMgYCtScY0gjoMIDWPqUd2ILKw8jkw7Xx0zS
	 7yjh1oJfzvC7+L4WA0eL2vXtRZ1zX/u1fiL984ON+/iQiQkAi0jRiv5M3MNqWL/PjG
	 pxsgMeB/tTeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ABAC30653
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966206278.27651.240357489187528021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101e2ce55ea4257485aad7dd4a0afb93560c60a6d9c4ee1dfb70938fa3274795
Date: Sat, 29 Jun 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719662062
