Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E101C84A2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763599314; cv=none; b=o7f5xTpjwblXoiPJ73T4Lp63G0Fcm4uBjlJxRB0d8hRtkKVh9GZgTtbj2bSUgFoVPC10Fzyc10oiIB5XeQ7QmjFd1bOUnEyex9DUCUBe11jpGA+beLoWYQaluyvZJ65kwfxR/+0sKwRDwm2QYInNT4l04sCVtkiOixRM7llaa5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763599314; c=relaxed/simple;
	bh=bl2/EX818m/Fw5piLhh9JsXWjXWcMF/I7GLziDIVetQ=;
	h=To:Subject:From:Message-Id:Date; b=ZM/w9tXhLGjvC/o66RNV5J8Vo7OGDg/EFJIMz81XAPxrXjdg2AAKHytFb/2dDAQoYjkaKvgVsxniMmDFQbTXaBTWJgfRah895UWU4JEomSeD9+aOOJSbVMKo3oR/H21Z3YDqYH98SbTBFKSlswBu/pfkyykkRjgdyBPCoDbie1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inQRX28P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inQRX28P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1812C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763599313;
	bh=bl2/EX818m/Fw5piLhh9JsXWjXWcMF/I7GLziDIVetQ=;
	h=To:Subject:From:Date:From;
	b=inQRX28P0PSHBtICNyDWug1S0qfndgOLTrrdSmbbGVppXW4KwZeaYavBYZRV2vUzC
	 8IMbHuJpH/HrayBWSCFwX+OaUfmCYxO2sNnOZO5GMYP8FvBLYSy2t+iQQXrZtg1XX0
	 tozVONNXNd9S0SCAGQzLMzMvjEKhz5xTe/WqrXQSzauG+L0GUBgdYUPpMXH5usd5B0
	 CPnn/otPrRKjaW79z3Qa1qGteSHjDx1x707tar3EczqQqPbBSVzzhB7/gEzEYMVNsx
	 mzx494FJL6HTMOOnuQJ3YypXqxQpav5QSaYVgt7KqMlzfyKCyQkf2cNWA9cYP24Dr0
	 o7EyuFXmKyAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92478CF64A0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359931358.8821.4156388425435935435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1a2e27ca3e6056fbf3e1ea002414f539f8e7e292d1bc6bc33f08153b46e074
Date: Thu, 20 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763599313
