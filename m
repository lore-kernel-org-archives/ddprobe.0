Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573BD444719
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786981834; cv=none; b=ZFb95OPfA3fbGUczTEQLZmYsejVesorckWB9NcNCVfnWBKttPLjrn5XRaJJPTcSeGW//duLntEemg7WoUNWiRdwbfE3PDEaSc/Ha6RY9PCdQ00zO/mbOsp1iCqpYnLB0Y6D3pn3verTdcxeKAKWsD5BZJPTpvS2Yn4epZB4KyAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786981834; c=relaxed/simple;
	bh=jdvonTgCZYvCFn0bApEI7OASt6KjJlxWQacsoru/vAI=;
	h=To:Subject:From:Message-Id:Date; b=EPrvj2DsBvbuGga1nRR58VQB02OMYv95wYH0r0LPsrVa82tiCSvI47owQYEfa1kumtC5mRXxcAvfFcU/SDKwqV8NCqvU+VyUxcuoMMFMKiRmbziaA0pUlC7Bj+AqTlItmeRuZ48Ajfviq6JOb/oqs7MiuA1kBcUq1sjrb8oFFjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRICDV27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRICDV27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB3DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786981833;
	bh=jdvonTgCZYvCFn0bApEI7OASt6KjJlxWQacsoru/vAI=;
	h=To:Subject:From:Date:From;
	b=JRICDV27BsuP5TUnwOQypraPSpxBdz7aW6Xr++QiL3UMfGhrBRCxKIDw4QBxfTH1/
	 BVA02aTFodWp28EbpX0D1jd+wmS5mH13AHEOlBwKocPh27LXad1vEOu9V9zjgVlPZq
	 GzHdmUpEZ51La3hAQl9zvbqUWXfopi/sGboGcegQ9KwCPNyUQHjGqbjkfXUveGJ3tG
	 FM5BQB/0Y6GpU9bOVcXXR3M33L/tlyqLeRncHVy40SKMjnP29RKfS+Ol+H2Q/4rfMv
	 4XvBnvIks32NdTUDGsK0/99KRkripldli4xOUtr+XfWloyW5K4BG7hhq6p73YhoqSl
	 ZGRds8JIuE5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8AEC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698183369.20146.2844677688783679009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3871699fff2f5eab076b8fd6caa38fa15b1f854e5c324dc6afe87553842b59
Date: Mon, 17 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786981833
