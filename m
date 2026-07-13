Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377A93546F9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783922914; cv=none; b=dJpm4Zz/EziG5nwwS5gyzmADDB4ICTVAJTtViuB953xx+RurKekZu9C20FeouDwh4y23LBBCKJg39j6tB1KX9e7NrP2hRvUFYvheB8MKw4E6ynhbYSunDvmslgzzPB4waI+VBsvyJBbWcpYONNhhiHu9sD347yNmtSP9N8dYVlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783922914; c=relaxed/simple;
	bh=850xAwkCJ8sHKy87Sgbq3qdIefWBhwgxDDmVNpTL3tk=;
	h=To:Subject:From:Message-Id:Date; b=cChCW80+f+KbvPH/9Ouxwu8CvdN2Gahe7LLJf49jqfM6U0w4iGiwBf3EGokp4IBgIYJZwQVAbRUNjo1G1SGSYFenBFt//a8N1pel93+UWRNaUWcOAUPNalzEEVG8S9wCmsET5hBS0D0CW6tkQUn2FYskRj6jFEmT5ZA5VM4b+s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlvE8QPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlvE8QPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CBFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783922913;
	bh=850xAwkCJ8sHKy87Sgbq3qdIefWBhwgxDDmVNpTL3tk=;
	h=To:Subject:From:Date:From;
	b=nlvE8QPQaWNuJ2C2nvt6nVuHedLRQJ4X6C9HwGcsdiUFBQsY8BqJ2pnQ1UocM3mx2
	 t38qkW5aL94GFpQvtANdBhu9WxYEchmtS0pU2iLyWgYxViRi+7/Z31pc3+rxwlqR1q
	 Uq+/IMHe6lApXqh1R6YRWQvlz8IvUsjxG5vZXw6PyiD941+vcaTmZjUpVPExQMqHr5
	 KxBgYAXtRWpImUWAx5dcM/JeAO08QnXgG4h97KcdhJ6vAe+q32qhzdE+sTY9Iyfzbx
	 V+COKSLYCsa0p8LtLgSxxB5BvIXGkceBPgImLX0iOSJqmNtmYdinhKNTVdvchPQxRX
	 U56e7jsG2NCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF681C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392291370.15871.10948248209805540968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f4775126cfad4357a3f16a516b549be257efc8d76722a4917ab7f4971cb939
Date: Mon, 13 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783922913
