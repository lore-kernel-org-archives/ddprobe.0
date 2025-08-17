Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182D19461
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755392994; cv=none; b=XbohTVGz5g1mDI69orfrR1SscKIn7w/5qoKb6awdnhzLMj22VHY3XUJMMrFm46KFE1FbPrqR6rtvdWGENcIxHHitAtu1hhq1AE7BjssMdgePmq3lc1/do+i5B333S48A9tz0lFufhtSWn7MTHaMC0fENRduqS6VL8ZLYmH1r2Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755392994; c=relaxed/simple;
	bh=NqHNDdjilUp1pe1QfOHuQ8WN/AFKftBmtPKe/7dBZKI=;
	h=To:Subject:From:Message-Id:Date; b=GhY1oSS4qVjmAANcm9mZde2ZVUuYi65Fh6atxbZL7wHD6+mcvaM4Sx9j0b4nZ3lNDxszOe/724J7TN86Bo8thxShiZxzD7ybVKaeTnNlGqa4WWWHFYbwfldYfev7THHuMXkbN+HXVNHUcYshRn00uIeSQMaQlTolBM0d+PTL6S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0V4U36H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0V4U36H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F5C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755392993;
	bh=NqHNDdjilUp1pe1QfOHuQ8WN/AFKftBmtPKe/7dBZKI=;
	h=To:Subject:From:Date:From;
	b=P0V4U36HKPY5dldANw/QFMq4KWpE9pAzuf5W2LxCizrCDbuV6T6Q/zdUjGPjA3a6j
	 RARgYUHE3MV9BHN1fAMMVUAcIkGGHCPthrHYZF1a1xMy/mROQQunnJrhHQdqdQMxY7
	 kMsfW1X+svJuxPTNuUhPRSO9+fePnH3ZYvBVbxhQbKDWHoZSXqfSdWpbAzhOCGFgGa
	 OUay83yg5hESXbj/YB3JmG2rOmUxLHsoFN2Ip26BJZosnzxV5f9K/nlcbCAEhAItMZ
	 vvELp20aZ172SiG/nah+n4FkOr23rqR6kBZOhj8VAovtmNkSnVm71dXENS4JLCEXJR
	 AEMByvOrEXR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA6CA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539299357.5267.745996220118082882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3942eb51f79bdd3197a9fab8552c30de803269cf93d57a0744c0edb4ad0722a3
Date: Sun, 17 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755392993
