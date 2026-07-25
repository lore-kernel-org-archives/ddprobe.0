Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5FC18A93F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785013834; cv=none; b=XVWq/IwzLotJQWnTosnw9eRgPnhLGm0bYaACOLrkFFz/ITx/ip5g3+YDrJ4TKyfKCrCZcqfxop5MOAiC4SRe0dHRDJQhuR2QFFxkzRXnneT1ksvk9OQHCXVbcp7IfVqXHhQmGlV9PFl6FStd1q2klNQipNjpzFlk92r//w+7TpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785013834; c=relaxed/simple;
	bh=ndy93+LNhFV0rxlM5qdd/kcrVZVGWasJ5j90hklWQgU=;
	h=To:Subject:From:Message-Id:Date; b=u0ljh4ESlr7UxQ+ss7f+bJyIMWD3nLemI0UiK0Ejv7Uo/ZZqeok1G0U/Aka84i4xcnC6JqCrSvWI1iNctUYKKOGbSZlq8D+X/SVi51KGfX93/6yvkoDY35Rbh53l41Eudyb/ik+cEnf/ywGA9fDHFPwe5wcdv5NGnjkbTRG/kzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5qybL8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5qybL8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AF9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785013833;
	bh=ndy93+LNhFV0rxlM5qdd/kcrVZVGWasJ5j90hklWQgU=;
	h=To:Subject:From:Date:From;
	b=o5qybL8v2RxtYW+GMgClkCY6ASuXmen6HKprP+wTAlKy73XGFtZD5+d5EW/MXLtfn
	 AP85zyJLdv0SxoXGx5KGheFaeRcoCIAfyTLR/3ojCN5ZdMc9K4YyjMmOCbDQCrfvjt
	 f570r3bgF6nOfDL3Vl4kQ3mS9wxkQ9eV5pbw3YgPDnEEbq/LkXR45Go6S7jDeCHJ52
	 1quhyeQ8I8/qewIY2IgyEAVKWsnXXYFrbiGhal+AK80n8S/fvjZ52HImNv4UcWGfoC
	 1seh0WKeBegfkKSQcUerHW2RcRN9foOvm/Xqq4IAi0F31ipFd8wtmDWTUTpl1e2Ki3
	 Al413nvEbTi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F6C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501383368.15054.1826154495863325809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c54065fbfbfd86430b2f485e4be1f2b21ede54b2bb1e62ecd5b95ce2e3fa7a
Date: Sat, 25 Jul 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785013833
