Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6673BC133
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723085754; cv=none; b=qVn92mr5onXJdyES2GU2/agmBEP/Ouy58ggutLdWYLzzOH+vy/uwDg5DN+jDvZAp6a2cK11u6cIkbBXpe1fdhJzowqMmu/mmfsC1yxTzaMP/iM+hT8z815FCTsHWL1WgjtsjL5QHHWBrKuFOnPHgB7klQmztctqnBdvlJt5x+eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723085754; c=relaxed/simple;
	bh=3v8xe6I8wr1nolUBoOUgQr332Bu5GlJiBQClvyyqrBY=;
	h=To:Subject:From:Message-Id:Date; b=Q8oC/vXMBN2qerjeLn3WdUsqD3mYCtkMSjoY+/d4O5JoLR9uEfG4WN9JerV2OBkiI4+JTdSqcESzPatldd0cx76Gg79THPDKsHpt0rnMXxxiRK5LdazD7QOIxsEh964CUWRxNpFtHEphk1MLJHFQ8oKGjxLBgQr33q9n6qL8DGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeBMYQ+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeBMYQ+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0972C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723085753;
	bh=3v8xe6I8wr1nolUBoOUgQr332Bu5GlJiBQClvyyqrBY=;
	h=To:Subject:From:Date:From;
	b=jeBMYQ+RTcXYBALFqRU9XyWFLQGdbr2MmbqDzXd4zYwJfUytT4qKdtpxxjfRY4VAz
	 NrHMojymtr4ivWMkZ3WpE4Wc0YuTteBXNG48mj1zQ8IxjSxT8wQnAuSt2Yd0RkeSlk
	 NsXHZqopVMp6GEtlPIe3v3EoaNTYk/qep34YnC5eqnu4jXnlumdxCPm8N/XFmjGhQp
	 xUposM3jhEhhH9ea2xHyBqaLdItUb19jgGFxzxj7Aow/j5+iQJmZlPLiWZ3Qmb+aGF
	 zocoZOh6xtg9Wq67UJGjZd8IkQofcwtKRCTDWEogxNUmBnwxmYA6uszD6UtS94VFCn
	 dUceiAug+DrCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1163C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308575362.29218.11946161568832619691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99afa9b11c6d008df0c1929372da740e9a99bfbf7c6f9516172d8dd53f317156
Date: Thu, 08 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723085753
