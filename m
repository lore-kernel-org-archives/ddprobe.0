Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAAD2D3225
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766153034; cv=none; b=n+sGw9467rAVxWj0ahloJ10cMruCjScf/2ykIZ9E4saMUsXnMEw0bhzO9gztdqW9yh/p1SiPpAB/s53CRMZR72woqHi1YvYPhHrHQO1cUSqK8ABlX8XslumdlLTeynd/jfhaCXYsmlr/AKxdwmgvz7TKg+W+pVKFkF052Hv2Djg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766153034; c=relaxed/simple;
	bh=jmBg6wW0Ft6PekASa0v8cFNhYT4GhGxIen0G9oL3xTo=;
	h=To:Subject:From:Message-Id:Date; b=W7khiSfgj6pWdMUELUm0bxOg6V2qbBxGXUDJZu37uCkQ0mUCoyJusTJIyasS/Xa580nxwHH0gbwjbp2z+FuiV1n/oi112+5tab3SUTA3mLgGKpGMJrOX0WrKdIw81p+e2R9vcrWR3zbN0+W5Kvm1pxSm5pmXA4PrE1c/8tjcXFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erWbDZMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erWbDZMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6059C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766153033;
	bh=jmBg6wW0Ft6PekASa0v8cFNhYT4GhGxIen0G9oL3xTo=;
	h=To:Subject:From:Date:From;
	b=erWbDZMlj1Cxnc3dfxcoad+SpVCrbBtcKfelmI1Mqbb/nL6mPX1HXOcVHfuOo35MN
	 TFLqUtxDYnyADkzAM/4KwlxDPW1xhLog4VT+Ihg+qeyBzETwqH0tlUppcYIm8FrBKl
	 5LhxSUem5pf5Q9Ade9kkTgWC+8FHFI3IU+66mrQLw7YdC68JwAM8y1sKxiKA9pkk2s
	 ebrjhi4DBwc1fUyeHRXKPP/tZlWLNEtjde9PRxKbBoaJrbiDyKabxL9aii9SAWVSY2
	 l9/i5MjOG6Zpf+LCvj0/lSS0VTgd+q9pKZaOadhG9Fhe8Tuhvps6FYUyZmzDu5XFPy
	 HUH2HhgSb/COg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A43D7877D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615303359.14783.8212627786752619859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63912f8e1f5e6db3821143485d92dc58d5bac67c5f4b4493e9430cf04815f71b
Date: Fri, 19 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766153033
