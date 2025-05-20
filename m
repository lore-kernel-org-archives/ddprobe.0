Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257ED1E492
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747702796; cv=none; b=ZSaTY+qdYLQetlqg+UF7AorzZ7iFZeNC2IxWqVttPWAxn+1QjPdahgRdABdE8XNVar6WEXrLNpd2z0QZdGYK9/1S7TPHnSRzM1VV1kGfUP3SJHUPHLCCUhQ9mPrmTCdt7k+FOLtPb5cLgUoUDbQXNeu7R6LRSm6SkaQ8UfhRTcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747702796; c=relaxed/simple;
	bh=aUExDHLcGXqeGYjqezHQ7fjwffI8iYUnLDg609kieoc=;
	h=To:Subject:From:Message-Id:Date; b=VP3v0+/r7ITRgwUcq5Ah5589oTKrbMzy7JtuVz6ufKeLWFz50250hhJSsdnwloFIRat98HtGXQwfb8CtmckWJrcqhrzT+SY/tG6WL2qAo0jpOiEzuZ5uwFgslzPILQZAXnYe3JpD4oHyRIWOllhSKpk64yOxMMCYcj+aFAlFerc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuSfiFeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuSfiFeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CAC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747702794;
	bh=aUExDHLcGXqeGYjqezHQ7fjwffI8iYUnLDg609kieoc=;
	h=To:Subject:From:Date:From;
	b=HuSfiFeNUtfgeeeKe8/Wv0Cb++Ngw1tP13b6CozKS5TTVsA8nVkx1/tBNf88iW6qt
	 Uq2f+BqgDT9D4EIUIiTKohaBZ3h8YHOyK0Rtt/thLJ+xzRUKjxYO3ryUtZcq3UAGzX
	 H9CUikqllxBJ+u/lLKXikaViBxEULIQj/LTBjmESWw8J6pbQ9+5954WTcLMqkoHOCB
	 IfxvOcCs24qoXnQbu02nHmBjODTZss7araGfFqRirYNtxW92B3WWK3G4kGI8gEnMQG
	 1JhSShhLizos1k9hexvAiWlHxxzP7efeXCS+Zy63Zxxb5OpDZqYq9byVzHWND5VxDu
	 EOFGzq7zovQEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E559C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770279357.16167.12304725267359720933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5549706ad53025aa2366c32d039a3e51fdc83c7230ee0c184b932fe868eb90cd
Date: Tue, 20 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747702793
