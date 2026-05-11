Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242AF33ADB3
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778505634; cv=none; b=t31oRfx0wrIy0DvJeN5ak5uqsj38MBrBBtwfsXppH6sdZn2LoW4TwfHmaJmSlKcgN9fBexkIgj8pbl0ib0qwDWrkMdmzH+e6tHgNyq5tnQ7huNyOiEgMy8F12/ilbHMRMx3tzxZOWHO4rTAIsTW/yZY5w0M2U4ANshkpjMc/MG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778505634; c=relaxed/simple;
	bh=2wimlNsMjXSn6TUg0dyxDfeNuRDUyi0GsW4aRYU8QXA=;
	h=To:Subject:From:Message-Id:Date; b=YSz9nomYjnQnXexhDSRhdLsNsLqBXbEsg9gQ+34v0EMnCqCGOKQQc9gif9zPYKa9d/0rNs5UYTX5pufzSmhOGKVmMOnVrBt4nofC2kOGOl4Q2HYw1OYCJla3XLzeQ6GZXlFQSQEQfST5dlduTY+5tmWeUcEvJQhbBgWT3IyKRuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU3uIrga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU3uIrga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88A4C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778505633;
	bh=2wimlNsMjXSn6TUg0dyxDfeNuRDUyi0GsW4aRYU8QXA=;
	h=To:Subject:From:Date:From;
	b=kU3uIrgabPOk3rQz5sjcLFQypt2H9orRoKZUcL6pXCITv6hQe8IbLvdWtAuxHVSfr
	 WXPGarbMffdAjVnHPsSyTBWgyVY2/vCTfnPVfyxC92G2/R1cwU/sg8r5YvtFEyi/uH
	 s+e0FGlotWm+Sya6YjkDV7Q6BXVG5VUlh+RZZ7twTWBFopZ9EwVQSqJBuyxf8J6ig9
	 /FL+hrNQbAaft77awWEhamuFCaAuX/6JbJw9fvcLo91h5tBXmc3Sb6jap4/0WG+Te6
	 RDrEW6/1rRv9IA7/cNrd37Tw8XLkWBlBwRLHX6xED5XtMKewgEyfCYme9d6AeQOWf5
	 Y5IlIW2K2WKXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8BCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850563369.27631.4331945094463638094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b816583bdff773afd2df46a7a02541d46fabfffbeb5d01f542f573abb8605f6
Date: Mon, 11 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778505633
