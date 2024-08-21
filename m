Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353891D12F4
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724284554; cv=none; b=LZiDxm3sx4caGtsKsbNhmku71aNFw8hR/zIFgEJVV8L4gGGtWlsqDK+7hn/c6utjY/yyqtB/TH51uWTCMMOzmRw2jQarvqa+JwzjPVC65l0hlrpIVJ3ClbyrFdIxEstPCdzlAgvvK41p0dQ4AjcZ7qUjNxpSLEWhFhofEk+Y4z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724284554; c=relaxed/simple;
	bh=ChmMSQZ0KNRKvDO6mUC0Yuov3ary7PnSbq9Qg5TeR8s=;
	h=To:Subject:From:Message-Id:Date; b=dlngpROUv/1SlZFOSuVyeH/qHsXk82tqw+ppKHmM5qAFI3FfpDX89Bkv4d9ufyGSB4CxlY0oyDEYhsB/lMUqkKM1UOoQZo6zvdsdyZyRn4EkINL66k3rGfNO9DaCMqAoSpSzHD2eSvtb72fVqgMtC3NCGamh1g7ca37Q5HnA//A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/o7rWMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/o7rWMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241AC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724284553;
	bh=ChmMSQZ0KNRKvDO6mUC0Yuov3ary7PnSbq9Qg5TeR8s=;
	h=To:Subject:From:Date:From;
	b=S/o7rWMuiOYZXBW7MUpz2zsN/BGduZXPVewK8kCqz4hVUYrFZxVFDrT9Zboy99W5P
	 6A+RGkM8E+/aAZ5LfkQ4xgSHXb18Vi4o0eqA86eSRAOsYN7HgExZX/NJ0kMLLh+ZO9
	 dtcoDHL6QPfEtYu1xdKxJ9/wXCyj712VRXE3bKyIAZ4MtHRlrcGfreIGG668vBJSdS
	 D9FFTJT/OYjvQL0acvHwqtGE2/edacJlP5Y/SonTSkWuvjtxW2NkaXkB6Uo3IIBl0v
	 CO98/oAMzUta1Pomz9SPw7uY/jXdkv3HdwohPudXozEzPhSow4SfOzEo8BSOYRwMQS
	 nCG7A0RwditwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E0C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428455358.2836.5701724207153294430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c400ab8b28062ebcd3de8e5b7495de1b440ffbb486d18fa56cd9415e59cd82
Date: Wed, 21 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724284553
