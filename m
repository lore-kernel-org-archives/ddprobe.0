Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB782B2D7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783297714; cv=none; b=uKVYaz6bbXahRk0Xopwvl6DH3WSFGoVOlG34jbuyaEDnq35sT/TWnS/sK+xoVcbqFDMqfI9X1NLeCGifC77Gj9Iem1mtxB+P4OJKEvB7ijbs/yf6PYK6h0T/bWm/kZCmqEeOru4cdAHCN3W8lyKX4nMKyOuQvFnHVZRf2+Y4/P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783297714; c=relaxed/simple;
	bh=ccYWF4FxoTJMQOzYp8XBByEHshMyxxPcQy4pp7Yx7xM=;
	h=To:Subject:From:Message-Id:Date; b=j0R1V83xPti28ajS+eAL5bKq0/XplwmATM/SQru9UsLGxH8DNttMCBid4GOKx5VExP2UILnqhDM2lVcIQoSdwoDDvycJvu4qcL+EI0wjsV2NVGgIyLFmrJuL1cutKxDfZZbbqCUanqIpWEfNc/+ikLVa94jyIe5iFfI8xoANG3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kog3zWOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kog3zWOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF1DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783297713;
	bh=ccYWF4FxoTJMQOzYp8XBByEHshMyxxPcQy4pp7Yx7xM=;
	h=To:Subject:From:Date:From;
	b=kog3zWOhupu72f5DlV5gonwsrJvkilAcPtTfwOqlFcEXYugLQb8NrFS/48m5QPFH/
	 d3vCsmg3PulMDqzotRGCmUEUfujpfxc08q6qQz9tdzp/Pv88ink457rbyEIaMH1Aag
	 9O7flcnBZy83v/q0i1eDxRQbcIqH4Kn/IQKhxdEhxYxUDJiXNOMWyh0xHqtl0xRnOF
	 lTe95QY/i9uHc5QmoL3h6JMQvw4YE6PsBAPbk/uY4JQBEsdhhwS2RjeaVhcw8GVeql
	 iSbFfK/XSspfq6GaAUQV9Zr1iyNsGJzfYkESc1l6wJJI804ya9r60XODqoXTudUGLM
	 ec6LST/eFPmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB73CC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329771368.12753.9042940193065698979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0e3620333be083a9d7982db3f4f0c4083c42844ffcb03fb60228fa7c09cfd2
Date: Mon, 06 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783297713
