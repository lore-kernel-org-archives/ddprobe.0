Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560C32C21FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783801714; cv=none; b=ejT99EIDjm0pp1Yo00kRRMXlvbM8uxebvKd0NeOjuSz8j9v/ErB/yXDen+HCCYHd/96rCdFG9ZSE2cBTwtmk5+mBDiGg0rT9mynObPaj/FXNMg0+Hqt5oRLM4pJEIgsEptBRgpJ/P9eGMsoeSeHBQvHW9SdjBk3k4QHPv/zhh+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783801714; c=relaxed/simple;
	bh=mpj3iw7F40n4mheIVLa81InTJWgvbCvEdK6i9+Pejjg=;
	h=To:Subject:From:Message-Id:Date; b=XtrzBhAp8sKPsedv/u9erp2rRYDQyQh56Jgp1GuYhLyacGmISJmZ7rQZYYL78BOEtzHHSsDpLYAtJg2r/gvw4HwjFIsZ6Nx5qBsOc5Ueb9H4IE7BxsX9rYYOqLeZfp2/VNGRSmUpM80Kq9L8CAD6X/V+vdSl486BmCoVuHeWTuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjLK5yFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjLK5yFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD593C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783801713;
	bh=mpj3iw7F40n4mheIVLa81InTJWgvbCvEdK6i9+Pejjg=;
	h=To:Subject:From:Date:From;
	b=ZjLK5yFIGuv3Cfd5VoFcga5SKfdw8seRGP50AI/0ePZVMFutuwETKxNGSsdrufq4p
	 We97+6ZHxPsI9kIuk027lOorIVNHugZpdDMMJIVwRTBzsMp2psUqTmSN9LRC40211W
	 irKRxId0XcLJDq26B+wumknMwADYjTZuxk2czEE88ImlYlh/QsMnIGq4MtU3yHHOUH
	 cTgms894AW3P9KeDizMSKyUYvAZXKl83mWT8YvGZgVYg+fMKY5n8cc6F3f4PXrwALs
	 3Ha5ym95yqioaFIqqnASHQ3sMl6AqwOUZXMPWz0drRHGm9QwzybIvNiNDOa2CvIlGE
	 3W6mvuWNu8RrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85E1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380171368.24531.14640867808784874096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74b35e92cb267613f89cdd0f01b8502e3050c1b7c7be0d6b397638fa233edb0
Date: Sat, 11 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783801713
