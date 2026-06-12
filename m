Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F93446BE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781265394; cv=none; b=jl5BxI2rwXNlIh7rSvMOiU9wR+y41PmobCQ/r4lOq9/IYEG54hp1hKJXsokSuIMdcXzT7djl+CvbZx6vFtuUahxBGpL1bolrlym43nnmFrL9sq7p1UorpSwfL3GswK//zlwHWaz2RHMCz+GOxMM+V0pNy9iJL5GdamRPA2fnUvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781265394; c=relaxed/simple;
	bh=FX8fiNAqUhLe5VOk8ONmbGZb7sTm//pjG58n7sAtXoU=;
	h=To:Subject:From:Message-Id:Date; b=YYXa3wk9Vx/pfyMOG088x0j2jbQyeJBFWI17axb9Jgv7fiOLQlSJ6ZObFtncKTuuY0ouGOEvfCTbWS/SnLuwSgWfIHMpREG07yidbkpBx1QcxBuhhX3jtFW2OlJ3HcKPZ5uS1fEhf2Cn1SzAxC6JH+KaME7BwJ/728zHSxNU69o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmPBkESa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmPBkESa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4042C4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781265393;
	bh=FX8fiNAqUhLe5VOk8ONmbGZb7sTm//pjG58n7sAtXoU=;
	h=To:Subject:From:Date:From;
	b=nmPBkESaAPTxXU1RZS70WFiKGYGf10xiCfx9dS2jPiqieYgKeRNIR3taU3NcJ+zli
	 iXFgsC/WqOgsOWTClKv+KH/ncPYeHdXxMD4uMQvXVO8aYg0V5X0AARr2smEKdONW8o
	 TGjekrA5Fm83n2hraT2FQG0Lqxm8T4OMNDgipvn/doBmHue3BG3yvTT4e7CMfoYnnR
	 qT1gQuwLGI5fEx+NjwuCi5p1fU/0sMBFfvaby9jvlBQ/T0e+i+2HcvkKLXRBtKEmjc
	 YOwBzxGcEBdpgvAlE5fsg6ukjCQC0nn9Vwtb6k8JWNI9a6G0MKrythNl85DgVKRmeR
	 aynySZkicHOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F3CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126539368.17361.11827594858405230793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151068f7c023d61327d9763a44a769be7f5eddda169bb1775320554ce691a199
Date: Fri, 12 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781265393
