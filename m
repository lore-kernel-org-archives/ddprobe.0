Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233D3259C98
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758903594; cv=none; b=VfDJDKOTYEGqbrr/Dn1cX6Xoa5idBi/XxXiC8+38jTT+B8IpTb2zaG5kvZcE5VvlZqa/3MfTxcM1xJAIz2OI16QQvS8Lgrr07Lpkr5ESoDSE03t9pD4karqf/fCOQ0txqyYG6dK3iA1V8mt+hnP21NfSavnltAn/5maB9Kw3ppw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758903594; c=relaxed/simple;
	bh=BqR1YdGDUaQL6tdkKFDbkxmgTB0OYnWI+R86c3jwo1g=;
	h=To:Subject:From:Message-Id:Date; b=tmo+I6lUF9nL1OMYio387DKaUAh4OlOC3H+0seB4+aanvlib3gdq1WAxDvFn+OWRIaNBhXOGc79W5fHRGxwq+0FY+VNqJwNAjkuvLnkc3XOzSGLf6AD1SyepIArNA1ppqeQFnNjKxEa8hpljgrW3S3V/rh/pbv4gGSqOFQrVFVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smkd7Oqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smkd7Oqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA143C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758903593;
	bh=BqR1YdGDUaQL6tdkKFDbkxmgTB0OYnWI+R86c3jwo1g=;
	h=To:Subject:From:Date:From;
	b=Smkd7Oqor0J1+MdRzTcIicdXOBgVTu4c6JoNduV8HdihwqpiV4cAFvLAHmrTAIJ8P
	 M5WvJwkxVJMGnrnpMtB/ewFk9terxWk5J+cooyWnr/lh7//jhEuFRV/f8ZldM1oy+r
	 wa9yPE5FSAc7czOZbDwB30o0hr/QflqkNTmNdW6ic0VNopi2OKN0BtKcejPlr8TUW3
	 lCmQt7ofTbGYPQHog58xm3vUqAHOrH46m1KA+qaf2SsfywHkB9JVcy0WBur3SdXeu7
	 1NWV7wELEwceTxS4IW9x7bN1NGpZ8yvxB3EqqcH17VgQrZySI+cWPFTJeGIvMRORLM
	 CQTP9X90WQTvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99584CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890359361.18397.4106248257030683124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c372e63650e5ed837e1a18b135c50fbd06b2cb629f91b79cea5666059390ebf1
Date: Fri, 26 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758903593
