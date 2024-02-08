Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0068A288AE
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707419297; cv=none; b=o/1OptMtdIbf0xnsk6tczhBLm5ePvsORF82neYkX6El9Yq6DADhyWXXE7ZPapKHTRFlG/QdFhK6pQKwhMeFpUr2CnhYjFh66Tbk3Hx3N0touIR4jYci7L8UbgJFuQPGzdiYxtJVOQgoPlMfKzcC9FnjFtajhhTKCldR/u9W4kkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707419297; c=relaxed/simple;
	bh=BL4LXDQcO30UYr1x1fruh8CJ9k1mDMPjY7ZZNe3orOw=;
	h=To:Subject:From:Message-Id:Date; b=AxJN6UBIZjDrYOXWlr24z5L1pFwEM/1Nw6HbD4E6lJIL0iTa7klsco/TxJ/xpz5oOHtR7IPXcroKlhmnGjD+HWZg9NMeKGWjBu0IQiFFoNMjRLfKy+Y9+ScZO1aRusDi9jUYlVGGIG9SH3ua65tGzUtgWT47pkfaFw31xGc+TIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUr7kasO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUr7kasO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8DFC433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707419296;
	bh=BL4LXDQcO30UYr1x1fruh8CJ9k1mDMPjY7ZZNe3orOw=;
	h=To:Subject:From:Date:From;
	b=HUr7kasOp1VJ+Myx82xU7fAd3DjNTR6H71uexrx5fEqPac7pQFhffwY1HG23nAz7w
	 x3nEMiTKlCctbqe9r7/5nyGiQlKzNTHz51LH/y2W3ACQ83ymaNqWm1pD4/NgqRW42F
	 tFKNP35a0RKXZPw1lUqViWEdWjLxz0z4wtN7+I3t6J3va88vBqePRGgbtgCL1MTgLo
	 4rorpOo8j7oP7hYbW4/+icTXua1ebcE5ckLJSZgZTKqOYYNbPVvh4M8lA0jAD3wwu7
	 1WYoWfPxu6Yh/SniQ7wmu0Obo/PjTSkwyFf4MZg1+gNpz0skx8KsXoCdNZtbSN0gbs
	 xozayHSSBgifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDB0C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741929638.32176.14009403365091431887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b48dc7b32fa7b5cfba24caf73c11a7692468274e29d9136be7454574810284
Date: Thu, 08 Feb 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707419296
