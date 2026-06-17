Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446083B47E0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781733994; cv=none; b=L6KcXM//fs+VELkrS7n58iLh7LjP3V+OMSuhM+vw+ddbQaDBbfbzr03o54Rdy4xq0pIjDlb7fygdHRrre6Uvz0N3otcoZneIxxZo/m6J/6bsW/edGDrhYuatrKTfK4/y27kZ43Wz6qCsLYQbsEaMNo2quMFzK4obvjKxnUKII5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781733994; c=relaxed/simple;
	bh=SZkbF191H+POIJNEsEPcrTTOS4rwRnnaoUMfhOP9KUc=;
	h=To:Subject:From:Message-Id:Date; b=mpxyHmUzkny5dF4eED/T3wNzy21NELOkUzKFGNS2p4PBa/P8J9Tl6Z6vRRWl0b52q0ZbR0IscuGSibkUkDH1KfWL/FBGZjNk8GeMucUtmNcM/G9FOguKkaze4UYsGQNMLXVyhkWaquy33z1w1RyV4o1HJ5C5YIMIk1prROduqKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHuRRkL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHuRRkL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC4DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781733993;
	bh=SZkbF191H+POIJNEsEPcrTTOS4rwRnnaoUMfhOP9KUc=;
	h=To:Subject:From:Date:From;
	b=WHuRRkL0yHwLD/Mbnj9JIxADuEAaj1O4eLbPEUtFUnm3v46FiTO3b5ypfShfzxjP5
	 7M/Q6uTKNBmMBRGIzJdSpAAs/JkdXCPWTk2MmQ+e1hN1wtIA/SEyRYkyre2URflkAu
	 Qb0OQt/oCeQMG+70tEiwrETXpWTx1rm+fI+nYjttxnWuV8y6lSW/zpimvIWI1OxExP
	 ViTgrikcQUJ5+kWLR6aurMGdVul4hBG/cn/XD8kYuKRTom4AWu3+ziWOTw3pczSoU3
	 q+Q5YUHmhpPsz1h5F5SY/VDMgqIv0xLyyCOE7cYcew/iTiFg+dyr9dYEQkx+Qn0sUJ
	 6KSVALC8U1bXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6F8CD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173399370.875.9209997808242935521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c58070991ea4a8e90e1d07114ca47377e9cb57069573ee33b0e97cf019a3689
Date: Wed, 17 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781733993
