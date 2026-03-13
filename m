Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107241A6832
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387894; cv=none; b=J0u6uzclyGIFcIdq5++21JjxEQwpRx0A4nfaY1h/BYmgs9LxoKsQocLJU2YKvIn8Hou0juwybnLf3fRYztgkmxrN/Qv9wXkQGGLlLmM1xJFzt/PsbcXSH2LVOSyX8fSEOLMAgLmF2OK8W1kNOxk7FOicYgPRT9oHdWXgtSa/2GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387894; c=relaxed/simple;
	bh=JeTfna79nYUe6rvknGDN45ktEdYBrVX9/0f24dv6pr4=;
	h=To:Subject:From:Message-Id:Date; b=ZwhoxdxGYdHW5CmFwK/HUaRKzJ4zn8TUcSD/IUhVXrb3ZPtY/fac4tjF2F/iPNeo5+enKYC2TB+cs7VFzrNYDuPZVNtbOxG0AaaiNNkF1Sla6WlNE+++Dr4QgZU8CAMKOZQcI9498Hy0Bdm3iBHK47ac8zNwTDqLtdYg90flFMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH25qnAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH25qnAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E24C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773387893;
	bh=JeTfna79nYUe6rvknGDN45ktEdYBrVX9/0f24dv6pr4=;
	h=To:Subject:From:Date:From;
	b=YH25qnAgWZFx94nvSYw6lK17xg/gHDWEwhD3yfeMA2SBXdyGRWS6VbSqXbgU2pdxr
	 sLbQI6qrqKGK+ZWEjNpCuWIw5sa5JttfUAdi72wiVUyfpAPZKQG9j8EmiIXEe+BY3V
	 Ju584pzNmXZRT32E8WYypC58TQV/2WeobhCi3qrF2J/IzYXos2+Wgl5lJMRRNIK5gx
	 Vf+4lKx1+G0W4PfzlH3j48bVueynNVyFuzLd9hSO9fobtlPqd6TQwmtst7gHBC9UV/
	 4jgUJpU8JaKGoUjFRRilY6ul7p/8P3+dd74lAcTwDJB3rxME3W8UGZwlkpxlXGeKny
	 LW3kou0TZTNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AB106FD9B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338789360.18540.14878975687874779679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f25b283a952e92fe601f2eee8c7a823b643f1e9c3b9cd8ea15cd2d020fdd12
Date: Fri, 13 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773387893
