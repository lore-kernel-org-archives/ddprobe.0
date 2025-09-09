Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27979285C97
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757461194; cv=none; b=rAqBC6aO2NAJOHbCleuEE4RCjyrm2A5P/SO1JdGhPx+z44lEyEV8ZkX/w6/4yTtmX/ByYjN/3cu3W3Ap6mZ59pWgfH8ECw05YXirM0xLAzdSqsTdom5LukHBRWiFKHwHgIgAg4kmbzPAUYOz2l2mEj2brGtlyzGKmiiWzTeMYAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757461194; c=relaxed/simple;
	bh=Iu6+iSTvHwxi4bTMWi0Bu8AyFeOtavSNXygXiGvXCgw=;
	h=To:Subject:From:Message-Id:Date; b=jvQ16PHlikT50hqVylQj+A+aGfF4FeCiYyLEnokYBbbmEdLsr6qW6iwV3sWVKAkodu93PRlesldJEqAxoW2jBeWxEMTFUrxtVgJA3xLxBum/O2DqoVNSIC649Ct1mRFeuoXKQ6HSd4jH5uFbplIJZjTsIX0JgJElO1ZRye//6rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtWBW7f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtWBW7f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C4C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757461193;
	bh=Iu6+iSTvHwxi4bTMWi0Bu8AyFeOtavSNXygXiGvXCgw=;
	h=To:Subject:From:Date:From;
	b=dtWBW7f7i90tQKrCQ4dxTw8qDw32W7dUJEF9ZR/k8j1tgud7yOawvD2djfbOgzaWc
	 Zhsz1MsYUlg735LugMTKXnO98ybd2FqQc/O72mazVY0uqLCVRsBF0LAdE6Qh6y5nXO
	 XrKkTIaHBg7iBEnQfRn6LP9yYXP46YHTSqxU/1NTLMz2QS5My22Jo9le8t7AevULdX
	 /s11oT1odGoYAFEC5ce+wnLiJSv/wH+RHf8SC7EMQ7FSOMsxc86Olnxk6GsvfCbO9H
	 V41W4qj3UQRES2JHeP9qSmiUY/q+b4ACu2JpYPO5k82WpivmwxE3xFNd8sFaBJhodO
	 9REkp+2JLMWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E0ACA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746119359.17718.14521758242322011991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f555a4c47ae64e3a44b8c747305efdd340ed583d68be7c7df881004cb1fb0e49
Date: Tue, 09 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757461193
