Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2F34A3C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770022434; cv=none; b=uzniWrycRUAesYXJKwR6vaTu52fqNpmwbd0yFuvi/LF2r4ilsbvAOS0yUEMyVGlXEAFc4GQE5oWfKyVc52HXPZQvyHhM64W65UiUHhLPottNWN/1N0OhtW2cHIKN8LDC/SHteZt5srje7oaigsRgTn9kAPNXWP7AKNoQrxPHjXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770022434; c=relaxed/simple;
	bh=MJ6SlSKjmfTDGeegjm5ZWLUOd6ZlhAVX1iQtLQPvm6s=;
	h=To:Subject:From:Message-Id:Date; b=O9bQPXC+xnyakUykdkzS5ijdAvmEDmiJ2/AG7xjVKWJyn22e2NhnojD9NEh4nlfUDO1DC5qE3+NfAHCYdGZH/lZHAVri4vzI+4FpnB23d9JyN3EHawgImeQMnlIYarHhCeQY4xf15ehQgBcP1JhDGAMvGRXsjw5rp5G3AXo9G5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBftXc7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBftXc7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0567C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770022433;
	bh=MJ6SlSKjmfTDGeegjm5ZWLUOd6ZlhAVX1iQtLQPvm6s=;
	h=To:Subject:From:Date:From;
	b=kBftXc7ybScaphSABkVy44DzeWGfUwv/QjJeTrERWJOrUbgM9AKVbJdN3ZrYwICY9
	 cjXSPYu2tlifbwmo9nGjJyi5XYNvqnRE5OVXUKIq1/f8zrU/lienJWLFVKEL+mF5SE
	 YzJxNx6cmovCFFguuJJNRaQshgUyyTWoK8qlOwyWbjrkuuynJFT8yXPgiOecyzrypC
	 P/bARRh48i4esX4TVE4mBI6gcBrpBy5cw3Yemniq+yFXMdyszNckVRNthWdkqD4Cn7
	 lR0fM7fILceX/ULmX927tR1TecDKsaAhGMz3xQojnWejH5b8IuPRHvIjDUWkXxO7vG
	 96H/y025+vKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986ABE73146
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002243361.28603.2417183914621499697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95d34cb60a192cf54f84b197b6c5a34dd6c1affa521c1adee0596530fee8572
Date: Mon, 02 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770022433
