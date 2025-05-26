Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB16621421C
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748273993; cv=none; b=llIfbPxmsF1XybsuCXA8UoRcCIta5ezS2NpoJ9WhBVaP+l9JA64bJDGQMEn5+XL9ykqL0zQLMMtn7Z07c91/tZZapaU9JOEBEBGRTEDFruBQZyBNhNiYC/pSg+t5+7Wuxoynwf6Ol1TneLSwAo1BFZzweEkN1AIXPa9HaFd38Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748273993; c=relaxed/simple;
	bh=6v+AAsVFmYmghzChxiosCwjHZDrQF79vWvIU0e48jto=;
	h=To:Subject:From:Message-Id:Date; b=SmL7/Qb12Q2DvQiBiyg8O84bx47waRQCgMF4i+oj7xUa8I+eKVr7oK03jvLMT5CD3KskdAd7W0pxUE+DJIXPT/LsrtpisGkk3jYXRdHmAM/O8JY/GO/DJb5qZ4+pvglZVkYBLKcmOtG+DfuK3v1dNAv7QB4QKtWDlCtlHEnEaGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stsJAgQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stsJAgQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748273993;
	bh=6v+AAsVFmYmghzChxiosCwjHZDrQF79vWvIU0e48jto=;
	h=To:Subject:From:Date:From;
	b=stsJAgQtUlIVq27ohbTy3GgjHyULuXssi+gYfHPYeunUgf3xJnb95TLGxdqk8FJ8j
	 JznhICf0pt8wc5l7ENUGTMYn23u6iUJ4S+OhZo0UBRHbRYsr+y1VqvXGF1cPBtGmcH
	 vl9t61TPwuvsvIcLfoskYm72rjNYfp8IBHavjfLd6jqceqqoIP77sP0w/LazX3eAH8
	 OUaicckOeZaTBfLPhFcjJTLB4BfPQ7e2MSHa5WHYcG7uzCzOjiyYOfd4uCHZxzAXWm
	 R49jNZ0y0cqDzsSdejxTAGk8UQNiVfUI4jIvZYrLhMDwi1q+BM7aulN8/O1zQBAFCn
	 QJE7MrHhC6AWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90067C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827399358.18458.11144674354898418714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6cb0ed7bc01338c5f0caaf03bf36b95cd0bf7982ee1a80704571c9dfbf44ad
Date: Mon, 26 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748273993
