Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDF71531E9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748029794; cv=none; b=YqMCyTqeHtlzDPZvvloXZMXuhXljdDCX1ab2yrtjcufz7sk6BQFYpArsvDA0e+bKc2xd8toqrSiBBc7Q3qwvQpbYLnG3eabsnqoMAOWLhYTRtEsKdJCXxf8gIltqzDo5g8ljMONtMiTkZFyF6UBr8IGhG/hV+BK47cxyQFjbAUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748029794; c=relaxed/simple;
	bh=+wEghnvfd6y2Wu+w3wj/uclVSp6M6L4EKD/BCS/af3c=;
	h=To:Subject:From:Message-Id:Date; b=jJCG2XygWvSzYsl1TYIpkzgssvXcfqfMbL8Hq6APavoCw4/wbAAjio0eyUV82xZCDpaP8Uvnih6X3Oo8pnQvUzSJbLcKtS53oYqrm1QV5dQ95jpzml7fIiyGygYKd9OMUKip4lSJ+Q2U3DNJylJcm9X9rBbUp7dHA+CEOjonaNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASuN/rvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASuN/rvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6757C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748029793;
	bh=+wEghnvfd6y2Wu+w3wj/uclVSp6M6L4EKD/BCS/af3c=;
	h=To:Subject:From:Date:From;
	b=ASuN/rvcdKwKg0zjguaXYQgubt7Z61tvp9a+wnGPhA4X1ajY82dVhdouiz+Uir2HC
	 gbOK60Xo0bYOlO9Evy8sXWSKPqC31sBEx4CNEyoRuOwcMcFcj0gaC8ohDzdKgXnd+Y
	 U6uognwl+YPGlM30u2NyRtZgSG47kXTouWNvcgkQhcdsd0HEIxtFpFlOva8rpF5iDA
	 prtwmEIE1z56UGpLOJnqGQQD5zhGDuyuYezIYoK/zTx+u+iCielYtSwJyBpKRgX1Em
	 VOOIu6gGWuKYXGggbSpJ4avVpezg1cVaY88CVIwKvG7KjzXrAXi3oVCy8OLiMLt0ah
	 US03PUNHtS/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E68C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802979358.5826.6881518098064801638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f598c2e29c20151806a0501388798655a087bc1481a25041e8cdd8358448c4ce
Date: Fri, 23 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748029793
