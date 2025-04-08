Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D144142E7C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744127994; cv=none; b=facVmnUAII/aO8+5padS8O9nwIO7X+ynxpqGXS2Fhpm9wPHJ7vKHNjvXTlEEHP8350RhJlZPmOkD6JFSmaDjK0ntxdKQbtOhGKCn7eIpmLKOgKR1vG7pAYTCWSqq0ud45lQPt/WEk7n8bNL/nmNDGo7LHHshllHhLAcJiWPkKIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744127994; c=relaxed/simple;
	bh=7p3Ut3BWbkjdpwLNcLr2SqhsPp12GlQdxelB5YSI4CQ=;
	h=To:Subject:From:Message-Id:Date; b=chDq6uioQBQdogr9zBESfbdWUl8x54eiOtMaZH5/iFIacuyLDSJol5+4MeXl84gcna1Du3lnMGvCrJX2cisF3ycZ0VuOqkPk1+HuOHbppRK0TzFokhHmou49L+kQT62U6fylwrYIKpTnTdf1wHHcL7ItVBVluMHMSP7H+gIYaeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUfKxWYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUfKxWYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B03C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744127993;
	bh=7p3Ut3BWbkjdpwLNcLr2SqhsPp12GlQdxelB5YSI4CQ=;
	h=To:Subject:From:Date:From;
	b=DUfKxWYpVJaRxbT5AS79miTiYt1eVTxzaxbcsw1B9z3Lynb/juKgyrrCt32oDOwWt
	 0buSo17YQOU4yzGKOO9nTvL85MZb9AFq+9CeLaSxTDMBVoFbEeBcwxjOM8KebOoA/7
	 TAyVEubcE5RE2xnhFB5YolmUNsx25HOavlMAucFWVdojRC9yEU4BrE2X6Gj9leGOGA
	 wJ3W7TePRwCsah8uSkz2RH517nysP+3+cQ7s1m73T3eX2RpByy6vVuNTMGSz0cK3l7
	 /VvrekmppSwfZDV03JPof5mJ/wtdbYUEYmTI46NtceDlu5ORtG2tMiP1Xaa4euDyzC
	 QmObGJOfdIkaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A4C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412799358.4670.3676001013163329676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3f1926119edc50e83223f4240c044cd5f5f9797b6bf6773c376b9453653eff
Date: Tue, 08 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744127993
