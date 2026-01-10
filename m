Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DF2500966
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768077234; cv=none; b=UFWo32NBkcd3nquRTALKsJs7m6cU+igWUNV0n8pjCMChap/uFQuW9FN8nWCecgnK2XWSjF3ofNl3zGMeNyIv2qYQ6g6So3j8vgCSSAjJP+8e9MyXBGVMjvpOFWYxrLb/OykGuISBkSt6gGyIcMNy9LQc2IwPaI4PWhYaS5TIslY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768077234; c=relaxed/simple;
	bh=yy60DADNiWtCpQOzJLVWB9WjMZUhq5o9MPeqw4YTOlc=;
	h=To:Subject:From:Message-Id:Date; b=r2K6/n5XzyRHGGA1e61n0I+DhstnQheqxXjeuKE3ZICfC+Sna0WjppZf9uxpRvISUxAE612HVvNK6V7irljzGSHoTfsmF+WNYjaRxbssBtO++QoUQnCO10WNYElieaF4K+MAYRvwU176iZcurZxADyCzLHICiLBKRODySRxiLGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZutEv2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZutEv2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768077233;
	bh=yy60DADNiWtCpQOzJLVWB9WjMZUhq5o9MPeqw4YTOlc=;
	h=To:Subject:From:Date:From;
	b=NZutEv2HvDJziqu0gGK6+M0/YIW/PnrMFaBx7tuKy0dQ89OxYvaI8LvyyZ2WK5IYu
	 iUR7P0RoKq4XFXK+SCJ+QD5275Is7XNGXFgnWtkoPmi98Kf8/10p5ivwFpzt6iKfc+
	 x4aACeyW6+ehDTs2A9Lm9fkD/sm8LQu/cdTShC4gtglmE1mnZ26eKTYHTv32V3U0md
	 qqBM+zRkNDjnTIuHSEyk2SZSa7wUFGP5v8XxFHlqjnpZW8n68TrVDQioW6hQa/H7sl
	 efgTyER3QTcS6SpzJJRy5S1zotWtoAn70PGLpkQ8SlWrDWdVUm6yhouQnUU+rAThxB
	 Z5lTfNvoP203w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92076D25020
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807723357.29517.8165614323112349016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76451355e7f5a55257939c3daa34d7f037b4af1da806a0951424f01fd810f909
Date: Sat, 10 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768077233
