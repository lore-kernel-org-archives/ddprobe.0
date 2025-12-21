Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5BD14AD20
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766279634; cv=none; b=tHHk49Fm0wPgAaaNCUGlwN4WaLkjMmpl6q40vJpVrjB/9jymZYhxgQyOSnCfQ5sq/ZdmMK1W1sWahq7Cs0sNUbGdf4m6Jb+fjphEDd0C8GnyfqQXPQVJP8zoxsa2ESk4xvwB6Dx3l2FinPHvYK+Bs9pD5FVduf/90pw55jPfw2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766279634; c=relaxed/simple;
	bh=9GuQpjThDc+wyHgf1dX8d5bm8etaqaFMeCHmbOxU7PM=;
	h=To:Subject:From:Message-Id:Date; b=lGye+T7ZrcPgDO1APDb1gfVnFOOvve1TYEFrwlMrwD2d1mpWeMziIK86dX061JEMUBvWaIpAStwq6MkS5at8MA9Ix5TUkeuzJ/JjMBmdRu+ajLuHotEfeScA9tyRebLUNou5saBLrYZOkFNpFKHrfU7SU5MW3PMyJxeNC+Skhzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGFAJCtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGFAJCtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766279633;
	bh=9GuQpjThDc+wyHgf1dX8d5bm8etaqaFMeCHmbOxU7PM=;
	h=To:Subject:From:Date:From;
	b=EGFAJCtTTl/mLVjvolayyDhsC/MMtRdb5XQkbJZakhUwEKoajpXHQYEhEDlzAygdw
	 Jj9aPO2ZACPYgYRS0+iSIcT+QSpld31agy0sX3kxwqMWmuJgCmPIhbJiVbCYxGokjy
	 fDMRpacCeGG69ikqW4IycAjnHN8I2pcjlCgLxl2ciYTgHHPFd4u2Cz9tnPdqQss4hE
	 B3h1Ux2/vfYdGP8w+LN90wFsHqfoi3SaGTImChiQD9qm/zr5PYJ7KPxSWFQOaygIb2
	 9jgBUiNPyCYKpyeKBV3GyYyBZPnUjpIexQojfNlMljtwILbwkqZtdOzXXY1tT9DhEc
	 w6/KbnKCG2Ieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9AE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627963358.15313.4794457075488545749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f70ff47927efadadde9c6ccd08b3fbd01cf113d598aa560330ac73567cd3546
Date: Sun, 21 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766279633
