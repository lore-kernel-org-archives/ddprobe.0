Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B578412E55
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710477496; cv=none; b=HxXTQaBLKYUmdARZeVaLaiNH2jO3DJYAYAhQ0TELeIsmEMTrFYbmNptMTMd76h2YJBr36gu/Qri8nDiJQdll4F8B271AgTlM0KdBj9//52gflJLnXbnZNE3MC4QRtswIy9Sl2iCX/HoXthE1Af1+PPu2Iq05JRvitCCCf4YgKJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710477496; c=relaxed/simple;
	bh=/K6AB7TwKGXX+MDbbWiTnlLYdhrP3mjxoeWi3oBDglw=;
	h=To:Subject:From:Message-Id:Date; b=o1LPL7hWFFhgPzNmU+Qb8hHPOvpjOUwq/mmprBJck+9W89lnrVhJlD0hNTWYXUtHKofAPKtGLZdq8JF4/rcysWxvDIlXHqZQvsSptkoIzzkDSAWBN9ApsPKba7ztteM3LKX+v4jP+ngcGfeeXd+0aYa7A96R8wCTVN3OiCMcP60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foKu4MDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foKu4MDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4A7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710477496;
	bh=/K6AB7TwKGXX+MDbbWiTnlLYdhrP3mjxoeWi3oBDglw=;
	h=To:Subject:From:Date:From;
	b=foKu4MDPVsktxwNsPViJ+aT+DmE0pq/8+eDQecBmasd8H739EU1fAOO47n/Zg2v2W
	 PQ37ilSAna9f+B0m70/2yESuM5vEV5M3isCFtvG/V4zcUY8okrImeKO4pR3MTOrssU
	 XAFoLGvCRMRcqa5KKQURhTHgwW3nGIiefjEk/uoyn8ccJXDldMWcG5OwVptbYG2W0m
	 v3stFYQaSzaDoxkEil8Z70hMtB1rSd1TrYWdWCRldlYRcmSnFBxLAVydv/V9DSr+59
	 a2kee7Ws59cdFHzgGwCyuoRDEWkyeHqtnkJ0sFyURGO8E4bsY4BNJOpFAcpUHzTPYq
	 Q2hDjczOxIOVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1ACC54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171047749637.15336.2043130230713246186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa5d78527f47aa30961b1375c14b4c13ff145be7a2863ff30580ba3ceb91239
Date: Fri, 15 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710477496
