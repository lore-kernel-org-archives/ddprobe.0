Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384FB11185
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734975354; cv=none; b=FKiAIppPHf+thXG6W9o2LUmH+x/as9hbJmfqoxHtBOBgXGEArKhQnEmuyk8xO9QnTUgvKf0HtvWJiCE7jJ6PqAE/t1bNaq65QwXBFx3xvWBf05f9ST1VWFc6tcgnAyBoucebAMPXBg0+pJSpsZ8OQhpFFsMe0Ikn5lDazZAvNQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734975354; c=relaxed/simple;
	bh=qaw5/4odQaR9eiktz2xcaR6qmVyYXye7i3rMgd4xxTo=;
	h=To:Subject:From:Message-Id:Date; b=oESS7kX37Mygi0EMWws/hf2rbUDJZdo6Z3PPkHMmtzJJZl795j+8OPTQSOuxJFWgAmyKwynCutm++sGsTOvlpDPVqQu6YHf/AgTw2wmOr33P1Vhs8Um9OG6RH9FW2KlzBHtnmnyKqgKvtSeKScX0cmMF0VpS4QMjLwAE+I9qJhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nb346hhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nb346hhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A19C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734975353;
	bh=qaw5/4odQaR9eiktz2xcaR6qmVyYXye7i3rMgd4xxTo=;
	h=To:Subject:From:Date:From;
	b=nb346hhzU24pqaWuV2oZSE8+kQSBrD5cCtMrbVJbqFkKN9/kk07YHCooYvphnW2ou
	 otwGXRiE+wTeXA19GTrGGVo9ZnmkqNwvCwl9Q0/l/J6wbF6j+KRQlJLdAiQNA01L4V
	 IJcC3ouwNqv5Z/YLng138E6PEq/tpfbhhjCUzHOylc3dKqbBzQiI7GHPxuLd1r03XQ
	 2rx+wswf6zR437G+pyo1CZy0+fQXfH8wnSmIQ3noYl+p3udVB7sMlU9xmjGhz150Si
	 B0Y/XmV9Yy0L8EK3zxb+CWwceJyS2lRYmm6fwz4On5wo1kQyr6HJLIdSdWp27G2Ev5
	 SuQGB8ru9RrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD73E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497535362.20159.5752399820390443870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cc5cc29c4fc75bd644a448b575b0f6fd1c9d318af5d4b57d51e031acc6f2dc
Date: Mon, 23 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734975353
