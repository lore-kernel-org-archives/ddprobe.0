Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7C13B5AE
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755943795; cv=none; b=Wmx1Kxu8j8Fr/M0lU9uj4tVMYM4TTPE87l1G3rVrn1qja+TW1MRWLf8okF992VijHg8kjkl8bWQYh7PfUS2StLbYY3iyveVRkUaO/neF9KDE5g8YNM68jmUrsP3xdrbHtyDeEU873+y+/YTZx5YcNa5F4HhEyxTOg7I21cT+0t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755943795; c=relaxed/simple;
	bh=Jz8Xrw4FnS9mYeR0TYPfaCAhJHaILGI0lg496iq9kqQ=;
	h=To:Subject:From:Message-Id:Date; b=EbAe9qHhJ2X1XjC+1nK/TdnRlee8s44hBT+2Rx4OMHro8rSsA3eJtJvydzx/XikVhOOBXCWvTqLKbCthAjUaebC9gz5xKWX8pjGKzV4fykjSTNz1PN6fbV7iFcoJC/NakuFJuj14dIfAuhOaZhnuGzLViaD4iUrltInqEeTII4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWgPVuWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWgPVuWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F423C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755943793;
	bh=Jz8Xrw4FnS9mYeR0TYPfaCAhJHaILGI0lg496iq9kqQ=;
	h=To:Subject:From:Date:From;
	b=TWgPVuWUA2zNZg9KZ3A/7YIsIsgpddorCBn8Z98chOd25k20FIGDIN4BsSqLDbdJE
	 L+VP8odydA/qm7cvHUy6mgtkryu+03ggu6tTPP9HQUbp04pypNT6q5d9/UhC8Qs8xW
	 wVJVLzl2iXakxqS+3bQ52NMDeP4VId6TW/LJNnv0E9yeaXWCc3fe2GstG7QqePeubR
	 +iCEBPUR9Qxrwe5onJsuaSPty9YPkS9+hT3aX0IHqMQPQw5sc+uw4jXuMByxBMnA4/
	 h2+mW7+2T6Ro+VLJTjai9l73elDz1mPlEB7avQOjvafdrig0z2wNm82xjIaZIvmEaw
	 JYyTOpM3jlfeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD6CCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594379357.25546.15559280986104459196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ac7281cb4973f03d6664823b67b74fc612794faa0a679ae02fd8d7358d38e1
Date: Sat, 23 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755943793
