Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372FE2D1905
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757975394; cv=none; b=sxfH8iiHpeaCDpZsJEQRXxoDf+yS1upL0JCPFmALSsbCCYJcBI2gB68ncmPGjfi/KsRB2+N6x7M9Y/WbFJwy90AfUsOM0K2lLulZ2xpDcJcj6sYvFpO74s7UIy4fwtUj6HDvcMvxrZUA0lzndL/NoWv2RtWeFa0hiXP1C7tnF2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757975394; c=relaxed/simple;
	bh=T5Fz3F5pPaTZfw/BMTMq9KPDoQiqxGI8fmv/hmAh3EY=;
	h=To:Subject:From:Message-Id:Date; b=UPQ8UjXh9L/3z9PX/6DW2wNCuguUrcPRfk7niJ1I6ApCX3dkTYIZCIbKcxrRxaCTdFgfgywJ5UWBfI+zxQPYMZ8QAdB7NqxB3TVgskUryfowP0+RYKBMibcRKneArcKnp1c62y5IRKWM0ZWwzhKFqTxO2rM4cGkBUDGegZQw0Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa+foXAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa+foXAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9207C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757975393;
	bh=T5Fz3F5pPaTZfw/BMTMq9KPDoQiqxGI8fmv/hmAh3EY=;
	h=To:Subject:From:Date:From;
	b=qa+foXAZac5Gd5gjzpNvVfpe7C11D8x5phPb/CMYhHoM68vEaL5Sip+behWrKYTZF
	 93Vz6PZtd+RxGm3iAyPymbYQBLmv8zn58bibXC+v3qLdCV0Ur1z1JsT6FOxbavZRGO
	 hUxRLmtxGqvYIlXm0X7s2UKPIS7NxN0A+wPfzTSlBULAmzFYaoiZDvs3kgVoHJZNEu
	 O9lXT6ehAPPFqBdpvcrbUHlsVrN4zn1M6OWRAINxADKmCb06LqRx1NhdfTlJhWKD5I
	 fD7qj8KSYSqPatEbKhEANIbfeeYIUui0A6SrDq5AVbY8qsr3/6N3FTPQi4HffBbRMr
	 9S5P7+iyUWZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C29CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797539357.2841.15185321608411748863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b60d9606dbfe0806b5431e92d46dc55a52cd784cab577a96c39a546206f28db
Date: Mon, 15 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757975393
