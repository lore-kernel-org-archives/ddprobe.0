Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36157181328
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724874954; cv=none; b=lLyb70XPUlh/ZHzHI29oy6M7L+MHOhdBxikjkyDAsqwQrOLTJCpa89rINT/O0Bj1H1/Ro6EGe9hxrlqXNcQKH42ogrnOIF9iSD8tX+sBqX4juWtiIAwTi7uOJXT7BPV7vrQqH1zplVboszUx9saz7We3O+22DNvEDOuiFDd8Myw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724874954; c=relaxed/simple;
	bh=l9Aia7m5blXrP361htFTEzUNvx+/2hvWL0zyt++sExI=;
	h=To:Subject:From:Message-Id:Date; b=NdMmE0B4bTgOnBhHmq16eYmRWjrwzVYxvzJ+Kx1DX4vTPH/x2oci5ZaMTa10Xw7fHJuUjkYTb7BfXXX2dywXD+/PDuOzYzxBuMZfHTUFHcbSTQ0xFso7ZVNRb2fNH/PnHbZVOOOhK3OLATocLWDAWbHp698DqtPBpbwhU3632IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8QeOINr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8QeOINr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F0C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724874953;
	bh=l9Aia7m5blXrP361htFTEzUNvx+/2hvWL0zyt++sExI=;
	h=To:Subject:From:Date:From;
	b=u8QeOINr1M4U/qCsuSaaBa/ZnsemcNIFUYGs6gNdFSdQWmGaBfzgovuoEhP0ZaQg5
	 MOib/siENGlJanywivjz7RenM6P6I/HX6deG3LfSWcB7r3ZnNVE0u9k3bSTqoP/tVE
	 AO9g7L5C8Iea2kxwcUhx3pk96cpsPWyJeMrfAq2x2U1DG7sKEj+y52dI1rZbHMu1MI
	 /PiHT5zRmI/f1lX5V9wqA0i/Gqw5LXy34fU/4V4m9ojxKNsI+4JZzRSfCWV7PhfSen
	 9BLbRjblalkSkS4V1cq38a0rh6y32UajKKXcethOsLwvoh2e/7PFZ42ooeLP4ik8Dn
	 Vmq1g1KtyJbwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A66C63798
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487495360.28142.18092527247231841902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c06a4c68e9de53c6932021786184e95d3905c3bfee273574de4db9aa91df09
Date: Wed, 28 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724874953
