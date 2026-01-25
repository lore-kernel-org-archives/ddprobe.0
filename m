Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE6B3EBF2F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769313234; cv=none; b=luSTwGnbZRM/0S3RI5hc0xTz8AxzadJ3R9gTzo8AnVciZkYR6NPBwm/dyq1/wFLXZYDeh7a/Jo4EiHkxvWLC5a0XtuWPnlJw/uZ+Y55p4nOoU2gM+8xxPIinEWzitKxt+OnK5KXxOvPveyUT3EPFooMmTDnQ4Nx0ApNJZVzT9Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769313234; c=relaxed/simple;
	bh=rQ3Zl32f1G+VdoDy9Ge0xK7pTpDX2ZNV/V7k+08VWf0=;
	h=To:Subject:From:Message-Id:Date; b=FzmEMwjgvqA9n8NK2bkx35pQjmE2FWdAgxqkkfYn2sKnOASyu62dKY/EYV7hXdknWC1p8yu0RKAxDVmMxPhYrhTxmddXCZzAEuV8kulM9dGggxoRyvk1fyLcsRup6RpeYtUB9QrnZqba5sSwsCgR2uHpaaY/cEur2J8YijwhGl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APe2cqHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APe2cqHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769313233;
	bh=rQ3Zl32f1G+VdoDy9Ge0xK7pTpDX2ZNV/V7k+08VWf0=;
	h=To:Subject:From:Date:From;
	b=APe2cqHsFxVYhcWHP90AstxANcJVgytug0SVhS36kb4vDcFFnCw2PctCvM6faolS9
	 bCE+7pGqzdtQ0WTnZ3K24LAKlGoy5HAJywahnpq/93yK/a1aWkT1BOHQR4UcOmCTC0
	 Iuwm+l3NADrKxIwfYkeXj16a3vWojcMnic0A9HCGZTOqPgo45GfJeS+SDUzVp2wfkr
	 A04ecTziRr1pJuFk8LY4ZyLvwFXAGEwYDQ4OlPNA85uAhOEVuL4la4YwjGLgdz7bNF
	 lGGglNWYwYgVOecJBKat48iwKANfgcqDFfeLEKHvhd6C6AN1DLj/E90YXGgGqxYIwg
	 Zc3uY+0tWYdug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95245E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931323357.18930.11301640336396896845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dedc158cbaffc44532cdeeeafd9b41a016313999f8ca598834d055d314a6391
Date: Sun, 25 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769313233
