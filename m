Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B033191D8
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763365314; cv=none; b=RaFmZVOsw/OXayIZisvMB/Fee8kd+EktS/1UP+pD38HR3cO14Fe1GfO/4YI4MhjVpAqp+5coMrjO2siO/zeChnBVD5zGaikAY/33UA3mMz8VlIoFu9IyNVCy3O6+Q9N9daOcp2+JW8XBD4BXWi6JkdZptDMfyA2VpsOOIBYu1dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763365314; c=relaxed/simple;
	bh=W1qQk9l6mvEzpYUSdxGCH7AtUf1IqaqKMpw0eYFQhyg=;
	h=To:Subject:From:Message-Id:Date; b=nOXPAoXV/yEGA4u0pBIriWxOUXIRtXWntjo10MlgVwx/tfgflbD/c2qfGnSwnh4npjjo07PMjapLI5eLtmdfLzKaQC/o3pbVkTbefpl4dPBUpnLEEnm0buJQo+qI55Oep0RfNb1nbiLGPjH4QoVKce03Vs4i3BxTFpzyzXWrj6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVKqHxUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVKqHxUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63B9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763365313;
	bh=W1qQk9l6mvEzpYUSdxGCH7AtUf1IqaqKMpw0eYFQhyg=;
	h=To:Subject:From:Date:From;
	b=aVKqHxUP4RuPOVf7gVpDmbvVhlB6dyBScXu+c24wm1QhLPHiKHjI13tQGMpsu7mii
	 j+qqqT/+J4yJSiNmj5D95NxI3qdBI18z4vJVfI8jIdTab/5wpG99U1KliQuzvr0uWo
	 vcpw6E8VAx/5bLFh5tnnH861JMHPHMeLCzxoQSNL5a3dU6Mg7At1CuO/mJfxM/udr3
	 WN2xSVaMeT9ngvjay6SmHJja+j/UnH0qcXp5wuq/IvlAYhTXY51ABQEEEMmTy/CaaJ
	 50pqMQol7qF7YmC1HCtqzbjMLtSaXlpery3x+rJFthZqmuyYBpnj4nCV5Oah+HerT8
	 mFM8oirHg7wuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5303CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336531366.14723.16101991781125187496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626beae6b1771b043de010829d9762925eb0d07579f26ddbe3f5bbc943c198c1
Date: Mon, 17 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763365313
