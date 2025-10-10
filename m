Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BE12153EA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760131194; cv=none; b=R95L14Fd3u7Jf5FeLNcGiox/p5OLsPAzogJ+WdNPT9/sR2+cFUkNYZRZrXGZ1DAYib2oiq0V4MINjIIyO3C151BpIWYz+tyJlWOW4vSR25RrFt/8Y1ruluz8H5psgqJBucgxgGpKJfcDvsJ5NpYSgaZdlqlYAIy+TExOPt6Pe6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760131194; c=relaxed/simple;
	bh=Pkrudd2skLFAP4XFigIe8al2NwuxtOvAmwL+w00ugn4=;
	h=To:Subject:From:Message-Id:Date; b=bj8ECLG7swScKjoJ2EOvC+GKXcElawVjHAyBc58sisaVfmCw9oNUL9V3kbtBUWw5Yf0zmA2K/rRHv+LwSzqrKbcgKk3ib/v60X5IEwusT1LZDF1T8HG8C1mjgiAahWddCKekKYRRUl47O5Jk31ynQwHEui6+qjykKJ8VY9uK19U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB02jn2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB02jn2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760131193;
	bh=Pkrudd2skLFAP4XFigIe8al2NwuxtOvAmwL+w00ugn4=;
	h=To:Subject:From:Date:From;
	b=KB02jn2wEP32lF49hzdF+qqkDdTtxcJUfKKiW4NSM/yh+dgez6JImR2978AXqPRMc
	 u0M75o2sFRsbwHhbuyeS3sGipMkCYHYhj6IZRvq9s09vxuf/RxEk9r9YoHvwoKYJ5v
	 30XqNkBuEC5FJ9/5TSMMGsSHaz/O+MZqhKiwOX2nOPUX0yUngL3CIkLqebrxS7ZLg9
	 BCwsTxL1Ppo7pdlcYNpGeIGdaJi2djNpWsXyf8ArBERqm+LBSj2oQwVaiWOGdBv/MT
	 QOThkZMDQKA32dqdjB8fKhWNnERaxxE2n8kPp3/W0Wga3rMFhC4cZaPpCWIU472cuf
	 O4G+vi4mAn/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C2CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013119358.16146.2409522050981475795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29590831daa5afa12afdde28691e2e93407cdae6a7c93d278ab53b7d51318c39
Date: Fri, 10 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760131193
