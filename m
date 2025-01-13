Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E12A22CF12
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736777754; cv=none; b=CRE19HwvJRF9hOyXDe//Lr/7Iozvmly8RddORGIu+wZjn7Ya3fDGXTic7SQvemu7zrtnd7ZFsBYQhsbF1PYIjlxQ98AYunyMlPqAcbOMYflawNOoMgcEyvOvF7G9FtAh1iUIMhQJ+dQnyQrg97OVr92l1ngtOXCgqxtOLuQLL08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736777754; c=relaxed/simple;
	bh=obfj4OKj9e7vh1bvsN3AfvNIb+W2AsYIrLUOb8ElnNw=;
	h=To:Subject:From:Message-Id:Date; b=gJhde/9mKd2UTqqROfPrRtazYXnMpWcutoZ7ymmiGlI/KDP6y/w4JGTNpDuX2EBAHRxszYg/lIiW6XLcsDVRbtS8FZNwsYs4GafaQmubZFANGrBBRmFtAr2cY7g+4FRTYtdWOH7ButExg7eihr3/Auu4MM8PRHJ8+lTc15KL9Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGD5sLNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGD5sLNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB8C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736777753;
	bh=obfj4OKj9e7vh1bvsN3AfvNIb+W2AsYIrLUOb8ElnNw=;
	h=To:Subject:From:Date:From;
	b=sGD5sLNmOTeETDNYDUtTHdDHY7QUo9T5a/bW7nV1inGTjJe9QlN1qIWukdKEmYaY6
	 4gQK0Kx0DrM3+rzQdjjYCnis6/vmIJdMDLCYkSAEX09z7sLhFE9AdAIrKePmd/Xypv
	 kooYX1tUB9lLr1948YiwhjHXu4EHHwPlAp9RewKIM0XBi5P4h6x7M7ajUanfKL7r+8
	 xECNTxpPxZB/6LwmB7nzcVrhQNOzs8ikXldG7B+0PxbjWV+LVdvB/Ty1aUph3MVrV1
	 yQQZB15Oi+/nPu0opKRZYhrsxWs8c+sd4magmtQS5u9If0AokK+rbeXc3EAsLaJvJP
	 jfhcpyWUvziGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43BC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677775357.9989.2895764943160388334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67bf4eb63657aedfb300ca8d8dcd582bc1515a60e0968a53d07f7b946d3b33c
Date: Mon, 13 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736777753
