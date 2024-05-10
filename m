Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737AB446DB
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715365943; cv=none; b=m1CTIEZXZU6I85dvmsVOoIgG1lO1ykyLFodg6EXS414f4hoJP2J5ZYv7PdI7XLEBwan49DEzp7/I1KJ4VDKySE5aNEVbmFLIRRU9aCXxaLYV9eXFoIR3Noyz+E1oe6hZ9Z+7crnqXqNVSGA4MfQnwjc9n36HnKbKpqhjzvU3v58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715365943; c=relaxed/simple;
	bh=x46s28OE5oAdDWl2aPg+8K8AmTRk/D2RtCjx5obxfJg=;
	h=To:Subject:From:Message-Id:Date; b=Y2eJOc4u/QccSGkXIcVQpzm9xQzzte3awtlmSJI9uPgSQzJz1NYlcRc+navLBKLIFpBZjGFNTMDY/1paPRrbtH+ikxughgpLtyjJORoP/hV4LrxAO2GD9bXQlGv24C2368g6sqf9ZsZyAXrgoPsQ4TpDGJMnO4VbgJgNJSbvMiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkIKjTKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkIKjTKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94C3C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715365942;
	bh=x46s28OE5oAdDWl2aPg+8K8AmTRk/D2RtCjx5obxfJg=;
	h=To:Subject:From:Date:From;
	b=LkIKjTKxO9npu+bbgAmn4oF7BubXTT+H390v4Boq5Pn2N9YNXnAlMSORu5N+I3YOp
	 Z6YvIrtz6fzGsTleS6Syy4SpgXRDr4BtK8B6RuhDEnAnZ70/cnLDNqX3NCeQO/pL6u
	 AhUWxr/P8YIyDjXIupMbQ/r77VQt7s7NYHUudc3y1QJqCZFCdHROWIBVsCt3pzakDl
	 8T8+iJVeBdtVSqyovi814wGdx/nnQE9ib0DQkf6w+2HAFdMF+eUGVc8GAdZ+0IU4K/
	 48uIcP95TImTQDSujwLn85X7kRnTekbdeE2Yc8+/uE07m0AHNATWHnkMK72U97z6Gr
	 Kka5R1G6BOwtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38D6C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536594279.12495.10745686043478023770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b3f0df63b0c9fab4e19571746f047e9652b4b6412af1dcfe5807088237bc34
Date: Fri, 10 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715365942
