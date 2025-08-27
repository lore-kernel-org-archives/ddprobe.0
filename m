Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B726AE4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756281594; cv=none; b=Rg8QSSFrNBMaglo2XmxZfiTAi8qsDQukhobVcYKNwfRgY3sfMMPgpc5KwgO/eLr9msIVMbABgkg+LmIKJ51v2V605D7VPMirgy5AjqEwNTMqorG2ISLysFGP05dxCKtRhBWCF1RdKEKLzdC1Up+WarcEBWjuW0POmGlzXoA66EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756281594; c=relaxed/simple;
	bh=QOxFg8O3wI6Kfn7TT8GRQ+dry/9TfHQfNdbXUgGbp4A=;
	h=To:Subject:From:Message-Id:Date; b=Q34mVK+KMYi/gsVZ/lnB5mZlKhuutdjcJxfAoJioxTKBeDKlioF3xAt/s70hnW4k6Jt5ZfGW8LAgBE0sHB7ae6XcnZWQgRWnNOYuCjGdKcFICtlNP6NPcXH9V4cR9vSsDtNm5sJDqoiGRpujbKy7sKVstslyqdzuzhat/9wyY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYP2S80t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYP2S80t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9F2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756281593;
	bh=QOxFg8O3wI6Kfn7TT8GRQ+dry/9TfHQfNdbXUgGbp4A=;
	h=To:Subject:From:Date:From;
	b=hYP2S80t4xyRVaC78lrQPPeVUH2wWQWLXQKO9LY/G+iWZb8mq1A0nkljlAVqdXUVy
	 ASVSDp9XVWXZK90MPphmBunz+XbSZWjUdmplnhXpbp/syuslXzoOcBhmYJ28W7qLUc
	 hI2Bstqzlm3RcCFBr5t84vY+eVTWE0/8NfklVwxT/a0918dh8SLEHs5nsWwbSUoAjJ
	 CCOGQxF0Ja9YQuGfJcvg2Ek91PsuYrzuTaEy+6RfQ1iwK0NaHYRoi4pmvCkAkoY+bX
	 wGpwYN3NVQkENBCKUEi9ROFrphI7tlhG/6KYPHXDp6lk0F2KAPVf8TjVJOR/WJGC+9
	 /VQ/j+oCjBEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B6CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628159357.27089.10334525838572657263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e8236510b2f83a7a57139f1b63b027c87d41b13e5c4fdf91c66ecc328ea70a
Date: Wed, 27 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756281593
