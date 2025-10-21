Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D01934D901
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761073194; cv=none; b=kdHi48jzx7MnOipf82MxBQ9sFIjITf5/Bnh6IP0te6muSzvVhZ10cyCKXUlNv8zAgPO61cVxa3JhzQPZxO+iRCTGE2eEVVVJ9HR6J/jqGLqqH+E92HHNu+di7mn7DgHByxyWCO8j7iF+BVInym5DjhKjHWrjYKMq15CvNc3La4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761073194; c=relaxed/simple;
	bh=RzUPHOme6wbm4bpg13dy4xJHQ3cWleOfNLNzbVNrZlI=;
	h=To:Subject:From:Message-Id:Date; b=jEDekPbHff6qkv0SPOYhgxhrNRbbToc39wlngOmCmyOT2CubpUiGO/4b9KP6LR+bJ2+mGK7ostbrDt2fMGOjCyEtLV6FboqPMLkfHOaCvvkqu6amDrk+seAme9wIIiiBAIvyxCLFkq/HBSmXd7hJcKCmWI00+yDtNSVeFZRm3Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIulO4Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIulO4Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A699EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761073193;
	bh=RzUPHOme6wbm4bpg13dy4xJHQ3cWleOfNLNzbVNrZlI=;
	h=To:Subject:From:Date:From;
	b=lIulO4SuoEUe4vx6oB/qdvIPKNOjm33yiNy/doez6szd3DduXhYr4dtSlelSniGps
	 7p8yuCyaP5FNk1GAbrpAi2tg46miun+oVdnuctm6xQuyd0N0Qug8Xp/T7kX4GwJwBH
	 ZLK24UYiMr1m1PHQuqDyVDZIoENhgWMOR6HJh/teCUSJ7aq/kTr22AQ2pkn4/72S4w
	 3doVJbhqmT34+SfV65OoFVdb/q3/ruCC5kKFlZYXIMdWJH8e9haSm87tNMD/b+xrqD
	 lXyPDGxXODJbmFhYiBYZRFibSgETpM83YkEQgrdPiSqIZJQOyrZG+aCH+LPg7gecil
	 2Q0/iS5o/Of/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F23CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107319359.2631.9679603191684134851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2361aedb57a07485f901fc94e2bf701c2f4f0d3d9643f0ea6c94605bf1bd1e51
Date: Tue, 21 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761073193
