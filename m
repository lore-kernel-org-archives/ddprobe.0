Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A71D4A340E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790765435; cv=none; b=C3oeKjzOTClrjk/ge50dbl4pw1kEBx1p5bWNvMhsO7YOPYvDYTSgTIlZHCWAv4wFDmzCn0NTcb6ZYic7hioOc2H9qOt5OPuiN+SzCKKRC33ubVgvVf+4+F7HTWPsoPl58lRNBTqnUQStCF+5eO++042qEaxvk3OE2eOMWNcgFoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790765435; c=relaxed/simple;
	bh=5YSOFJPC3lZZBrJTlrX8de3ub3FPnyIEONZOFSItPGs=;
	h=To:Subject:From:Message-Id:Date; b=MwtBKl+MDISU91o9KzHUMJZaeQ/V76+T171l193dXkVH9bIZFG7K51463uSw6RapTwLDp8vlD9XLPajfmnYT4mcB6O0YCkZ0ttyXMBIuVtLVnuV1oRiezzNLYoReXxrs+cgPnvewdYFJl2zwLfDoVDEpYitOfrhcVmtAFUTtlD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4a9teyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4a9teyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC229C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790765433;
	bh=5YSOFJPC3lZZBrJTlrX8de3ub3FPnyIEONZOFSItPGs=;
	h=To:Subject:From:Date:From;
	b=e4a9teyUWpeB5S1MW4zKj/MT019wpISp3SH4OdpeFk7hkTkIuAXSFSPyXUGeNtpn6
	 1AAFnkdMIdMXmh40BZawYB/Tvxx60bMTXfO04RALVnuS1LN+2P+xbiSYXXpeEyq8Mu
	 m7tZxJNj/+nM0ev6pXx3mbbNbzsOrGxnjF9G1AHyzpTz8QXVPD1PzzAlFQuIYtLF0/
	 aI2B5RGiWgbyFUaMW+ABDB1TQ5b+QAREgAXifpnpoaUnya+QiKL1NVjT+fJbfCp4RH
	 Yp5zrQ/x1rLfYb5JbSFlpVxco7Nej+BsYgb6xWjZvjGIttH17a4IEJzrNurXON0h90
	 P0NtU0UxjMz8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9765CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076543368.24771.13520148300536065412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dcab2b851d81fa5c45616bdcfc0ed329862cc439391d5705c399dadd6f7563
Date: Wed, 30 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790765433
