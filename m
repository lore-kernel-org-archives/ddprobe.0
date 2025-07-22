Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFB827A446
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753200594; cv=none; b=L9VBf0w0Yl5qzj9QYzYDW0drwYxo0x2TAuZXNsF9vmNRXcFlApt+1Orx5VtoTA7vYVPwlsDMai4hXVRWzqHBPkW6YjQVIfN2KbJPdCeaoYMerLv+DZ4gmd1c4vCf9nXFuLNrzU6sX+hu5UgvWUGxDtIGa75KzKmT3Il90SrLDuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753200594; c=relaxed/simple;
	bh=2rHK9laJRy4fuxNGwKjQMkDQzu1NyhxmMbBSCUTqZDk=;
	h=To:Subject:From:Message-Id:Date; b=cdyB3VJ4TPi7MLfQj9KZ6HeC12wnPPiQ2nw0daJlTmurt4dGcvhfZYIzwQgkyV2utqCo9fT5AP4jkjHLh9Xgefxt7DOKGbvpJMw8fnp2mXApEClEOjlhMSwGzZjXnbEZyukpUrP8V+sCg7+cLavhz1Io6wNS6hsHo+8Fu3f9axA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVAm33hF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVAm33hF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753200593;
	bh=2rHK9laJRy4fuxNGwKjQMkDQzu1NyhxmMbBSCUTqZDk=;
	h=To:Subject:From:Date:From;
	b=jVAm33hF1bs8hN4RFart+nE0kOBbuy9rMvlpt11ZLQRNscyttTYmrhFDCqo0EGhes
	 RHC6OM2oBpE0fAkiVGcprq9bzCllK4oR7zkyqV2BooxwWlZcFW6W26zbWrDlljvFpW
	 g575tEf00Bxf/KjSAjh16Mjg1whIYn9vrDroyrtnt/zizKl1HC19eli0wuMc2q++0P
	 Z2ft3M4E0HrwXH7pHOqQwUgsP0L9Vgkkyb+0y/NmqTfYYlBgq7BL7+MMWydtzofXRS
	 o2ObIL6VE52dry5vAg82Fa6SDpIwWEpMK0qO16MkxA6YfjxjX6vVOBFYoHxjXRD/IM
	 uD3LHbgiwq6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320059358.1640.13276868915517695130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c3e8183eac6922e305e313127bc4bea9bb3a20cc387f7b24f93feabd71f518
Date: Tue, 22 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753200593
