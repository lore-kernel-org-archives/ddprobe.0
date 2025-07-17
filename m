Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C882853E3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752742194; cv=none; b=jPrjz5uLr6ND9y4Ost21WCKSTWhQjjnvNNs/evbezO73c7+IJoo8AVdpDGArO6vMzYw72Ye0wpvogkOmz8P51JPQdEEL9jX6RbPNjV1krAxOG0dnlQupxjFgA63x0KOwAoBRQdsD/SqOOK2T+gsDrzw5+ryPNFw5ArB8La2Cxvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752742194; c=relaxed/simple;
	bh=aDucwXqZ89UFBk7vfoyDRgkRtELGSIB9HehprzvMZCY=;
	h=To:Subject:From:Message-Id:Date; b=OFlbCEq0tyn11n1lfxKiRL7qyBgcwJTOK7TLMEO3PIeQJrSzEcos3u0s0dPW3P8iQWU6G5N7yT7T79QZW44qhQbdNiNUGnDaoh6VapzH8FQQDBlLq5rnZMM5Xzsyay1TczY7UM5YsNeb5fglWN8aSfbyYrE8hhagwkiaqg3fvPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIPpoQxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIPpoQxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F76C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752742193;
	bh=aDucwXqZ89UFBk7vfoyDRgkRtELGSIB9HehprzvMZCY=;
	h=To:Subject:From:Date:From;
	b=WIPpoQxq8OoImoti6+fX4EBdgZ10bqdKjRRLeVin/dnxjs72w7dBssQMrIYnVdNR8
	 2cIyx9abSc8yTZ2aC911QfTZJGANhdpFwIpY8wlfWPy44FRdkpsPON27RpNdyeIKhJ
	 qgXVnu+eHPYor49aQjXeFF8rrbH3XfuKQ3Z3LFl2PR17BL7nl0dP78f2JTR2VrJx32
	 rQmvcjt/7vsMegXQfS4V5ltTIaMTBsdAm3pu8WeC5fLULj7G+tAB1IDU5mpJ70I5+G
	 DasRa1zxd/GGapmgYfHLaDVOzMiS2Cn3Cx/uVDh4NHT4uYyW2tW2zuwztxpzaVSIlf
	 IwEGChbdpv4Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97163C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274219360.17919.16788400208167583583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0344d487dfd7ef0a08c33016fcb96ee92bdc98187b173543be59aa1eb0423706
Date: Thu, 17 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752742193
