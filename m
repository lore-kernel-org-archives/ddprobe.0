Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FC82F12CE
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557994; cv=none; b=qu2zLCj9dRNxAU3M0GJvVK8oCilDiIjp19bjOsW1lavXA5nBjlGscXqQeaNI8q1yKqiPH9cVbIQrJqBroyxtsbuskSewEf7zlIvEDzHiNNUMnXsoUP01m7nSXcEn8CvHPP3BqDoJQ2HUFOo86FFnusY1hJjlr63nqZPTchJK074=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557994; c=relaxed/simple;
	bh=0aXwQtbUd9VFSJEsNlTatvGDOsH9AoCOyC4pGOuDyO4=;
	h=To:Subject:From:Message-Id:Date; b=axidd5PbESpjFp3ltxGkwLFOZMMQqUIrMmqtdYm7x1+y2eu/2TX/MSvl/DpSsVV2Bhl0XPZ9eYcyQVeNNV3gmIERM2miFHBhd9o5+cQs2Rw+8PY41hx4GVzrPaLUL0oi/Ne1fKvIQ+V7+w+EOPShP/tAkWObrdcaky4ucN+9BBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqrMf3wh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqrMf3wh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761557993;
	bh=0aXwQtbUd9VFSJEsNlTatvGDOsH9AoCOyC4pGOuDyO4=;
	h=To:Subject:From:Date:From;
	b=dqrMf3whK7wc7G5KsXmpbSIOZ9PB/eV/rOblzvSkO+fFwl7EecOhExgA3c55Quits
	 HkyMMhSxn2oRBaLRL3POtMAI0CpNoRHGu7nTJHIe/H1mKS8OXEnOqMRJBSY0JQdn3e
	 GIEvdDOODiSz2inldrs+mUTpFhyDJmcc27XiCDxU/ZXEHQGuPwlOnjKujpyxbLggjJ
	 XqLkMPdJQ6J32dOSFEfJOp/DqDuf2Xad3ExajefXdlUc1Th/+GG3CyIaLaqQcCzdYE
	 cdkgI88pWpz+kSuDMEQF3/umv6Gagy6/unjQhEAsutubredq3u9zt3Ty/U3PgoGx3C
	 j8h7wYwNXQfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F3CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155799357.16234.13222484685508799783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3527dbffa35b23dd37a2d1d39b2bedb39e59b1af4672cba85c112999b49bf1
Date: Mon, 27 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761557993
