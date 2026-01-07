Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1233258ED4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767752034; cv=none; b=YKtC7zLM8CoHYcEikAGbn0OuBju7nBONpPt2FAWUAR3piyIgd7cEu93wUXmfRFXrP3PALx3skhxXut1pntwcnvJsCI0DQHGtfsQ9oQFNIvfNqxnI6ScrgKIyWdyTuhvQS44gS1gLfdLE54VCZon9A61GwEKO/s0vXmPZ259CGCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767752034; c=relaxed/simple;
	bh=dSngJUY4BXh73UCZbcoRBbr3tHGGbhveWm5nhutkw0g=;
	h=To:Subject:From:Message-Id:Date; b=UiVj5IDG5lqjjA/oCrjXHq9byTgSoT2OfYzCFMwko5NluM/iLhgNhtt9KEthOhPo1SyJEfu/Eq0h1U4ptZevP20RxRhGpkffx2WYEMaYczBUdzTcSuVTdpG3qGJygMTa7fo9LKW04u+P7xF9Eciph4vgiosYM5npTEJUttzAKmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/gOuSPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/gOuSPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C613C19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767752033;
	bh=dSngJUY4BXh73UCZbcoRBbr3tHGGbhveWm5nhutkw0g=;
	h=To:Subject:From:Date:From;
	b=W/gOuSPGAt5/80LL69VeUmJdZVZDKYD7S3cmfwX89VVGBdvKz3QTUeqUGBJyWWCDv
	 rQuOk+79wpHtqe35VBokydjK15n133vLCQ4PhprDIhprskQMheMGrAIaCN9eQcZKbD
	 1+vxIrq1Ww08M4gt8BHmxxCjiZW1nOZA8wJYxCssmztZOBaCj4E6iYNXiI5uUze0lC
	 XTo7GdslMr86WUClHFZf1lV7kMGM3CHpLWRhuO+9c2mHe0reKMAUNP2QHUbcOn7zW+
	 sGGfp33eBtjdO8RNsu3Rm/LEQZvRVOGUwAi5NXqYbDHwn7Ayonfwq42zm/zoTY8oJg
	 eMvLXtldhWEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C2CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775203357.16334.17894290608015157158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793f475be095ba831f0e82fc309ba129ddcb7cd0a5c4587a31b9ef8f2a061277
Date: Wed, 07 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767752033
