Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA413B42C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781780794; cv=none; b=GepHsz1wjjc93VeF9047tELGOL0Uge10yg7XCa26/D1vUCMogouCcke+86y8wR/5BeJ8QT1GnHqnGhHCTmUGNaGcCVNp0F/R9Lkf6I/F8QD5V1l8Hu1A6RfiGcFdRI16DkzTFNplTfe7oXA5e5Jzfdyyzl/1LiXa41PAffXIHQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781780794; c=relaxed/simple;
	bh=81ZNeqjuqZeP5cmRRpbEUshaufF88WIiLFm/yKwJxVY=;
	h=To:Subject:From:Message-Id:Date; b=OLqy7FzWSBGL8rY+XQLB33tf6NNvfK9jLnpu/zdFArBTzoqPhY01EJQNZK19dfwa9AHib1URaxiY3l8t7FIf+JeWE6e/h5pv+kROwkgkmjsdIJOggqW8ZotqKURBLJAQye7AHwGjQ84Vi5jN+3DG+d4378IfduMQyDlD6sg4aW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZx+DNB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZx+DNB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA21CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781780793;
	bh=81ZNeqjuqZeP5cmRRpbEUshaufF88WIiLFm/yKwJxVY=;
	h=To:Subject:From:Date:From;
	b=RZx+DNB/ybz0NoJgftfz71umxMCFVi1deR95C5HTcFjr3ixKexlSxp4zcJdWa50ns
	 LJcIyu8ois434NcR1UAfN50qRi96986/AWBISsVSJlBa9wTq0yec92WOI0q1DE/9gQ
	 MwNo3HlXju3yyNnESMvm7Bac8E5mJbZkps9VCOEYr1zIoqytLpoaIg7m7ZdCZZCrgK
	 GPpBeHkvwaj229PxruKqkDxVp0TWBPL4CDYNCsO6hrtqGRae9aywk5bMFxjGJg6knj
	 uwJhcGeiClLZCKilg30mEACem4FQtXdccbtZRqWxcq0zc9KjwpY+ivD/thM6mIXItk
	 zmFfttF5jG2KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D3CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178079370.27889.15505880446633550062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e590b11f804d80ddcde28a49132e33b20d0191b3d057ce6605b0ccd10d17cfe5
Date: Thu, 18 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781780793
