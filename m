Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E29E1BEF77
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745220594; cv=none; b=e10iV+i6KwOqAk6J7XGSkpdLcvAUymQ7ADnvRYv3IbO7gc7ELgqVXjPl6CAtp6s86sekHZmIvND96ojSf5zJPukld2BXX8p+Ita3hxb/TlsLDR/DQj4kSHeIE8G/mdJ1HbgteaxcCsTSSK2fO8gri2FuacVOqTEvI8MzQ0dxUZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745220594; c=relaxed/simple;
	bh=fRJMOnMLDmwAeEOqhmqnoc1vkTJIJCaGjWYheP1zMqI=;
	h=To:Subject:From:Message-Id:Date; b=KjhrTG2DcV0H3mAVPY5dB7EchrgYkqJjZhE6JyFKd7hd1dgYUD6bYk3Nlk7iSqMVb0jjpENqsbJZXngRpGyQDz3VEha3gHq6ckN0cO6G+Rk/TZbAmmEdJ5MqDdsSn9mrO8BVW5bg4g8mw1prro+hgxSrhEgLtrhfS5QaSTZKDxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7FlTlNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7FlTlNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745220593;
	bh=fRJMOnMLDmwAeEOqhmqnoc1vkTJIJCaGjWYheP1zMqI=;
	h=To:Subject:From:Date:From;
	b=f7FlTlNoLgl8T5i5GzHDrQ+2EOeuhZ9WZWQ99oc3qMbh3Jseq66y2niKSnMa4/YNF
	 ivg/pl7OH2uAHxcq3IY9/Fjm0d+O2E9r73qaNPYiqWeK9OgBXmT7tussaj4c5VsWRU
	 JiKUfspcMp9DZcYOCJfOLWf0Z6zMSAW1BpbTWPCVlEqSjac/ojJsXbM9qkE+mw5pAO
	 fpegJ/xb8lQLOfQbBrgqa9JaKdK9Y5OpAn1aSIVG0P3ICIe+E6C0uQBXS/cTin1WIL
	 sn5Z6EKiYQD08Mu+5GSn5lwgL9ksNXQhzliByFNwtNlLheD6hCKktIBUUEl20U0axf
	 7lc8aR2dF+usw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBCC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522059360.1527.15898512893138262534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499490e717a75fffbe7aa53f10b877f28a45102a889a2ea5237906e06f7547be
Date: Mon, 21 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745220593
