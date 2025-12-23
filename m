Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C2526AC3
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525034; cv=none; b=OIErJPcDESyx+Urg6uwgZQjeKBTMIZo79jhxzc27G/XkudFb8YiC3I2bg61jqjuX4ZvBNC5Z+8ausrKiLZCHZtKdlLWp+7AeVKMwUknLrAnaffX3EgJk+AHeEL/faAqfFMnBUGNhvfqdZdvgNWRltvx0cE2ppvvX/oKltgnSeYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525034; c=relaxed/simple;
	bh=waAq/VMvfwHfOEiypo5AvCKWnIaYbuGb2JPrD27LHBE=;
	h=To:Subject:From:Message-Id:Date; b=BnYxhveQYhDq/4O13FxsP4XVcbB0aiSzb4wcc3NT9LkYHDxMfQpAbNitjNVTTMCCccd9nOsJz6W273WKrznXNPAcgtEDhYmDMCufdpLKmlBZLF/+lrIN1NIUfMcCByfqQyYidh34UEjZBcTbzqXWOfDh1Z8h57T+a/w6rk7vLHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5+NX3VB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5+NX3VB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E8BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766525033;
	bh=waAq/VMvfwHfOEiypo5AvCKWnIaYbuGb2JPrD27LHBE=;
	h=To:Subject:From:Date:From;
	b=F5+NX3VBzRsywf78BDB8Z+LUS3O1c1ihKsbZ1Kjq7JEnG/jGDDeZ1m/thFAoZelCs
	 lk1gvkMaqMnmE0lzJJPw9oUjL1tsoxHR7wAKb/U9ZVzEedOdlaLuIHIcTQ5qdWnM/J
	 ptTeWnzKCKf3lC4inxLTL2gta6xBjNhuxn5HocuY6oV1MhRaq4IGSy8v0zavB7y1iS
	 RolwAR5YJEYJW41WdpMsnbZK3sdTsMH0qt8Qrj2iv5VpYYYdCxLLuwunP3LwSswirG
	 vKDOlfkgL0DwFKB4EadSf8dOfpoKfL9++sGdQimNLFIe5++LBogH2d8Yxp/XK7Oytn
	 pBc33F6DFt84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA6E6FE45
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652503358.27945.7912443602493577093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a42578cac3881720abb8a1f6eb3886c49e03f358967ad2fca924ac7e3457cc
Date: Tue, 23 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766525033
