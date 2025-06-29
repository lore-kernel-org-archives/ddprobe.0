Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32B4C80
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751181594; cv=none; b=nHajpKe6PvldfTeoaJKGq9rIGnKuyWMcKUzEZLXaRJ2i2d/yQwjg5yuok/rq8zHgEt5TwIRjXRDimJ8IuHkE/8XV1CIMXq7EsMVclPRHTmYKt3msGbfpgI/IO0qHnFuzu5RoYGUeD36noxiW3bqoU/KuEbqd/8C/eicvkCqY7MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751181594; c=relaxed/simple;
	bh=ZRFW9js2x/diYnZ/Xc6tY0kLBx92qboEVcA6Wc8AWo4=;
	h=To:Subject:From:Message-Id:Date; b=qhGlS4MMIJhGVh+FRCxNtUya4GWxC5JKgPccTOmvSGo34Xu2M4WzWGULL3t4v4fvqKY3XAuBIRtSTN8qW48AUhQEvDqyRRaSx0jlPisj7eUVimwdXcWOoI4iwqrrJlzoqoxWPN3Rlm0G/Yx9c3pK9lYvn+7dwgPRNJBb+q3hrM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi/bdy78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi/bdy78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751181593;
	bh=ZRFW9js2x/diYnZ/Xc6tY0kLBx92qboEVcA6Wc8AWo4=;
	h=To:Subject:From:Date:From;
	b=Bi/bdy78hJGd2vD6b8xVkJU8xTchY3ODbj1JgO20TNFY2wYRBfqledyfTSXfKv4oV
	 fVC3IftxLG9iZM1JAVCAsKWaK7N05bddkTLaUlz45/Ya0X9qEvVHnxD7Cs3OkGZ6qR
	 +YwEYUybLyaN5H/swxS3WL277w82lbYuvEMeUxttzAzEzlTJXML3NzPpq0oiyP3XQy
	 t5MinWpSkxCFOZWdH5hfBkiKOzndD6x88mEXKpddITwN7p4b+f7gB0jK+rmG03fXtu
	 Pwww4hbvGm0FFCNRVUPnbS104NOz53005KqoKLL6ZnPd5svAcqGu9JlsJydzoLp3Lr
	 6xh+aTDMiT+NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160BC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118159357.6602.3637228810808430848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7dacc6221d7f455d07c56d4a2720bf5f09527d901108ad05962e2a0f709a51
Date: Sun, 29 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751181593
