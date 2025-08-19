Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0461B87EB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755578994; cv=none; b=bQ/MWZIw1z6qVk5x8Mahg1ShU+zz61G9JJYgw0zEZJqGhJLlQRKUGJiLIimgxyw6V9CJgZmhDWUuHPG5ONFvS+7DfPTCaQAGBiCDNZsJ/rG6XAs+Yu4Dk5vx+nbYwBRxbKQY/XSYwC6su0LZGvuNb/x/jrT4aeErgbZs1MeYUGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755578994; c=relaxed/simple;
	bh=7+DIJr6j7VhwE9IpuEW+jjauQQgNQG7plej2WfMvt7A=;
	h=To:Subject:From:Message-Id:Date; b=tWSdJLLLbbs9j0ZEfzYHU5SCN4oCo8tsQAI02+qFQ1+UbKS254QHRF3mi5JmKt2g69w39p1h5lXwM8zDTz040iYBM4ck7ku6pmR0Yc3ZBlnajJCI13tVQRGANUkg/S0RIXTX8wcdEjRSVt4QikmPfJu/bi5FS/u+xkNeeQrAerQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKL4Lgp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKL4Lgp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E865C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755578993;
	bh=7+DIJr6j7VhwE9IpuEW+jjauQQgNQG7plej2WfMvt7A=;
	h=To:Subject:From:Date:From;
	b=QKL4Lgp4oQIfKE/AToOpjcW9j0VQOed8sSn0Iyb0S+AZ0jIZobUijw0woGInY2Wex
	 BQ56ZShlCDmot5EAKArz2ufh3f1Wy8GeHVW3VjcCfOaLgpeufl4lNO384sflyFWDvx
	 Eq348+xcKh8PZfNRYMakqSORCWzsv8vy+ESBWYPCoLs8vR/TCKeXPZIVTd4xwIb3Ea
	 lMq8eIXWE0kwgDx9E6uwkO2OLLLDG+SQb2/qUOTyopEjYx6fxql0lctx63u6+ogrJM
	 zKdYl9eZs5J+a860uAL4ul4mAtSVuVywqkJiulLeiBtBoOotXMQ47RXGQnb4YwA6Ky
	 VX/Mx2eRJ5Bvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8ECA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557899357.17022.5785720462759174394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b453d835b09e427e11d6e45fb5ca63c2a029dac834637b5e10213f85deea85
Date: Tue, 19 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755578993
