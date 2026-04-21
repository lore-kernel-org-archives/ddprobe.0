Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A211B4F09
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776772653; cv=none; b=JdWwB/UXPdTq6OMeCcPAsmVyoWv5jT2TbflVXUW9Kqu7l0cZ7tp1xVB02DxJHczFeeS2ozLYiY0bewalKmpndb0VdMQ1TZslxITN8vk1hfSRt8aEwPlYImWN6ALcIni0gNSYYJXj7l34V6M7TS0dC5boruo2061k532Bdb5oU74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776772653; c=relaxed/simple;
	bh=+aQpwq5jWpmIYFODE33TK2EMTUco3K8F+hrWr+LFqdk=;
	h=To:Subject:From:Message-Id:Date; b=qwti6Lx215cS8X9wsbZbopQT/3wkfEBLdIw6+zRnhpUXqNkRH8+9W9HufOJtfvMvo+oo882/34A9HD08vmJodHw6TLhK4bElBD1trC0Jr3opUKC1msTx8d4N1bfEdGaTfYjIzEmDK7uPQNh1GlElyyDE9Lrqix7yx+UfKgzZJ+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPHBdjmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPHBdjmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BC3C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776772653;
	bh=+aQpwq5jWpmIYFODE33TK2EMTUco3K8F+hrWr+LFqdk=;
	h=To:Subject:From:Date:From;
	b=FPHBdjmNaYxPiMYoO/Zi1TuN5EbAcxBSLx6+503GUo3YSPUK267RkB82axmM7cMWH
	 Ium0eU9SQixaQJ8A1BFKi/NxOJeJBfTFOKec+5+iJr4zAaz1alffAW50Zz63GELAkj
	 +0KUTZxPLoAnpXZEnp/67GdPtdtnEEIk5epB6Yy/buJSrziRj9J2sRU68395h72z9T
	 a7D1x9SZFZowtiKqka27LkNqpf5tmyTQ/akjk/0iqJkr8n6AaP+MLmgahc1U0f+bgy
	 fHFOa9wLxnB9CeQ7r0284DDXTpxu0ZroTcMAn/NstwyarPjW5xVC1KQ1hNNgA1wr2T
	 8+1pkvlrbo6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9074F8FA61
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677265368.15382.12600655011413215924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f69f5cb4b5757cd768e347899924747b4e456eeb41dcdbe645689661cd66a9
Date: Tue, 21 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776772653
