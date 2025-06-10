Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B724676A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749595194; cv=none; b=FzZXIkKphH8BrYeCu4X98nCR0F5PgjqMOa1itvjXDRchO34IxoERk6xuJJ0QsDcVw1XnX8g+CxPSadyDf2VOQjDY8TUIGg7Mjpvh8+ur7/mFPaMKB3u3UTUJKAmPQ2HZ68YevKqps/y4TSHsrdjTPhXR6yqKISS3W8k9e0so/m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749595194; c=relaxed/simple;
	bh=pRW4n+O96oQiL18fxGTWZf1szdR/D3Doqjffd8atfK0=;
	h=To:Subject:From:Message-Id:Date; b=W0net6aVYxLdKwSSyuChtzVkmtoWhpHRqA6qEIzHOrxQ0pvHCm54sGObzoTWZsOPqx/uo4cM8i3INjXiuVGKq+CUdDm8ZU8OxmrcDitDwiDb9HnA4zaQDgsLwzUUX2kA6V8NVA/VxyIjQgLldpe6/e59th4E0SvceltuvTrIfCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfmtlIC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfmtlIC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1216C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749595193;
	bh=pRW4n+O96oQiL18fxGTWZf1szdR/D3Doqjffd8atfK0=;
	h=To:Subject:From:Date:From;
	b=MfmtlIC+iDExjmWoriB8kaNo5i87kpNW/hRBsDaeCdjeECwkwYmSECns3YmvZ0wNt
	 ifHpIhxaa27WaigoP2pUhYsFsVGkDA51xtJvVPcsXkB/e3bbqChzw9XV1sIF5CtkiQ
	 0NCfXzQpS8Fb+aJl/7KjKZq+WOFseQRIxfzt36FnNii6D0/GUJ66KMUTmuawAXerzM
	 nVXhhPtx/J3CJKsLHjfQ3iJHdW1wO5tDTt5QzEdywQ0siIZvKo/N5iV7RcBFakhdLB
	 oWX0udbkJtGGL1y2TaJUi6jmy5HC71SNMECEExtVFaSPb0fZXHzo5hOqCS11E+GLDB
	 m6Kb/Bg5MAeig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90094C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959519358.29342.17424790451300066567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cff74597e245734062444294215a20c097ead8fc5fa5541e6795710ef920be
Date: Tue, 10 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749595193
