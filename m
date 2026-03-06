Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF383ACEF8
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807694; cv=none; b=q9NucsOJIvbMQTvDUem6eoPldYJvIdi5yNkFkjYYWeM+0OcRDRI1Zo8Hckb0hijRS5Oev2HBBuFiMRLBlz1hgpoOUr3I6uVWTDffKSKcnXlTWfzvNItndaEIdSgDJZuN747zYxM4L29CipBfBbHLokGwMfMMC/0Uq4h/6PaY1+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807694; c=relaxed/simple;
	bh=VBSJ2JkfrpbRkGp5oTq3XHZRUFkAgVh4E0lH6OH0qVw=;
	h=To:Subject:From:Message-Id:Date; b=fhIMg38KRFO9AbA45Tw4734Yf5C9A7bz68zAebnRgHv9Evy7M5xOWdTbodzNl7kdXeJnLej9icForbOy8Pv68HenwfvX+DvxDCCnfmHTkPhzeZlXVoFeQ1LPNItTagjbYI+oQCgn8v+Y6DVYdVlnHbyV4gevIfSQ+YDXQIdOKg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4L8C9pI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4L8C9pI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E19CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772807693;
	bh=VBSJ2JkfrpbRkGp5oTq3XHZRUFkAgVh4E0lH6OH0qVw=;
	h=To:Subject:From:Date:From;
	b=V4L8C9pIRWIj3lmflc+XvR9n7SRJrY5hn9GofCFWy5pwf+vE44iGLaVnbsoDR3mof
	 PfWthcWJbLdGoHzstWF/EdyPDsrdK5HBh7iQXUT3kah1zA29ujlC6MB63GFYZKOzGC
	 RzSx387xCnufiQrP9eFqFNSLoaKDqzT3xQVQjKlj1ZgJN/aIf6URZWLHFW1392jxaF
	 PGbOT44jRHnQAbfjU/wg/TgGeX5EYtxouc2azJRcvI1KFuB9qxyFaQLQE/JLugwkGo
	 yw8b7njYzYcgyRnyzUqM6COkpNkxfg9cFPs0zQPCSUKBZaYb3BhDs0BHbTe9nC5J9j
	 xzMHwQYoxzQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0BF5141C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280769357.20555.13851395964934068494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b3d2e2047f80f1c6dc81ce7bd50cabf234903c334b387140d5c64b9445d818
Date: Fri, 06 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772807693
