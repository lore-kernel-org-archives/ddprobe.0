Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB6A23C4FA
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783883914; cv=none; b=h/iUfvOjF0+vyE9FnETGQeLtQJsectq0XQzxUP+BsaTNyObxDPaW2xxTT+4zR5Nlg7dbnK0jTie9Zy7arM8RsikuAdwx+hiEDo9eBn015Kth4npSjuIrPJrQcytCgOHwYVzLIdilyzYTAS2s8H9V6kfEMNQeQkyp0l6Ji5qqpsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783883914; c=relaxed/simple;
	bh=WoRQ6neuXXdJRtl5OpXOAa7c3te2E8Cpui60sxF4DM4=;
	h=To:Subject:From:Message-Id:Date; b=mDGQLmkik11WaJxy7kVDMR9XMZoMeZvZlbaQvuezXbZ1W1e/kV1mdw55xnszShlTw4KC8bVYpnc7/WZH4iv5B+Ha33hcRF2TgF2KpDM5a3hNRA5CbqOpp6mJ0ZErAfS0VgB3dhX6NYnN+uTyY9/rW1X2EGytURr1ILKJToppPdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8l3XVpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8l3XVpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080BC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783883913;
	bh=WoRQ6neuXXdJRtl5OpXOAa7c3te2E8Cpui60sxF4DM4=;
	h=To:Subject:From:Date:From;
	b=D8l3XVpRU4ojCiBd5iDtczvja3y+4f0NlLkhjNweeop4AxGPrxkBFvZvH29KY3d0b
	 54U40dvgy7jF7FI1WEGYugvqFSr1opVdQnYj7rtLxJpnPmL0sEVa4fFPhSRpwAtjyg
	 0BERoDKp2ihJNmTc1gIequPLakPf3ngE3WxYnrHnsgNvPp9QmhscD+NU9Wba5F/CZe
	 UjEZKjZzF63ctk23ox6Np/AZ7GzlNb/6UveN4lFxp3WEFObZjteId/JyYDbqmRbvth
	 9x0npNUX07eCJm4ctevRXB/ctTEZ2rwGcdl+IJ50H4Yhc7hcU/Qr2Tm6EQMfMAw798
	 VumUIU61S46FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC41C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388391368.4153.10519413412383250861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d166be64db5c4e2c9f3524e8672c16bd43194bc6516739a79fd0959b13e62b
Date: Sun, 12 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783883913
