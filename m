Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DC2F290E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765561974; cv=none; b=TFAk5UCwcajXpWU2hQpOF0XM5WipbaSVDrUUfab5jT0vCfqdh3i51z9Ift9swGEBrO8BUGLQVxvshcMzs0wgiVLmPRYl87vxgohdknWOcGkBKNvvUz2zcavMAMjuPod466aFkij02DTDuks+Ug/k9fa03hQRXOrGxFZvsRraQQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765561974; c=relaxed/simple;
	bh=xxaXddJKyCRuhgbhwe4U8P8mMl0Fs5mcnHuuZpqMB4Y=;
	h=To:Subject:From:Message-Id:Date; b=sEVsCXOXp0d9mb8qiyHELzx0dTLgyf2c+70Kv3Cp8w4vTQvcyubqjQA5ZBtpMGLHFC1NiZVW8ZFm4wnZHVhizYB7OXCk8n3cwjbOKbdFi3RJ4150Srus0SyGaMGw21a0GvgHmu22WdSBj6PYNsv8i65P8DuiUuqKGIR0UtZFQvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB9JtE+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB9JtE+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3425C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765561973;
	bh=xxaXddJKyCRuhgbhwe4U8P8mMl0Fs5mcnHuuZpqMB4Y=;
	h=To:Subject:From:Date:From;
	b=ZB9JtE+gOoLeoYwvQs+izF5rnIn12Yl/kXs4J9XIaRTCYbpvX4c2dlBpL7odIzJky
	 qYsEPFp9x8oFMoA3Fb1aSr6gz48SZTkDoLuzRHLUlIT4D99tMfwI75I3CwirkAKCSh
	 zpQhBz2cZbf+RxHBkEXs1QVNIFoTHU4JDOyUOSoSv8ifbi2TfQ/z97A7ANOdJC1vwY
	 fRoaswN75WcpiyL0vtYXDeePFe56p+LS8b81+rWCUxZhzDowa58WdWXG9lL7guP+ZZ
	 tk2XlrL6SL2UcU4BlgvTUZqe1RA1bNoiWYNmabKoeQW7U78UZzWQamg4zpBZ3LJyxM
	 OVrbiCR48C0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936B9D59D7B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556197359.30629.17307280142482259898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec1ee0276654728237729504bd02be0a2025ea1cf83bc4d2e95ac776b1d3b0
Date: Fri, 12 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765561973
