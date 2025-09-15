Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E3D2F3638
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757927994; cv=none; b=bgWkK8Zs7YY1cKnlc7UxcYumJ/b2pp4M5XfuUt47p1oN1rzrCMlZqLf+X1cjJ9QVID/RfytM7BGTXE8T5E8oh/7blqRH4jpNvmGKetTpTY8czpKLUXjNKFkTiqjGsqNihARUMzjksM7oIgBB6P925SQVSOjc6p0sYhM+N8riAyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757927994; c=relaxed/simple;
	bh=lunXz3Kpfe9aJUATVqtvL3zfgFozikBBRp5MXrrV3PY=;
	h=To:Subject:From:Message-Id:Date; b=kgNdMkuntY+vWPv/txoMGwR5jvteoMQKGoy2gX7YpKOQSkpAIZbW0MflFhKMm+jDeOexxcbXT2jd6mB+T2E8mGhfLjhqr96nXV8uOSks2BTfZm9KNLxi4BQ7owWyqce+QY+IYVK5BPH1Jm6P3qRQ32yoq8SYbcI24p8iVzF5G9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL54C3SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL54C3SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2A9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757927993;
	bh=lunXz3Kpfe9aJUATVqtvL3zfgFozikBBRp5MXrrV3PY=;
	h=To:Subject:From:Date:From;
	b=hL54C3SEupxR+awwymTxt9dN14dewwSg4j7+J+w3CCh4iqpcEX+EWtOgOm/c3X6cI
	 tZcnyu/fVEUmrRiiqQ06IawEGKSpuSqdZKwHAKAZV1PdTEKChyddiiyoRe+BPtAKlf
	 T7SjnG1jwpw6C41Rbh1zfOgNKTDgiMhbK2Hdi0uJye5QsHGWE0gfEayK4zH6epUPAX
	 9avmqeJaqBqe7vyrldZYoHvi4iOvefEuNVyVm8UTnJtSKo4t01FLtWfgmBHIczhOGR
	 7BnHXi/JdfyF0dstn2OsToCfoHI2VqdIOhshhZAeWcW9fgniu8RIF0IRIVGvnjrtks
	 s1x1/ffrJTSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A25CAC599
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792799359.4910.1093855394287899719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cc1648a0f07a561c29881378a21f5422466f987ee6439577d7c341c5ef79c4
Date: Mon, 15 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757927993
