Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E503EBF37
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769194436; cv=none; b=Y12PatQVZlqoEftIJP0kD4NJKWUa8bC67WV4tBLmgDrqzUY7GMehwUYx6JWRjXy3MBF4aMs03+fgIrpWz8tsdC/ofxcTA1Yr8FLOZcZaavGrAtOFtPaxHPIhv5JIZRiEDzLFvcrWZ114uxsAGEo8lVcHYc/6GW+J+Nfsx0E2Wxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769194436; c=relaxed/simple;
	bh=qte6jfstFmPdmBE9XhmuOKzYi4Xg//9x0nwPutrGhqU=;
	h=To:Subject:From:Message-Id:Date; b=Xqj/9Tsgo9tfElRSs8ApXyAFEBa+EV5nij2nIJ/IhBopZu3ClCqMGemtx0sXICDS7wcdkbvuGD4q4rcrJXuIJBJb9QaLc51C0tB8AOccwS7qUQYQPg17C0AWu6E+69+b4XaWD2/+EdPV7L8eey9l9mln0m05dYa8YpBF5L0Ny4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8b8P1GP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8b8P1GP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5121C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769194433;
	bh=qte6jfstFmPdmBE9XhmuOKzYi4Xg//9x0nwPutrGhqU=;
	h=To:Subject:From:Date:From;
	b=B8b8P1GPRkC9wyqUtIHwUuZ8Ki/Qv0OFqL0mamLlwKF7rgW1FfxWAOEeEtw4HAXlQ
	 hScQzgOqfH5wEmdeSjxQO7VG3yjQpmMGXNugUns/4tx7V27ocuzaLYvrRbfaA4G08w
	 WZ41LFPgsc2W46597/3/BDAIg0E9zlvAOfKqmhGN2bu+o8AhfKOFPv86TRwbOEvROf
	 3MW+3OQYnwyM24PbGv5zLJSI6W1Ij4CrMU0JgUnd8zsQVZs4rYhJvkoNeEA1zDvPVN
	 kXbfemWxtw97qME3PP1tbjMTuX+zFjhy9akMEqM/pFc/Hy9SQUNXmMH6606P5zmHxI
	 NT/CBuXhFXQxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96502D778AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919443360.3590.5282220698120819463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8882fd749ecb7688b98ea0674f95bcaf7e4498d22fbcdea4caa60f85e0700492
Date: Fri, 23 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769194433
