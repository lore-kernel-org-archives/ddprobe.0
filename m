Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C746352C48
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768342434; cv=none; b=rDE3DPR1ENYie3L+bTEnrvZp19omGJrzxR1RMbcXQOkOdSsQfhjRUSLL4eolM13wF4ZGUakP1A79J84ul+ye6/YL2KVi7ItANoXaZ1SGD+FtpqjZrdy+btyi0EYu6Sf4JTvtX+1dGE7c7gIhlPRnpKa635USrpbkFCYYnh7f1W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768342434; c=relaxed/simple;
	bh=Jc4GFZO0bxa7oN183scp3vBcVsrJPQut1gE/Ms9YmTc=;
	h=To:Subject:From:Message-Id:Date; b=hVnj6I/rZMl6whzExrrkjZUCctx+rfHzwFMqf71BMozp2+8lvpHKMs8A0sRjdSccovvUK7zdQrvYJKiqdXkF8O2t4L4kAcJ0Gf937TV2lgpIk+zIzXSqGdg3CPnzphhga6TBJByB5cYcXagalEH+aXWE1fCc8ypt8DOcBpc24lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUlAe+nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUlAe+nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6BFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768342433;
	bh=Jc4GFZO0bxa7oN183scp3vBcVsrJPQut1gE/Ms9YmTc=;
	h=To:Subject:From:Date:From;
	b=uUlAe+nJNTsXJW8VxRz13bVLvLTWirVf3EtKYIxBdVpw+Y1fLnaSSMSwhJd85aLbS
	 OLBlqsrTi/YQWha0P/TZRqb6aIoL29pG0TP+QYnzhKCyAIX22+zzy4oZ8C5wGMNu2T
	 Mdy7EgIhfZl8qCYSGuVNtpGPybmD7Bi4RMahwiYBgVmPZfS96EKjU12XPVYfK9U9nB
	 +4UrpytlBHvDTeiBcQDiuVBuodVZHj5GAhW1FOr7/1xcKLxtHTrEIJs+uSNeeU4ZEF
	 6xKWev8OnI1Z8JyuZ2lRK0xRgtWCLxPj8wXK/DjjcOyVWxlqWdh3ZzQw+/KkgTvNRl
	 yMEMiP/HQPBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F930D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834243357.9475.12227352270177777984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5aced4204ca6b309cef6c9d54691878ad1a496e5083f7b3a755a66e8a4d3af
Date: Tue, 13 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768342433
