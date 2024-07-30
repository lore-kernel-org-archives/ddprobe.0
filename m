Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB28145A11
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722379554; cv=none; b=a5eAWqEu+xBnwSfjgpeAbU0MwfXuejPTTrjMOtUOhlAxIflCiPKEbSoLBji+c728qPlgACMHpZsTYVMMdgqeCvDQxw1c7qbpR7UouznJu0WmE8+Na/eZH2AMGQamu7dn3zJhejXOlBj9CX1xxO/xCZn/L0TdXi4S1PLrSmSyW7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722379554; c=relaxed/simple;
	bh=KmDrBtUFyWEWf0ao1kvTQ9vTiQmn0FC+BnkJN4SOPEs=;
	h=To:Subject:From:Message-Id:Date; b=PLZr1skNxzjhO3CB5XD1X7M8FtixNXUzxXw/JZXhwKX0HGezYyPSw0RVd22wu2pKHO14YgnmLPx/nGYgsuJB+K4PRfT6gh0jV1PI7rWXVdtWUYLTVQesCuiPx6L/aSPVH165+ifLSSHJhx+MMnxGjpAmY6vU0nVhJ6vjrP9oQ+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZY/fbQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZY/fbQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8097C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722379553;
	bh=KmDrBtUFyWEWf0ao1kvTQ9vTiQmn0FC+BnkJN4SOPEs=;
	h=To:Subject:From:Date:From;
	b=XZY/fbQ6YsDGx1h0In7Intzb9TXIKmb6PherC17yGw1GRviXtKUiIRrvWxbAnumNx
	 x+HVaB0gntJU/+ecPK3FEciol0aenxPA7KJRLBKgfSaCQOQTEQ32ZJlRTPVhHOh3fc
	 DcDffQWvH0op3SlyKEOe5FS64ALrnBkcPzpBxPVbffxnYCx4tSRj1adCKBa3z/irx2
	 dqGCuTQYfGX4kZYupyTWinCVunTPwDNL1ITsssKMPDuoqq4eJVEbcUOxOV4Pw4E227
	 V+PealKES9VGbeJHByAhUDW6+InwgDtRUO8uFGadBYNjwAE2THyKR1fFgfNzfoJMo9
	 tSyg5d8D6kScQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469DC3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237955360.8968.4800208870245261089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f67030b768f44639e99e5d2c46515b852b4553251555291db9700b8ecf50e0
Date: Tue, 30 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722379553
