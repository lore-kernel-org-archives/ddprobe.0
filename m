Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCDD2E859
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727149553; cv=none; b=kaJwKNDkdNfzwSBj9+01jVDHV8eGEr0vb1gjCvdD6j3OwxyBiUNc3/fdr9cqFkkSpTZ2CUz5sXpfMdUfx9Bkzqo/SwP4ZBMN0Ro3qW/9d4FzkZ/Dkrkhhkzs5yW7t7GPQQSICsc3XNAPEWqFnupKLumhhO9o1Ijwugz/Oj4XomI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727149553; c=relaxed/simple;
	bh=hENLj8IpTVzwHcRYZEgt8+CiHSys9w/o5tuxVldrqKg=;
	h=To:Subject:From:Message-Id:Date; b=eFFhjjuO4TbyBd7HUB+uFcWUjjHETvXLp2HUfPNsJNOM5lFFLqPU7+OhPDfzudAWQPLmXiWNzNp3stgAtz4gWFKliPY3nIt3B1OzH+IAuyVMJersrcm93oUPHZ+R37SrhlZMGiUudgCg0gSHUdHirtG4SW+yqzCWkrYwBXdK2Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXeY66ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXeY66ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F0C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727149553;
	bh=hENLj8IpTVzwHcRYZEgt8+CiHSys9w/o5tuxVldrqKg=;
	h=To:Subject:From:Date:From;
	b=MXeY66ab9IbuKhmaHgaS11k/qcLMk3G8lJAqeOmbI3F8okamDenddufMltlfWxRWD
	 M/V5izvq1hhc1D77wyQ9JEACOjsYHmsfLECzMS3Mneqp8igts2wPKy/GCgTlyyCSfd
	 XRAZ2RoItTCiwFE80WNJyq/8ImiX2vlT81Q6DZwUUZShem841ApDmj3FGpaqesMrlu
	 XZDytCVUnB8fdGaOtmb+TkDW/0kH3gOUL9zju2Zw6IKmAyifIdXx+dMVxQyHvzRmnQ
	 k2E6FkL7OIrT4fXW4YWW/n5CfhwNvfuot6AJuJyZipEYQrUXO65QGFPxR+zG3vVFxO
	 tZ59Br+a/Yvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D77CF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714955358.20349.3712486800432108053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958cd7e1755f9357d9e885611720b8d5a5e9a74b6925c9264848c0400caeaec6
Date: Tue, 24 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727149553
