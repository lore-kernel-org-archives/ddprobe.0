Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312BA1E5B6F
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755182994; cv=none; b=hDPXvLMq7ePoExSgOu31jv+/802r9eOr0TQfbwnfd3HC7YXKb+JnJQJsGkMq0HRCqc5GSKFSxdeVwx4c780Dojl5go/kHyfGh542Il/lnluxbtckh27o+j91nye8HcqhMHsBv/r62NqI1tlpj4DtFLkyb5f3ujbj6lTaXfjZkJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755182994; c=relaxed/simple;
	bh=eKUg/OBX7j++9O9KuSi5J/qVcdLm2V6R3s2RnZSTv+c=;
	h=To:Subject:From:Message-Id:Date; b=B+89snRsne9VgQYzUsQuz7j1Jp3tvpPIPMC6EsGCqn9gMVi2ZocGUMNyCXAJ0v3N7e1WmrNxVBEO2Fe+ZSBP7rLFqL9I60F/T1jB88xVMfoyGZrbMsuvAst5Ir1wc7jqqg3ExLOEQZStn78V8E7nskB4jxgr5cAiFIWpnhSgq6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBt+iuo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBt+iuo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F52FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755182993;
	bh=eKUg/OBX7j++9O9KuSi5J/qVcdLm2V6R3s2RnZSTv+c=;
	h=To:Subject:From:Date:From;
	b=iBt+iuo4mJ61yP5E2jQs06amiBUJysvDCkBJ9cA/6dEjUlGJ3wB2j+URTr955BcFf
	 N8kWbdW8bsSq4BNUHcCDsD30O6zJ9+fO4o+fEp80d1YfhuOQmP7o1U/Iv4zgpn0jqt
	 Qv2QwuagJZfqpK72nwyusFta10lpyNyuDh9/1J+Kw84aqjtFfI4pecdaRnFLJhyTr7
	 XB/POpUGzb5fE71o77DlKEgbmMVQ/xnWLuW1D0gT8P7/JWo/sLmtQfhWAJFudkhDoC
	 bfhqSTV5ZtODf3fCaWAJRP87xmldSO+g83LtS8iPOjGeqdR9uP389iHVLJEMctyprw
	 O0B8L/I/oLeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE33CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518299357.14714.16631808069105472372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0860cc9ad7d5ada5ed3e760cc695a6e69b2a6c2bc7eef7c673194fc855c1b71f
Date: Thu, 14 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755182993
