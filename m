Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34827B353
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774893894; cv=none; b=GWJh+b6gQpKOGQO9prkfdLo+IuTLtkr5MDdPJ8kK+ebvxGnU3elDsVufweZeHdBfN1ox3ih1QJg2J07bkim3TQPdZL6O60yq2ePgElz29vLBHj9HhftuHOhOt3MgyA0Xc4GLC8LS/3MB2t9+DCVV3E2g1RLxzB/q9kpIGkVpTTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774893894; c=relaxed/simple;
	bh=2baqWc87C2xeHPbrxsh/mgqFMzBakrhGEIULvLMEqTs=;
	h=To:Subject:From:Message-Id:Date; b=saP6VQCCZ7B1J1V53IXlG+YUZngx2TB3AmW0xY/+HV4rYNvKqYZieNe9pPyDPmD+QANQjG7+ZFv4mzu//BHWtapEzHbTGD3u7VzOHNI2WEPMXa9BN8S3l2bhkOybEcyyApXMdW+KX4MDT93UmCaRxdxvmVoqBiFVGCxDUu85kLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9Szo35M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9Szo35M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0397C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774893893;
	bh=2baqWc87C2xeHPbrxsh/mgqFMzBakrhGEIULvLMEqTs=;
	h=To:Subject:From:Date:From;
	b=H9Szo35MTQ2VVSfTR/INFoZxD3L9vordiKEeQT3NIR6F4vq9pxjzDr16O8GlXMODB
	 KW53HjTL/8yHxahmVK2McagRM7V05aYZeKWOmIqRQjImE3VoluOkmN8ci3PjjWZY8C
	 VHKo9qYtq8RRfkmklpdw22/RtCYv5sk5qipl5BY18hsqjaR8owWGjqjzBzu2GnW1Fl
	 JuA1nZ0BncXIK0bIcXvi46B3zjXlV6t7A/2c6XWkeKx3eMXqDYv572t8Qk/945aprj
	 wjC1Hw61AEq95WVtySs8PO75GosXITTtu1f6b0GANN9hgIkTzfzBCyDEkbD/h/Zi+c
	 KaQbFI7dK1tag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A831061B15
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489389358.32666.4372436321446541428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b58f7ed470b050bb045f066ff863ae1d1a06ef82a1451c6df0315d41172bf99
Date: Mon, 30 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774893893
