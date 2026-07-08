Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ADA2ECE93
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783505914; cv=none; b=dwD86JidXP81J8Cm+yZk3cwjNuqbqiY+dXUrptntKS74gksDj9Bw3m3rTKAYjXSWdJWFQszc8v/SX6QbrCWib4q/Wg6baoWjLg2i8SXwlPly+xCUOhv9QQ3aVczz7RWzLPwxePganyrDRVqfRCcYp+HfSvxvXd7MeoV/CLyzv24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783505914; c=relaxed/simple;
	bh=0wWI6bHgCaPjRwQj6Efwhd1g6ECMQ/1pnJD1rqIYcSU=;
	h=To:Subject:From:Message-Id:Date; b=PNoiaKktCjxkBXqeIhhKat7MTcqAtJXWz9MXBxFqRbilt3ZmCYDtsWiwjNm7PE/Yer4sF3vpbI3SiEOa3khMBV5KRTl3hM9JuYQ1n0q7YHHLh/TU1/SGacuD1BAMX/tstT36T0i6M20kegcJasmMNwbEERAyKi6jYdrOjE1r3bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngbbawNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngbbawNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C995CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783505913;
	bh=0wWI6bHgCaPjRwQj6Efwhd1g6ECMQ/1pnJD1rqIYcSU=;
	h=To:Subject:From:Date:From;
	b=ngbbawNFYuoKaiPahEZvYT0/l+pDJ8eayuFs/6vcqbQAunN3BtgzPtz9a+qx9RB5i
	 8DdVAZK4Yhxiw12S9bf+bsQtBuRS7FZWvIxYkcie9qOabv8A9iJ0NcjQ97JTTzxyiB
	 gdTbdC5uxi+yeUVUS33RkA0FG+v3hB8bLkicz6+NYFf/A3a7fGzmDiv2ix2s5VfsLl
	 aGSy4c6q9WWnFc+IAeYS6viRm3yaHPxtWTwYu7XY2CfLtukvLoZIDwqJeH+IMhm8ts
	 91/8VbFtY3VHIGcAkX+Xrk/9bhsWPzdnfCoUSrJpXYn98Xjwp2MeJueJTzaVfbXOu5
	 G4Si5meuINCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CEC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350591368.32229.13293588715142721476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed7a9bb0c697de303efc5c4f1c1b5e81765bf7bc80987cdf81bbda5a963c394
Date: Wed, 08 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783505913
