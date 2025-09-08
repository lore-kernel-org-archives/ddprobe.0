Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1903B2192EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757306394; cv=none; b=VUW7unOHSOVLBW8LsRzIyestso9unIQ2bxoY21h4hnQjas2CJjCnrb6Qlzzp0TS0s07pvioE/7AinQs0zKmpY7VQ3Cuikgp8VYZXY4qrE0vyhVNRenZhFxYXEIB7MvMU8ECObNNQPuCStgb9C5oQ2WbU6ZHNQ8OD3UaeBPj7QGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757306394; c=relaxed/simple;
	bh=x2E4KS5m+pTCFueJ9h1pPNzelhU6ATkIXI3YuBg3B/o=;
	h=To:Subject:From:Message-Id:Date; b=JQAbx2TUWS3LsrmdfQIKSC0uI5O+mgv7/PvEwtYktFX0Z252INCQKKRJoSETMezIe+Q1liFgW1bsdbUaY0pAQOIfrDjnsa3R2kOWiNbFhkfGNCN2ytx3GUPLU0e1p6wFdGdXlc3Ql+oQ/M/eXP1JKNYNxanyjb2y08+QfeIrcWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJkDal77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJkDal77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E72AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757306393;
	bh=x2E4KS5m+pTCFueJ9h1pPNzelhU6ATkIXI3YuBg3B/o=;
	h=To:Subject:From:Date:From;
	b=BJkDal77FTDykL9mv9/tnipnuzLgcRk73K09KAQUIUd14DX2j/H48cgD0VUGdNPpr
	 oBAIie6AUK1cEnndaCEYOO5CrExcJAOdInPOuvOYE1TZ3qMYYXqIveLs3IsCVFhcy/
	 3hMcx0O5g2wX3c/AQXLxI5Q98L2TVJhmSkJYV6iplL9pYm43ZxHHVm4zPlEtHd0lCk
	 1G/rZJ/Hzye8jTy84tmPdZ3FMlstiUpRGZP8tmVwlYdxVZbFm5vC5vfV5qtMO0gHde
	 Aef94uLQ529UDwUB24mHTIxnZLYMkoN1JP91XMOZt+2U6jn1M3ddWBbkE7JF/+gWCK
	 +DEwGtA4CfrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F342CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730639357.20857.529157397640703136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8faca431ac734fbcd7164923e2752f943bc3b88972ccd398115230d0a8653a1
Date: Mon, 08 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757306393
