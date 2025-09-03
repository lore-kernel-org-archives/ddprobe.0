Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7792C18A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756928394; cv=none; b=r0r0mzCynXcVfZGYJ5zmId5aDlE7hzmL+yR4RIMf0pk8qcrpCj8xgfbsyWcWysRL5n4wpM5FVLd8P2dJEYhF0Sh4vdH/wQ7ONoUfQUbmtpm0RyZG3+9uxedTlJTYLHc75d2krmDsrG1BXQSqbh22iwHOEOGvC0/mGUXw5d1grxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756928394; c=relaxed/simple;
	bh=AfFRFzHO9zgtP4tqqy+kosRzHCAZQ4z2PgePUl4nrdY=;
	h=To:Subject:From:Message-Id:Date; b=SHgK4EJFrofeFAPWLnMuK8rnAzs+xYQp9GB2//YNkycZjUJoSUf25wZPMnRDGa35WDU6+eJS/z4bCpEwLZJ/wtmNFazunOK3pZbjyMe7WdZe5wkzX/2VpQTiGo2X/wIr9N+WHiinSrxUHxtIOcwPIuvnSN0jl55XwjXqIH54meU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIvdXVlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIvdXVlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756928393;
	bh=AfFRFzHO9zgtP4tqqy+kosRzHCAZQ4z2PgePUl4nrdY=;
	h=To:Subject:From:Date:From;
	b=SIvdXVlJ/0hO8+Ph65HILaWL75in4aSdwVQUVPzi3HZWMEskSzMZbBjaP/kUCXxJM
	 lnRVES64gbalfl/8d4Pz+ZugybXrPPRDL6W05fh/o/R4sEqqZy25Muvb32XWeOicp5
	 4sXlkiqfUwu6VLdLDR+wRfzcBMFGRi0T/4EZ6hFZ/9Hio4ZZbRXsLntfpRPNQ52a0e
	 OhU+e7PXB8MIcP9zSFvYQCGC4Ae5k4WN3FrKE/PKQ2h70o1B90NwVNKq3ycxf1HoZl
	 TyYH19vHqCYFm5kCmxxvvrH5th8fPFOWpF2jFbQV3eGNZtrfT2kcW8gIfZw3IhYLbn
	 Sog3WpJEE7UPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91465CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692839357.3728.14440303971115104564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b7b38f1f085ef25e69d9a43aaee44291526c03cf6dbd36a64df70aeacdfdc2
Date: Wed, 03 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756928393
