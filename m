Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2021FD4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783742314; cv=none; b=O4F24Fh/geEjmsoB4cNMkru89hPAKw6IKfXG+uqkm37wBsMdDHGnaGbNsNcHpa7yfzMjXOe/u8ruev/4f+Ix9jLMtzZHXx/okxsRU317Z9dgmNlN92cZ7wzGWGcrbbbMA/Vez9LPP/bYWyNyOZrl1qLTrbbsdSpSRN95IbFyWxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783742314; c=relaxed/simple;
	bh=hh0jenROpxXJEU0sVB83VDfcr9WcXKc6icL2Njyp/GU=;
	h=To:Subject:From:Message-Id:Date; b=i1B7CFZGG/31nf9gTY5ZcBgVnMJJU+UZO014Qi8yIlKgrmHlxB5eOJfHSBVT/SfPzG5AqJFuJPosyBSe8itykxIW9uMyHRh6W0Si80gVxLhnh5OYdPPzZ2THqWeQ7EIxj9zW7sL2r8kcHCVY3nEJ7WWIr/9o3rKbd0pBjn9JHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHcch0g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHcch0g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE938C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783742313;
	bh=hh0jenROpxXJEU0sVB83VDfcr9WcXKc6icL2Njyp/GU=;
	h=To:Subject:From:Date:From;
	b=LHcch0g/puuFLwARQkfitoMNZIJ2x535wyZUXXvJsQKaJN3Bf5/tiQpvpxATlqQvJ
	 bUxvt7tZzDYSkCor6y+yClfZ0LAdzibEO/eLSXm08I56VEV27qYTPYzwExDxBvG+0X
	 BMVk4p7jzUXhLcF1RMY2OhMbb/bb2mb7ZV0j0yAm9/8OIiEGWr5fQq+fGzx7rEzaWn
	 fkO4Q9I1pMAU41SplQog4b/Qxkp9+dPTme+yzfT8UQlD9p5Slb0ORJQOPNttipqda2
	 bSl1avrgQordxVSv25KnIyVa77SOi3g32VsAthueSR0+sFo2GyG+c8nLNSjroLBfW/
	 07v8pC9shd66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7CFC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374231368.9405.4644461559764142308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7427538b2292632a630abb72d0f4b68c8716e07fba09f3138fa87ada9e1b85
Date: Sat, 11 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783742313
