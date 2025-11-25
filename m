Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286F13242CE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764076374; cv=none; b=fCHmGUPmnBEkNe8w/HTMPeZYqABSiihiHF5nOiLQ9JctP1QxSWcYL7W+doEcow+oOaEYgfnegj6BhXcX2tl8DDw2ATnjDnXVHrj8od7l4VFWy9hsFHn4SadXFSsuhnKS7zFQV9WpoHGPfU0ngb3Eo2kotVFpWTFlDPkytac6Qf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764076374; c=relaxed/simple;
	bh=HnHXAHHB15n/A8AHmbYwa28E3nuunAskuXvHEn/U5qA=;
	h=To:Subject:From:Message-Id:Date; b=mV+fsNYW92sHTC4cAm+lIKA1rRwar6UdXZZAjBtBmgZeLi1IRVwH1xiu0xAkHHVtcgcia7v1ONbIemhtEfzt0VwwNh9rpba4jVIZslBvNHEYMTBJd2ztu6ikxu/RymM04JZfZkfM/Jmuj7LE5S8gwYmUAFSotptYW8MbVKto6R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkf7hwvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkf7hwvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764076373;
	bh=HnHXAHHB15n/A8AHmbYwa28E3nuunAskuXvHEn/U5qA=;
	h=To:Subject:From:Date:From;
	b=pkf7hwvTZW/76RZWJ55jv9kbczHZjslXMnm8T6dCT9HIweWr6b0kfkgfWttfI+WLg
	 vieFNf/pEWvInwJY0AbLQq8ct8mv5UQZPH0RnxTpY2Vpsf60FJuzstg074uKIE9k6L
	 0hXvYa1x8nQigxgUr5SMgQBIIzqrFicZvjYy6cP3Z2Pe1W31xsfS+6VqBnXRCEiFY4
	 tNWoBvcX7fo7elr5V7AtroLFFKwEAwb5viozU4RV96H1KKRdui8pq4bl7S90pdkczn
	 EX46Y2HTwHt/GGDbkSZ2YqCAVYTeGUlfnpKdWkgDwt4pPVThSpO8cN1dH/otQqaDFp
	 0Qs5gQpGGdgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA9D0E6E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407637358.32159.8638116584601025891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acc9b11530c237a0f262d0ac1f5df2c01b864845947dd629dc4d03b767a5ef2
Date: Tue, 25 Nov 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764076373
