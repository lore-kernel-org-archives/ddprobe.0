Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6241C3603E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789881034; cv=none; b=BtbPoPZ7eoFrhiCPrWPaZv58VGR3dzsZo0CWaXNa/IecsVdWylckrmhelWaaZO82zuZGZ52XStfrko/GJGARnjUP+PDalu+2aOmLjr1L50fTAERfwnrVDq0VHUxDT5LEl8Rbd5YwOrbIZOE1OzUN9UVmmH8AU9by7uTyocptkbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789881034; c=relaxed/simple;
	bh=sXO3TE3L2Isus18E1DAsj32RlldKUEVKJv+yEC6yejY=;
	h=To:Subject:From:Message-Id:Date; b=NcOJzYr/9ljN4eh+b5eFcK6hFqI6aVcQu9/VVX3lV0PULGOTq9DYCRpfOAAzvDwrXP7MFuv7Ial5BQnTptb3IOfwjGWO5DrUINgWZIVBYbELA1QbqyIXRt12yyrGuGMYPsEKWozh9VSgRg5jMx8STt2eaugTdk2Q6bfW34zQ+MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2uVQl+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2uVQl+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21D2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789881033;
	bh=sXO3TE3L2Isus18E1DAsj32RlldKUEVKJv+yEC6yejY=;
	h=To:Subject:From:Date:From;
	b=V2uVQl+25GpYvlJxooWmbMf5KDBQdt9J+YGH7vMFi6CjLWuFsxvKAReOkVJtIzIot
	 cFPKHre2m8y8LyiyisVYJvdtUEfcBww6O4ymBZMFQVQbyitXfzCekUO9pHT0AjaCAq
	 gNFcyfkxKOpvfz/Oa71enSY4NlmuHLhYfNThREaBsDS+JlE+IDyHrOAm1r4yLTkgEG
	 T66h2+4k/4T1VBmQXcvZqrbOL1jui1EHsVUnAAtHjYW0g7vlaLcRVngdvaB2hw4cAi
	 08HuFt/qAto16j3ZJCG36BXlZEzvssra0YdIUwCEDvDMGt0Ft5jEj84lr+jHl/m37n
	 GkeTepgNdpq+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E3FC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988103373.5385.3737115708277497954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8017532d9c25352e4a0114b992e77d26186d0334708eb38318e25683c947c3
Date: Sun, 20 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789881033
