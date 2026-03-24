Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2575536E46D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774331094; cv=none; b=lNCtOhtEgK+gvsLXo7vXWr0B333exXQhukE/mQkaxO3Jk2EXzyiIu7TZp1dcZhtnT9ZfQv30TDVmPyEc9RZ2kKaDxCJFqdh/fjaFHU8Sq+hBAuQzyQ4JJ35DwAFKpX3C3QI5E0pOObLWbgPdhIoWy7itoS1CHcgVWArx1qW6kT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774331094; c=relaxed/simple;
	bh=D4V2y3qud4DIlN6kr76zWayil6SYYqBuSv0zOLDnxMw=;
	h=To:Subject:From:Message-Id:Date; b=eifg+Q6s+U3pjDhN+bpH3CEuUJEVWgqm+JfYyn9oCq573zMcQXvBCuW1J2fKtYDx1XydZ5jutRxOLI5IzB0Za2F2zEUehO8so/29XfYBsYHcMR72w0Cd27zG2jkQGXuCaCnna3uZoujGaPK1LtN5RliIpADIJ8JFZNhnzcbuGtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCOmaCvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCOmaCvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774331093;
	bh=D4V2y3qud4DIlN6kr76zWayil6SYYqBuSv0zOLDnxMw=;
	h=To:Subject:From:Date:From;
	b=mCOmaCvUhJ247nwrDec4zK8CTZ0YptxEjQ7g8I1Nzs6S13a7N5m42sEi8PDn/MQqC
	 +78DN5v4iYy4NS1K1N5SN8tmkklKxC/MkzT+/QdeVCpVsEqhH1wiaBZrgEmbwqiRUH
	 ZC56AsmHXMxFsYRyaA44WNbsgPnDV8MV1RDFC/+Hl2xYs4nZnVkpk8hvem7QsH0rNO
	 /nkPqmH1O4lobHxbZWw6mt30LLvaqTHDa0eS5JQtv5v7iYobNEtWSekSh1nZrTCvC2
	 4QVyjTQnBUJAKutdMgSXFqNwoQrkVeGT0WAoTldxoWAsm0077ujFFj1wY8SZTWlerC
	 LtdehdxoV0evA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBEF532DE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433109358.5527.11871892424830204351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a09e4f65c7b9d60840b31fdc0e3ac615057bdcb23d4e5ec3008027315aa162c
Date: Tue, 24 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774331093
