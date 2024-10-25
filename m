Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F612064EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729874154; cv=none; b=Rn9fyDSOyLjfxb+on2riqkCYKsToIZii0TPNFM33+abFd26HfDhXbY/2dYeFmskizI9zcQutgp6R/l2BBgYCIHpaSvqNUysE3IJfCzeGWDDU/y2McIhXy3x5SnWAubVqh2n6ooYrIN94ttIVtAXQtH1CDL6oVaSwmZ0n0JmZK8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729874154; c=relaxed/simple;
	bh=uLJ6NtaPL5To3YDmx3eF9VmEiqae1mQ513kQfvl8m+k=;
	h=To:Subject:From:Message-Id:Date; b=H/wEueHBUvEs6K/FwWkKaejWxrtrs+xx9q+1AGjJmALIa634HECJY5mbDrJbTSUAV0ocx1NfVIMglrkFcA7JrtdepjuK1UjVGmTRAFHLqmFa3RFkBL+AfyfDDWA7HRPyIOT3/T8zxA1OWELTuSWIt/e1k/lMsCZv2kPxK+QYMeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V37vy5/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V37vy5/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCBC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729874153;
	bh=uLJ6NtaPL5To3YDmx3eF9VmEiqae1mQ513kQfvl8m+k=;
	h=To:Subject:From:Date:From;
	b=V37vy5/j4gBW3YUHli1fkC6cesttoPOVcgTc/0H4PPZQpxWDlblhx7p6V1cp9LOSq
	 +tjTeJq3BryiL9tyNrhdKpFvcCT5NGvUWjf71scewwfK4xWRpG+2XNCNYvFD3Sq+ux
	 fIv4+tEIm6q9nJxSKSGnOS8z5O8mSN6/MYba/Z5AITrzT76RKhrvL0iY0EGQ/MRDz4
	 1S8sPOv4vyv8mtighNZxcaDIzEJsgPqSRS+KBh9KAtNfbUvA5mwo+06uyEbe1tu+qq
	 esIVNKUa8xArZHlIDGYh08tiiqB9iZwk+3oIyvCj9J5lZ3H1YC1T/lr6IuSnUL/Hhr
	 xVjOq/8wSpH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93361D149C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987415359.511.3614525069267044242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d9526a4061bc2b51b743500fd278623b5d0cca8ab819ce3bb4462d488a9a1f
Date: Fri, 25 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729874153
