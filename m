Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2037D1917ED
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766779434; cv=none; b=ZBRIKnOqaRy076ZhQidoNkm9CkxWzleBabndFZD/AePphXicirHYEr/+YoAbxQrjjL/sYqwfvy/IDNDp3PXTddvS+hiaIiX+mwhyhAbhCXk4vnenDG4e3jLL7jOmw2GH115Q2Gy7GFY1fwtBqZyRNcQSIp4WMLFEOoytk4F1Slg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766779434; c=relaxed/simple;
	bh=A4f4L/QGJfDTZq7/cwr9eRxaKSRDOiZeGbMJSTVnQR0=;
	h=To:Subject:From:Message-Id:Date; b=IhrFwTCppiB1TLvnsVb5z6BpL7PRUUguAkH/3oq8I7uzTZXbuMqJKxTLwuvZSXjmszA7aiU0w9Kv2ricLJ+JWBuABoL9bqRyaG6apheoYGwxCGupDV8yIjlHEn8v3D8/uw3JYjWZZFRkQgF8k6zpneqVxjgtezViu/q+2ODfkHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQW6aF2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQW6aF2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC735C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766779433;
	bh=A4f4L/QGJfDTZq7/cwr9eRxaKSRDOiZeGbMJSTVnQR0=;
	h=To:Subject:From:Date:From;
	b=uQW6aF2Oa2dK8vN+h2kCmhs+hmHjVf5mWkicb+FXao+zrZ8vi4FER76tsJKPmJLcI
	 6cb5U4BDZAjZBgzwh02VOCIfUTWIJVsPkZYs5p/g3F+OfWggHM0xfstjp0XMvp+3tW
	 YEe+Sr8kR250yXCfFRCwoOHx46KWQ6dXf9rI+ilYwaE1WuLPN8tL5vgRRcyQBbQYZr
	 xsnaf1BLAlnccdHNYSoi3gMxi/AJEUWmWMiXhJ0ohMDXIIlkSa3tjG3PgTyHgHc0fU
	 38c3BN2LK3vqQ8cH3e9OtTBOgRJu0DH7jk+/sQCMlxR1EugK7wdBwP7unf/HaBmFv6
	 wXc3YnAqaXOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D56E8FDAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677943360.31683.4275147931431464552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167915637d6fc74c8819314f29dd26d82e2698fa3059c50ff73b6f0775e4e574
Date: Fri, 26 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766779433
