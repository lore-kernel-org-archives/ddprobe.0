Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130F9385509
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774938294; cv=none; b=Ht/uJ7FLksvWlj0nArc7ZNxZO90HdnRLC0MgFIU71W/m8tHrlEpcg0nwilPHStTZB0WxGn+uq7L9WUwLLRQGdgCwzHDcN5sCZf56a5RHov+sUrC0uENV64LM7t/UgkmWJ3gdFqtaQGz9IEJZsPo1Ovexq3AEAS/V77YcF/phQnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774938294; c=relaxed/simple;
	bh=EOiqeXWVRxccQZZuMBrpQxG/ncOvOXDULIjLX8LnWso=;
	h=To:Subject:From:Message-Id:Date; b=eEYGkHFOJvdR+NaVH6UfmLGZ+ckJ5JI8zv/VncZ5+244ondKf5BCnlKq0ZkSwbr7oOn2ZkECnPucufReAQrz2nD9PW+gzQFLpOOonyeuwl7LedFgvoUnDlDyoHwir6njJuKRAS5QZRjYFAXo4siX9mW/33OKE7INxfSzGtAwD/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVulp9Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVulp9Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851EC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774938293;
	bh=EOiqeXWVRxccQZZuMBrpQxG/ncOvOXDULIjLX8LnWso=;
	h=To:Subject:From:Date:From;
	b=AVulp9JbCLovnzrJ6Mo5hV8WJM1f0ibByE9Rp2BFjycGZ8xDUl9ELda5AAP0OpNMm
	 Ko/NnvBKcW/LRdTkaj9WdE1PZ91lOxoZLowuxn5eumfFJ7S3GhCbIetwqBAACdeCKC
	 FaaRLoUiK9CStJsrGxtdNsP7oQSBgj+P3MRkypI7mBedye2FMEUX2mzclt9KqPr2Da
	 Cf9Zv2xATvO77X9W8jwnhe7YKQR2VGYitySQZeZjNJsd8jfM83i0TooBn27ukqxaQz
	 u39gn5iBg/F4Xl/eaIGPpypEphC+Cw9913G6dQf8/Pu0N4RYnvXeLyXqV5HVp5OOst
	 fWYxPPAW6KuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B46FF60D0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493829359.28825.3694255462101655073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc798c273644457d0a39f04e7645e83dd438af32c6c2deaf5b337b77ab4160c6
Date: Tue, 31 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774938293
