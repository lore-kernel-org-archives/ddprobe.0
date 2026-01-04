Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315A312FF69
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767556434; cv=none; b=Cr87uXCdz5+72X9t/E4w1N08/0TlZ56Zmf6FS7mBLBnK68TCS5g6kedpMHAoN0w018FfY8zgJOldJ9troOg42s3GroYTjhK6923yX4CllXuUlaZH0f2pTRlbueSwHLdidrOdMp2DXpiCltK4gxIno5aA4AJBOE3Uzv5j1bfnMK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767556434; c=relaxed/simple;
	bh=LrnVfcG1lYdouW6l5U2Rz9YFPOTZ89zqbcw7/kPk71U=;
	h=To:Subject:From:Message-Id:Date; b=I6oTeBtTYaP+Lar5Rc4fsBjuOqPiGUGXWjoGsWD6OVt0lZJpNMzT49YGpRrCl3keuIYLxIMC10U7d1H0rJUkV6LvQU22iLcFlDf5kWYSA7yXsuPbyrXtSJ7FRWxzivY6gZeZAN280xb6AYZ/n52uLhfct9f2n4jZUOh/eokbx38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaHBr4Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaHBr4Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767556433;
	bh=LrnVfcG1lYdouW6l5U2Rz9YFPOTZ89zqbcw7/kPk71U=;
	h=To:Subject:From:Date:From;
	b=uaHBr4AuTpoBxjpgmzaIieOOI+D932+x6r6UEQi4ydfJRRSE4pI3gfJROpER0bocB
	 SZuQDHkOAW0qT4uZnBUpSolLuOViLboPQXUCFqv2TL5H18YeZK3Pn41kUMqlD21kzl
	 s5blzu8p46gZCard0DFmjjBe8VZDAl5yLp9LSv5lS3/Gup8zg+2gQQcX39GKfxmMRO
	 lNjJZea6f3dFfl8N5JuzwPRl3SO5wCBpXRhuEsCdMDMimxuoUJylETXHZtVBwSWmY/
	 YL5mZoggOE6rWPFB32dg9djXeLxa0X5txr9LHaHUGfK1eLXt+xwixs9o5pztUwP0t5
	 Q8cLoJpYqMPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91266C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755643357.30666.953114014596717175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c928455037b071cf26d7bf9b74ccbfce20fca9d096688c6851549050d1e729
Date: Sun, 04 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767556433
