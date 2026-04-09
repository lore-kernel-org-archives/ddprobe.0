Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588173AA1B0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775726734; cv=none; b=tbPRwGzWE4zVLnri/8A4HizacHjfjwAvqTAUOHVp8enJZNRRoczEBM0cjFKuBD8OE3cSmMsW8oP5U2z9AjIfZiF85IzIyn/xWHMnluGbpVqvdChXJxXyheBmwXXvrbT3RIWHKxqljmzaV3E2wdeKg7FoZ2PB62ujteCX5/LY+zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775726734; c=relaxed/simple;
	bh=H3acfSTzi3O9VBa8Av01iR3nYV6QLBtqJLDHWu+lO60=;
	h=To:Subject:From:Message-Id:Date; b=B6uzVDc9amfenVC56fvjxxwXxWYoOwAtZqgCYkyq+XhTAVhdpJSWF4Z8V+R7j09oDFD5aDtGGHtvv2KYuHp2WwRcVYruGTnN+C0ismo+XNKlCSOikP7YxK1JCoJ4/gguZ2VMEp2E1xaLJttoFPg6r/q5VaLq4cRIImJgbfzqFh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrlY8UPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrlY8UPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDEDC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775726733;
	bh=H3acfSTzi3O9VBa8Av01iR3nYV6QLBtqJLDHWu+lO60=;
	h=To:Subject:From:Date:From;
	b=XrlY8UPSVO6pJEu+TZFb8zqk07+c8gltpIVv8MLU4mWwP+0EVaH5OfZs1KVqa8p0h
	 D6atiIhkQCyeDHguWsznVTxOd3OXu78u8ilFk7k/RgM7BSNZfdeFQRMJWn5HGBH6ZP
	 S4Z93vjGpyTvmK8NP59b5Yv0jPSy+2x1FVyKVS+UEaZ/vL9PCzy2wwj04CEckP8dRT
	 FhSABDgAnMEtuDjYtbIW5Opjwkb42T8WA9GVgVvsDj2A/N+r8IlGsXy/QiUrMH4P2b
	 y+MrsTM7IWq0/AsHqJiPwIbWu/Yz01f/uIt7UDBeRFltDotrDQVtxPc5AMM5gUGTeg
	 JW+hRatB7IMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB427E9DE7B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572673369.14648.15396972844975052640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6560537b9c5f486c6762e4c323ba9e0c073fd339ffaa9c83979c2f1bdcf461a4
Date: Thu, 09 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775726733
