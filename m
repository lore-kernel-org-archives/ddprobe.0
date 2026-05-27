Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08184330B3B
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779922354; cv=none; b=NZZ8uOwGbuo0p4V8QMT/quNiiPl29N+lobVnvn32QWHTL7r3kqVFrsJnOWonXxP9Sd/4CWjmmEg6gEX/h0k+piBaZetMAZvat3BaKwNLTtzOQEvp3UQ0/dObvBaN28ANDG+n9Xbnr/psvp/BgNHP5eZn8uiXtALicml7gP0zQe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779922354; c=relaxed/simple;
	bh=cHJZo86ewV4g9OIG/WuwI062kl+raabmwXePtbVQRBM=;
	h=To:Subject:From:Message-Id:Date; b=phlDRivcfjnYetjaLG+orZIpWFbWZ/Fxzi4guj3hkYn2YafwIq7s9y/xoDf07VrmBvF33N4Tj3J03wpzc5nyW6jGZU0XQjQjEFzdvqxg1DsofnktWQkCUXoPtBluu3em2sZeqOgwc8PHFgvWLEaiFWphSKUeCzZQ35kC6CAkt3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRLl4Gvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRLl4Gvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0308C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779922353;
	bh=cHJZo86ewV4g9OIG/WuwI062kl+raabmwXePtbVQRBM=;
	h=To:Subject:From:Date:From;
	b=dRLl4GvyEFk0Q0xuODNjvcNgSqf/u0MPqGxHdMPaegbIVPXp2/+XZM4/6mH94U0DJ
	 ZmC2h4TCw0M4FSpajsp1yt4Q6tj+irA+cX8xHbCk+yctd2haemV7ARrREchf3sf+U/
	 6fKhJH88WfPn5t/338kyYPb08ENFITHczhRQLF0tMsrYh/L7nUwEAvgxqeuJR1VXqZ
	 ZLR1Im4aeW4eDozgaVf033zgeUoIh6n4eXReYPVrlX2HsvobcxCJhSYuTigiX11Zdd
	 5ui/pCBUmWMPSmAIq6bQRGSdQwJ80lhxyttZwuuB2Z97DY4a+IeTUULdulKln2fHvQ
	 zRJ2W/wMKccDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82CACD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992235368.29887.11863211620674818484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b20da3e35720639b873a53c5aedecf9f16e9448c3737459fbb79cf9db9fd653
Date: Wed, 27 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779922353
