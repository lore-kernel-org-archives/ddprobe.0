Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B7F433C8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721516754; cv=none; b=Mu6BZDXoH3Nm6d8lAlW5rY5/yE8y6rIQIZVicybPeHYPL8FGWri+h9BefPyopvrIK0HMhIVl/Cfs08EWSr4ROcBafMZ9p084tUhR4F3xRz40n2+6K+7a1SRbEWanM6hxgRv/ULl6rJ6evJM5Bq5l8FAI6myBEY2Yns38q7sZSO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721516754; c=relaxed/simple;
	bh=9b0AXa9caYbQawUGvvXXysXu4wsQSeEo/ZUdMDNV97E=;
	h=To:Subject:From:Message-Id:Date; b=bsM+VcDoENgdOa0B/yZ7KdGOHLSduaIK3gx62iFnftADSyhfEBl2lcbhZ/tgCehMdFz+afJaRNqQY8fgiq0qHiFNdPKkgq25SfNKtkmTzXc2Cdc4VhfHy6OMg9kD+Ba/kPRPx6Lp/AGSDOYBZWzNvUKI7VehLabY9hNbjSJZF4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/cxim6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/cxim6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7055C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721516753;
	bh=9b0AXa9caYbQawUGvvXXysXu4wsQSeEo/ZUdMDNV97E=;
	h=To:Subject:From:Date:From;
	b=M/cxim6NXD4rN2tYj+3WCfrSo+R6zIv0DTWXkVa3sXlGbWVzChGuKw1C3GhvaQIIA
	 08URoztJIzq/r43WHlKlH+mQEPaqBANJAZT+ZbN0XJfv2yixYw5DDmsbnBflkiMDcM
	 l044a5jLRsvxZ1RepsSygXa8ZP/Y8fHwhS1EM0InlwWyUfGYiN+a7vE636roh1hH3U
	 kAjjfl3hW3as7G76lGzSinEbWTMdIfqhny/97u1Snhp4aTTb4+dcLLJviGTqkq7IT2
	 o2aStaK68KF7kz2AmNaGtAZChglhEDi0l/LNyc3+imN6QDKTV7k5f8gakGCyrZZkgx
	 Kdd9lqGhyztpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9F0C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151675362.1234.3390990093744135683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515f03c9818da9062eef024357b07b438c7e9fadd8fa1f2d45c232477f57419c
Date: Sat, 20 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721516753
