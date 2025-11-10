Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD8F3126A3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762776594; cv=none; b=AT3gU1wTVTiP3bs2IMCJRf8GghgQKfkiNxpdfunJzxLAFvmpBujaXNZ3q6Eqn+KLeNKD+ixql6EGVygmr7LuStwJW5PgIOTiPYstq2caIUSNwfbl7+YOrSo7jRUbTsZ8smGaacrYhxXVR4Bvyf7yge8yKnOHDkf/uYncUPIMEAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762776594; c=relaxed/simple;
	bh=/3aEKZwH11ejIuyCbZaq01Nw6931zj/Kgsv6gv/EbuA=;
	h=To:Subject:From:Message-Id:Date; b=D2v1BI6HvH5fR4DmELgOlscDGU7kEnbq6UxxoLpI/QYk/8f3o9pphJpqBxJ6jXaJFtUagwvxHYJxbUBLNblcCuQhXTAyAxMipA3IxI4WSktWFCMxksF4NXkZg/GrgM5WFXt3uiTc1rpzQQY3Jg31Z5CS4p77TonodofkKazDfWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QezEC1cM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QezEC1cM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C421C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762776593;
	bh=/3aEKZwH11ejIuyCbZaq01Nw6931zj/Kgsv6gv/EbuA=;
	h=To:Subject:From:Date:From;
	b=QezEC1cMdbHfgc4gkm2baPVIHxKPboNwDgvELZWG0NFXVL6rvjsgZ1pLpCZJOnRj5
	 qr0VEqGv9Nz96x/RcS7ZO4Me0vHM1ADV83DmDbWVbCbIZupCdgmAaKKNx8aWGCma0d
	 0LJtl3hNhiqaYNzD8OqZ9higf6uY12aO8QwSv8cbrV/4guVEnAX+EQmrBXgb1AmqvC
	 NnWi3w0m2SiDu4kXDg+qGVGnw9rDYwVq+YSoFvbTTofeF0WXaEU7tDJ7i4LtyM79U4
	 9Ff3l4jngXH/LZHIdWN20CQ5tf7J+RriPooNqptEXgBaaNR9Ugtg6J/xVGCGGViyWS
	 JaZvObuayZHlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91147CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277659358.3672.5303109670030335001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92d6a4a831ef0f28e6b48cfc4ff767407ca2b86189842d999d79f821f2f9b33
Date: Mon, 10 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762776593
