Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354C63542E5
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776855454; cv=none; b=UVtPIjvYuxbXUZIFPryVpSiXLEARMqHHyZExxvmpR3aQzWz4bTE/SpaHTTr1sR8VJ8F69NLQaPdajG+h4i6E0b/4WKriGDTdBoD6tXZQyAeKT24YSsAFoK/hWxB6R3OFyIVkObt9EefZFL51MTBt8Ra8PINLKIDA6ycFsmXcuzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776855454; c=relaxed/simple;
	bh=nJRn+hQO58cu/OSQ+aaI+jE+ZDTV8CeE0HUyDuJuNbo=;
	h=To:Subject:From:Message-Id:Date; b=sgx/9ADirQ1Djxbs6HP9W1fe+W6KdWJq72o/Mq80iqXfV4qxdHx/0Z0vFF36N+89w/h823GN4Jm3vRi+e20EScJcqO1MaMDiM2WiVPgUPUecmTcyfQLG8C1Lklln1JkoAXHa+04EKBHOSQ+4xmQXKZKEAeaVYCICSnDjfcH/t1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUkFOvmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUkFOvmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EA8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776855453;
	bh=nJRn+hQO58cu/OSQ+aaI+jE+ZDTV8CeE0HUyDuJuNbo=;
	h=To:Subject:From:Date:From;
	b=UUkFOvmtUXqOSJN9uNrvN8d7O4iU1yTYbGYpeKjAxLFlqeExhSOd9nOwydcwaQ5kg
	 YzC2zDbQ4TR8ITAK4XkBYaN8bDPK5fhrcQMOIPlk2mVHmBaMvH22BjAdxHa23fRbx1
	 tFcMq5UJhcVDasRWej9sbEMGkATWeiUHMyl+sii9pkuBGTDWjUKeeUHHOKCxJVFbmS
	 tHL2p7nr0qwfMFOSV3PSmmIQP5ZsvxwPbGar+BpkrZPyXNRaPIv9/onRfZT8Abqh+q
	 cAdzZpbF7qazABH28vb7PnGupp7k87oAq/OCEe6oJarXv2dw7aJl+4n39E+QpX1H6e
	 3YKwUBW9sU9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9104F9B61B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685545368.15762.3044081972167206366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b11548313ee70313ef492ee52c66ef9b1fcad0e5fc5f23c64ab3458b70d2e0e
Date: Wed, 22 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776855453
