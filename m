Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACBC126C17
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759155595; cv=none; b=UfdADqLbHHj8DAHgggnxKBv1F5Epcpk9h66ZQwigKRb3OS5744IaMaQ81sDPnPowQBmOGkZ7roe9QopCpcd7lrAx9qZ+4R6RneaeVB3AOcuxg0bFtsSBbn3rqVDbK32hJcpUlZwjCYq4sfN+1nqC3fuKhT+nKPInmSUGfKk5Fic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759155595; c=relaxed/simple;
	bh=UB/XZct+16NVLDfq0zU/vKQMbpu/4q9K6UWPogAE2ys=;
	h=To:Subject:From:Message-Id:Date; b=HguYfKm/ll1CRqVDeD1Ni0tXyc6vbldJmCvjqe65fXDjj5+jS9KcZBea+DUE/twb2FCCM4iPF1oEQuscBTO69SshoOIi2UW4YcFv7uIjxsNjCz1w847kchI3ae+ST+YAlTjrMc01+uc3qajVH1gMM1sTaU2Wc1BOdybYrA3BX+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIt25Eyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIt25Eyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64AFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759155593;
	bh=UB/XZct+16NVLDfq0zU/vKQMbpu/4q9K6UWPogAE2ys=;
	h=To:Subject:From:Date:From;
	b=iIt25Eywfjx5Et8u2aSeFZPxOwM9RyXhgnAEM8uMY1rZbE1QZZSmY6JMqJmRZ4+y6
	 CSMaPZmsYbVrcqsxDPEm9upXzkzm1wYwt4C20Nkiy1OzfCe17PRwZbtDfyG1T6WIup
	 2SHsRWiU0fcDZbpW69zJFlgo4kka/fXr9B0hh6dw/PwzggT1SwzmyB1zhosBc+5Ey8
	 5mPIlw2uwqO7TFjKbioPmnLCwQx18D/u9ngOt+WcZX8f8HrqYDzKgCM6qX1/VwyPVu
	 OVqueDVoz6W8txM3iYzMyBu4x7VSMEiDUfwSI/ooBu4w1n2rikX2n3jQCR/4/jD5Vy
	 s8U9SW74tO8Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFECAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915559358.16887.2349299071129716964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf8656d8b19ed6f2f98c3aa01ec84faeeacc03b2eca709a332271b9cb127698
Date: Mon, 29 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759155593
