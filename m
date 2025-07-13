Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD811F0994
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752409194; cv=none; b=H5kpP4Kzo4cFwQxQhMlPdaKRZDjN6Y6ajC5hYdAUVYBKKGELJL0tN0AjuMmMaFdsFYejV9CmZeeEIpBkpPdPVw9erir27Lme9hcqLg+YdneE583wcX/BncmOegfs36oNgZ45SXrEhNOJZHuEEOEgEsDll5nmDVnn5tr80QekL5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752409194; c=relaxed/simple;
	bh=3404fBfq7fyxxvNVKFoPsWOFD5onJYBJACgLon/g7Pk=;
	h=To:Subject:From:Message-Id:Date; b=lf7/I8UUPa9n2oTTG7UTF4spOcZ6OAi3/kQ4hOTqJTr+SsQhKfQRTm+cBIto9+mIo4ZkstGkjnenXqR/13IBpQ+Qp0+1V1jzOQcomOWPNaboBJ+iZV+nCjSOsx4UoPxbb/2gl+0xAG4nb+TqG49kgcDWRGP3pBT2LrAKEUPFgWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge6AUM8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge6AUM8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B77C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752409193;
	bh=3404fBfq7fyxxvNVKFoPsWOFD5onJYBJACgLon/g7Pk=;
	h=To:Subject:From:Date:From;
	b=Ge6AUM8KgheeR0PnLP3XSpuHdyqxUwYsQVB2+myogK6jFOFpDJf69tOAGzCl+l65E
	 r9qQdORb9Eizx1KXo2h3Yq0J48ScUJxAtN7wL+sDNQGdjCTMu2aW7S8iRYuNUeJjrD
	 17gDnteJ+l6EpTOv9qRlqJs7ST9TfDwka6enbQ2fpOzx73DM0Ac0rvsXS5LOeSjbHk
	 4d9tVcKGuNq8zeIWj3+S93KMIWiPKedUgDpls7CN8oo/x0FQ5oCkMcRn/4en/xobOc
	 cKmRK9qjuKJxC6Pg+skZkpC+nxL8SVcnNfAojyaM+ut9S1wORDrYI29upPuNmvwRNT
	 E9VQ6uLOya8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2DC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240919357.30870.17306854431254724449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff58c246925dd46ada6a0a683d5509884807d7efea60397242b57dc5e938816d
Date: Sun, 13 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752409193
