Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4FD224228
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748984394; cv=none; b=LHm7qCGcHb8jhn8m9ODJNiOEif0LaXJ9WpfjAZBeO1QxJxKj6n/fcuzpfJT52MVkH79i5PCf11S7tcp45cKZBuOGwOydK76/y8lt65TG58vmyJRlj0U/jutGBy1xkuQukTe9+cHrGBDtav0wiAjg3QrJ0bQ+Z2qOtuR0PN8dLCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748984394; c=relaxed/simple;
	bh=Dl9Y9bh93u20sRoXJb4FfAlc8qf7XsQRxt1NircIwqo=;
	h=To:Subject:From:Message-Id:Date; b=a5hTQxgjIOZj8WPbsvuacQRSQThJr0X6DRxKTw3mVf/o7Nca+XEz17zxXRnr0psuhBfHAhXwsNZn+lk0uijp9br3ygym8/B9tkBgwbWy0hhFencsPRePJIh/3s3DUOpSg1rnaPTDP0UcdgAsaTd3RNYzuHj0as230MG4CO/UIj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGegFW4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGegFW4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748984393;
	bh=Dl9Y9bh93u20sRoXJb4FfAlc8qf7XsQRxt1NircIwqo=;
	h=To:Subject:From:Date:From;
	b=cGegFW4Ue0ng9/tmI1+iGrVKKNggTsAFcUD8CLe8lIIKjCKVADrmKoLf37RKozUhJ
	 hD2gVH4wxkiG/Q00TCUuBpe/1PiJqPKywLEr3noZn3VJplaD53cQfXIG4LRN4dT/eZ
	 RzcwK87VeXdc9/caF4XWjXFBytjtTI2JpxsO8RBPkz8iHWtVqZv/18QOyjKDiA1eNX
	 9l1wdWg275gMzP+BGVKh1OlmJ2RXS8L+hHzuxMX08K0dVXJ/o5OuIFIbgUr0pe/kSm
	 h9JHZTut5HQnY7bVdpn7XsfFtDg8S2M6p+IPy1XWKhZf+EzrxPqFJgfyqQc3/VRwi4
	 Rl7mctoSLclwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F021C5B552
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898439357.14031.17514241271783590384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d0eb238326714d6954e8221f8eead6b34310e0e190f3005d2312383c368b99
Date: Tue, 03 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748984393
