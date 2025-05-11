Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350BA1632CA
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746946794; cv=none; b=FNStgrjho1FHYFcyyu060U3oyjnycLi+7wFXHn3TUBPP70Z5um4b5E+m8Jt6ISxLUvHRHWAKitvRG6K53seWlVMddwUm4XN6FjTQANYqGDiIKX7LuyWzpfupLWC8pCczb+TmZdWSfY813amsUSAhEC/EJ7DbObVZ08Bm0xnBrC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746946794; c=relaxed/simple;
	bh=bipa2mtj4dYJXP2z9/1qQXXWQgbwTMZLHHQscB5lMr0=;
	h=To:Subject:From:Message-Id:Date; b=hWcc0lxyHxWQRTvSnc47/AbPe2TAH5aVBMqms9Bh6+DZm6CysbW17sD8LlroL4/7YnDgnWrRjPGTeZmYglOlKH3iyUs0H5VciLtrtumuLcGmGK29P8Wf+Op6ATFAtV5Isf5atBbppiOyj28s+MeVTD3uywlIBw5CypA6ncXQe74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbjxtBhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbjxtBhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9AC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746946793;
	bh=bipa2mtj4dYJXP2z9/1qQXXWQgbwTMZLHHQscB5lMr0=;
	h=To:Subject:From:Date:From;
	b=AbjxtBhOPtN55YgtrLQt8d85V3HQIBXeGMYr++pjGCRyxC7fv45fz6Yr45ibgxvdv
	 7/dCqObcOoU0FnguztTICY86nNz5L+9lCdyB2De/5gpDd4ktWjyYJrAu59Ujw74jH1
	 wdfommARu/l1+x5eKAnyfY5ZIvClYRfzShBY+9Ly6CU7+igNtlKR7UrYSDR5TA7QiU
	 KTPhM5dbbuBU/aekMiuMTUaPZuw+cVNRypu1jN6+64HOr5igiMxr59N7G52UY5QkGv
	 VUCIFTYIBAmiR2fW93at1ZFB8UgyDBUc4AFxq+5ccSWSp5R6ycMHeFjVFa6KC1i89s
	 HqAOqoJ45RlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438DC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694679357.19722.4441577288996396019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e903772959ac0002a57e320c50d2f1c755001d79c8c8b6ff75627231efae40
Date: Sun, 11 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746946793
