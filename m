Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F814AA9
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725677754; cv=none; b=beNa/hyJqB5UTaq2uHjwUwp2vu49WMZHT2fDXr+dI82Bh6i+EeIOMq0oXwtyVnfrpGztNV7+AzCEfw38UeeCn0+eu1FfEeSrSpmT1SeiQ44mSTWoZ0GMlAK+LIB/vAanC38Khe5lRtguiCXbXkSql+rpk5xlvoObN0lCS173lDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725677754; c=relaxed/simple;
	bh=i6vtBkmBfqAL7Vr3FMB5CkNHRMprhY6A8djMG3j9Yzg=;
	h=To:Subject:From:Message-Id:Date; b=WuSQakJsQNFatcj4fsS9ftV3wXB549jHU9HrJJ8IfpJB9oZW1Y+ea/dtCY6FjAk/sdopzlzOQnK1WiA1apshwbGeowon7AoPNo1A0NsS7a1EmxEIyNpOxDAI/HpiqL9svvKVJ4NKAy/D+A6ro340pT8tLX4baWZiReExIrYocbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/VLbAlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/VLbAlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6FBC4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725677753;
	bh=i6vtBkmBfqAL7Vr3FMB5CkNHRMprhY6A8djMG3j9Yzg=;
	h=To:Subject:From:Date:From;
	b=L/VLbAlCS2/Kam2hJx1jQ6ehdtbfZsQBO+/XuKjT5B+nJWoSOEHl38gG7OKM5cZDW
	 +mbeiM494U5KV2IwQuGg2OK4q/B3N3vRgjzUITtFGhoTEalruZWVsPOguBATZ+I8MS
	 Y/dBitOaaSOoKQmvEmRFnPSbONcQTarvSrmMl0ldQwFCcoHLWNZZ24DzFugNQ102Mh
	 K2/MrEVSl1rU1RyZbN32XDCOmyvPLGVtZ6/t+ERUXFUvg2NZZ4ytVKd5RftY7p5i2k
	 kAjgxstYY85EEwSMKAPDOYaGvLOzLWQo2fhOFNWINiBT7w0+qFc8L7wFv6MDBt4Pm2
	 6FkQumXGejRsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731ECE7B04
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567775359.5799.10371842965954139924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64460304bf2d04d23870c92580765efbd862c496054f161676944b46e9c76fb4
Date: Sat, 07 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725677753
