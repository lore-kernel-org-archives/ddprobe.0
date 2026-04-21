Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AF351C36
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776808654; cv=none; b=GolmWx4uQoIeUavT1Z1L1Of1HdwvAYKaHsHHdY34qlhM91lTfKfWTbukkg6+mvVPY5BFoPqcTn0LxsCAnvklQqasOCVtWQjS3Vm1v60P1xYGOPPfY9PS0w23Ybz9y+vvcKde4Qu34VFruEebQiEG2C9MN88wORJKxlC8AIeJFg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776808654; c=relaxed/simple;
	bh=fL1usxcq0tCS8IUHRF7vQ+TVtXBH+2sqAkFZXByDQdQ=;
	h=To:Subject:From:Message-Id:Date; b=hLdbQ9Ge8jtbHVqcvHf7VdW+CbesnUuRnm7C1w7zDJC0Dvm/JQSY+UMNeYdgZ4ynx5jj4J5+BhVkzuFq9Lfi9I7uyd8ENyRwi/MdXFOpHgYleOKSD7YDuLkZeROlxb8gMxkpCDDK7FACo/++vv1xiU3O+419ZXx0/bsnbDWHaJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKtGc5cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKtGc5cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9465C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776808653;
	bh=fL1usxcq0tCS8IUHRF7vQ+TVtXBH+2sqAkFZXByDQdQ=;
	h=To:Subject:From:Date:From;
	b=YKtGc5cEYhuEWuos8MkkYWBe6pQbh7TPSk7AWlwMocT+8wZm3AcoxhTGJeaB94z1E
	 4q+KUdYw30cPUORlBtRzwhQAnDrCZ6F2YMDkj+bNAPq1VWiPGB/90x7Jb9a3ztSOQB
	 9XG3W7Gbev4viGzA0l7v3khanz2tIoZSXm/IV7LUN6Vn19UwVU8Hr9VPEEO66K2UMs
	 V/rpaBFNBm/wEC+iwAnrYp5MyAqoKxQ4Vzwlm7O9YunTGtiYsIzZ9i+Vpgl4AMNO4M
	 Xz8jTimXtwyNJoy+9FsRYoCnpI52fpVaXCG655Y2sZoAaf8nIVPUGj8vzUB6f5KMh5
	 itFY1TKJdrAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF8F94CB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680865368.11776.12172154939687014304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f57802ebee0c3c2861c6dbd944d6699ddd6633bdfb7fe5964c5c9eaee12fbd
Date: Tue, 21 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776808653
