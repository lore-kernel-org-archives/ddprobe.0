Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7C4A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753646994; cv=none; b=eGdofhi3iHUq7CDtMXX2IYRM7LKCC7fJWManOdwD/U32kFqCcoNsr7yY7iWHyBSRbuDFu0+XDnUsrAs2y0JITBB++LzT02aoQeaqnI6Z+KrgIf+rIGcldoN2kr3Qv/nXCvOB+4Mq+nrAGyODadfMP3Aese0jpz5B4i2rbO7UvoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753646994; c=relaxed/simple;
	bh=msqkL+sfNRMc9bB18b0wd5eRueS4YkRR6Qwwmka3Lrs=;
	h=To:Subject:From:Message-Id:Date; b=LhlxHKUn/uQZ7rV7VjV3+8Pbl551GDZqScVyj2+ls+mjrX8AtagUebHIFaxlMpyltshPwQyAn8OgRjGVA+5KEg2WHfxI4PUNtau459mSyKNGywgsldAZQKueGuIO0bIrpzyOXQZLjnrzW1SIEL+2zI6aYkSSRak6Q9LNXB7YBR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkZkoYSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkZkoYSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753646993;
	bh=msqkL+sfNRMc9bB18b0wd5eRueS4YkRR6Qwwmka3Lrs=;
	h=To:Subject:From:Date:From;
	b=kkZkoYSps83LOX/Iw1yDp498ewySEekw746ipwyrEjsoTn5eOlZQR3fF3V0K6mgOb
	 iiHtoeL8JKA8IbH5QaMg2Dyw+h53t5j88oMwq0lO92Yq0sUZFA2EkWEK6ho8lAwljW
	 pKIJfokogmN4pGmUo1slLO8miYi8J4BrYbv1IV8uph6sSOleuJpBXPQYMGMlLpHInU
	 4ucle5ySdkzPiB9KCgvJKBDq34n7aF42gz5H5t1aDT0XFgSKeu+gTHZm9lZDSI0Zg9
	 rMLP6LeTNKKL7kZ3WAwg+JqW0b0B6nIny88nI2vED5CF1SsxuTKur/ZeUAUsn9fbWl
	 EzL6ewnAqcQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFDC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364699357.26726.8100220326773387608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62095e398b6cf1d8dee3eb116d874b99745e974ae76e80932938b211ccfe0c84
Date: Sun, 27 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753646993
