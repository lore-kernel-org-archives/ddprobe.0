Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DB217597
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756081195; cv=none; b=U3mpdHTNcetMA/7YiJKBl0ftGjqI/RtAJq6szDL2Y2STCqP+DasUzflLgTSOYf5P8RmeXojxzyDkH+MEeSE/lx+inK2Br30rfL+QfNg90tJiyThiPdbuyP1cxjHv+HRBT13vRIWR4z3m4d2sJ3uTNtJZ1z8bqPSRAELrXBPqgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756081195; c=relaxed/simple;
	bh=uYYo71Vno64CDLSsGI+vR1Tct8Xn1f9P7O6aEXvcTlc=;
	h=To:Subject:From:Message-Id:Date; b=sL6Nem+RrcCiDFGU3ZpDjd2t5ZHX/mD8ZU7AA6wahJeuzX1UBttwUwYk4pfkgi/xBBRMhwQ3VT6NoTWOhpHgzBaO3C3KGrgaA1fIjntWIHOXWOEfvT3M+qRlJ2Tg+BvqfXmyKcCAJVGWoWhGPQJM/d2YDDuL0iMTQyoF/sl7Dnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4BIgrJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4BIgrJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6746C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756081193;
	bh=uYYo71Vno64CDLSsGI+vR1Tct8Xn1f9P7O6aEXvcTlc=;
	h=To:Subject:From:Date:From;
	b=t4BIgrJrsPPd2cOqvtjkFAkCnJh2Q/ddrd7mGH9SbmBvFOhMQ8I/3sfciz2Wg/Vlh
	 y7EKrHcmCOuGIKTIqeWcc250OMnWeq3r06QuF3ZDg0/easP8vi0MhqAVx2l8zNkFMa
	 jlmqwxTfCa/ZyDmfxS6LJJ23+9Ki6EF2DFGd9ZkmI/KQ4dm894fIQdOpnFXW431D5r
	 OiHawphIg9+lpF70H4csLd9fDil30rItZw11V9Yp6e8IFhl6mRiILXPHqkhFFMMBWW
	 cO/E7vgYlF6XDg7xnY62TE9EcSTOV1n0M41DXF8rXgsxSfdQ5dFoPx5ETFjc3dEs/n
	 yqeG19XNzJvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94201CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608119357.19352.13678161238336643078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2b0116b83a27a6c4f2dc556597e8ff6fd186d9e7f6030628ecbed5d2da3281
Date: Mon, 25 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756081193
