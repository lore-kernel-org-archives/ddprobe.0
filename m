Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59883347521
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783165114; cv=none; b=uL1Be/pxlI8EKly50tyQXQhpKazZZ4+F6H89VzJTVSdRxksbllhymVwe6AHy7uCUHg+GaJZxfiljw8PIy9T/u37NP8GWKT64gVkGyJnbJsNX9NJ7a3/egg4ac1/pUgxrfHVCcfvSvwjKsEE/TgcxiouEW8pfI5Lod4Y3nP7kk3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783165114; c=relaxed/simple;
	bh=tc8OZhp8/zQGDDTUPG0KpifbAdDOownnvSRsoslKT7E=;
	h=To:Subject:From:Message-Id:Date; b=gm3ZlMb1YI+lXhcn5ZJHWtajDZleqzK1S+mXLqkhzrVLGIYXhETjPBo7KnF0TM2gFlIyGAuR5rJRFABbZnOsk3H6kQB78zoPVnsO7bBPkxyW2JNRXqGArD4co5lBbAjoKm8ilZWynbxqLtbVQfu4kYbLKagxpv+aXCrc74hTPm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1h1VnZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1h1VnZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DF2C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783165113;
	bh=tc8OZhp8/zQGDDTUPG0KpifbAdDOownnvSRsoslKT7E=;
	h=To:Subject:From:Date:From;
	b=Q1h1VnZq2mcjcQyNKVP71feJGo9FAK39amOfLuhRMh4uT0hPJn+QwxhBkS/83z0YH
	 MKp98s67i0qxIo1jivXloPXU+aIwcpiA3O7ETtfr4WZcH/M+MtnpimdgGpAMHsrHDq
	 B1eVLqaYyjJAfH3s74/OvqjF/mhhTG0MM9RBum+Qwm834+3v6vGxKaqYHukpe3JFjE
	 4hGYRtgxPOknu4pSEhigAcgsjruQE8KxCDH12HXTb2Q0MdhEdzLodn5971bKq+5DrL
	 XhMj3nX8txHnSzqHbocei5TGCebxZ+WFpzHThG6UCxqu4Aj9IPwbcgIOKnaY4oaiot
	 2iOs6xTG1uvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC3CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316511367.15904.16463755085029604355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd793a0fc50ab0ce350308db7c5d1a6178549d0a1d3b44e9f5ac9bcb58cba875
Date: Sat, 04 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783165113
