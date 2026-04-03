Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E499382F34
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775220334; cv=none; b=kvF5NUceDcZCMPkifkIR3y8seIm/ODhseunC0p5MrtLpgGuet8kSA1bZb43SdQOyr5t6GxrgqLcfHkSX8722dtbJYULTAn3wiC1dLN4WRf1HXcP9Opnq/MsqGNxjUzTkQiIoAMxqaGW33SrNKU6mpbRM7GjQbMMMM1CMcgt6Dc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775220334; c=relaxed/simple;
	bh=vZt5ZsmfIPxeqt9WGmySNoN1aEs0JtJgXxIC1oJva7o=;
	h=To:Subject:From:Message-Id:Date; b=AVmz2wTdnyZr1bWEsOm19RVmmnpAbchTesHqeeXXjerb6f29/eWd0RUPMTtO4qtgAwxehzSqQ5r+TTxeB3e3PYZ0dg9AMoMwBkolxZWCG+FTt7vX/QAg4ZvGJkwuFSc6gBmCUr9FykddipzdDYcpItJ65bZ/d2nco0OxKvZ4wV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTf20PqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTf20PqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7A9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775220333;
	bh=vZt5ZsmfIPxeqt9WGmySNoN1aEs0JtJgXxIC1oJva7o=;
	h=To:Subject:From:Date:From;
	b=BTf20PqY5KK7F0krk1OxyHRAZbrYTGo+Dk1dZ13LyLcST6hWHuD3gaKCBeiF+7fsl
	 cXKdCMCcEzyMpSIVh4+CGZUsc55Y1dootMy9a0wazviEUqb7QEkAII9oxSGsyN+yj0
	 TAlpcxyV5PHGGOz1zjG+sV5PfCXWxHBe63emB7E/KIXgTwhuGX7CoWtYbdQ8UCla7W
	 JtHxWHvRC0vJz1PRB1h1MhZakObhoUu96/PAqlGezWJuQ8xFcTzKAAm/oNUO6UJTqS
	 GMHATMG2fyeEmtIgs/Zx4SXoOEOvdJI2NW/LTY6ZRNL+QedKJoG11k33ZL1L9pN4Ke
	 iLx8wEC/ucTSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B899CE85363
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522033371.25385.11476686906244003917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b879f64a262053908d058d19a6baa280db4fec90e34ad6096d1808466623c4
Date: Fri, 03 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775220333
