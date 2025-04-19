Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581DD4A3C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745036394; cv=none; b=QGA2L83diNyv88RJyliYUmcYrnp6GEA7hONjkThuW7N735n0c6LtkWyO9Cmfa5pINpx1ydnbufJhQIpuJ9cbtkw6Wa+VzQUW1sNzuPzqw5joBHyDJW7znacoFuibjSqxCwoIxIbn8UmtYtf4mcnUM3sLROChRLJLAD/NL2Yyx1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745036394; c=relaxed/simple;
	bh=xhEFL6gnt/D6dAQQlgh+9f79dnvusu8lIy80x3IHkJU=;
	h=To:Subject:From:Message-Id:Date; b=Mw6Hawy7b0e1Y2v95NUz6KD99QI3fo47dhfO5eVf7dO3MA/Ec/QWN57SUcjGRnWfb9oNzs+MO48jbbu1tZ3PI2prNZCFK5o1SD5YtH/aAe9mg/IuALOPGA/wCdIZCFD4ZqpcNEwQcEnhCrM2GFrD1Bf8xf/P4SWMoxu4fqvavtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgZeKvRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgZeKvRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3586C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745036393;
	bh=xhEFL6gnt/D6dAQQlgh+9f79dnvusu8lIy80x3IHkJU=;
	h=To:Subject:From:Date:From;
	b=lgZeKvRH3He3sGyvz/Mxuwtf0eR2w3XzFb8Jygpf8AsjXpVbYfCecB3/owynfBST8
	 wS39zWjNVjTUtTnZLN79rWSLN+zD6Rio//JOXsT5jLqxEfsLKCH7lbtpiDDI382Y/x
	 gtwHUlrE6KE01qAuvjwn3o8dvPoEGrmts8e7tVyEwc4NNFWoT7sz89FKt0LViBkq+Z
	 F0DVCO6bYQEXVWdDtmQH/uwLNFnOBaIbknmjaNNr8PAmXb+8dozFNvf/WYr8xMISJm
	 e/GsbTA8wCXqshCGpdp/JM3uZg9WwOP48GdE94qmDXkxSgAtS+rf+FtJpAiAH6dBPp
	 Z01fYnqMoZ12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A139C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503639360.15113.1011520655952786924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645dcd31dc91c010b3d177cde2ee02bcc3d3a01dce44691b5e8028ad97b54ee7
Date: Sat, 19 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745036393
