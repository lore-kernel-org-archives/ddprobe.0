Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5362D17548
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712861363; cv=none; b=EnbaTa5OgecXMwzohS+BxIQSsgyOnax/4MdgvxFbW1Vr3Wqrp7xVSpo6jPHmLVUVWJHm3hbkWUThgcnJ9XWnBl+GKpKexxLJObqFCYT6f9Y4hsvVRCKIADa/eVnqiFE3c2f/4EhOG3o1GqZ8o+eiRgmm6QDVnkHA3+nCxnIZV6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712861363; c=relaxed/simple;
	bh=n0JuvGbb4KkvZb3YRWoW0kDqe6mB84TuxDVHqpXmYtA=;
	h=To:Subject:From:Message-Id:Date; b=rFu+5zXuy7MV0GYUWqm4iwml0yI1pFqI+pNiSFQRJUICOL8lYs7MXKko9MKw3fukpN2xPyNUa8v5C2KhSTaJqaVNNVJKQODXwM70eCrdAhA6hhaRgkRqDU+zu3y8BOgx3DHDUrFH5fWs8IPxgNaJcuGNrStzkhclyCap7raOOsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGmm6zPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGmm6zPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC4EC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712861362;
	bh=n0JuvGbb4KkvZb3YRWoW0kDqe6mB84TuxDVHqpXmYtA=;
	h=To:Subject:From:Date:From;
	b=BGmm6zPi3RA7j0AXC/5WCBfM1Ei4PYlwwvLpc6bXohMvk3mEvkdOi+02xrfEuNOHu
	 W2uqJjpVpaEPaWWD1qz1BlFwqibwRjKl3mexpNomIBvItoYZI5Rbpn1cfNKdwFdAVM
	 etIhlgUO/2EtPw3G46G+Uk0iAB+Dn4OHKvW9Vd9eCpuimK/g1wQtqMdrU/86nHOoMq
	 wKHwxyLZaqklXooHxqVKPl5Y3j1+pt6ClC+Pxw1xe0JV+aTcE7ihy/Jb5iP1zGH/Xc
	 hUb2Ti6SlwwVJBwYUEt/xpSmrCTAc93BHcvMxygRukrxz+c5P32YENLudY5ckgsZe2
	 1Ey3toTbwbQxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC42FC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286136275.8572.4763418933754515111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd2f815a87c28420f7822f4a70d09ae4cf64fbbb9b18748661c622ea4e61ea7
Date: Thu, 11 Apr 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712861362
