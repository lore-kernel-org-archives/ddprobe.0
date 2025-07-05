Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265012E3702
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751694594; cv=none; b=iYIUMywhHsloPeEOeTLTmkAPx0Muwjmb3ZicA4QexeAMTWoQigY0SRulbN554tRX0pm4QDVDVM1SC+h7Z5zHqdIkP1AB7zxJWDEgQFdqCmI3mjHbehDmw1qSAu11JSQFPljJn/xNL8ZZkPBZgzwysz48kZp9b2jZviowBj5rSsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751694594; c=relaxed/simple;
	bh=vAJdsmTq+2E2M6mVk1vuOarwcSnA9t/qPlVDODxSCFU=;
	h=To:Subject:From:Message-Id:Date; b=nULfDnM375hFtpDB500pK+T1qcLXuRlfB432cFLDNE5wNQ2vHyEgWhbpyb9vQFdGf559TlsP9bC4w4PUgSGjg70e48305oxNXoGjHAePkHaHvJ269PyQ9ZoBBPA0r4+pmIXaVQjgisNlIGtNZG8A7ywNpumjFTiAq2lpMjmuwRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVDZsUvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVDZsUvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751694593;
	bh=vAJdsmTq+2E2M6mVk1vuOarwcSnA9t/qPlVDODxSCFU=;
	h=To:Subject:From:Date:From;
	b=VVDZsUvU/m89hXUJan/V02QpfoXj7SDILpASBsOMBKOMWGriElJH4LGqOEyrKzQZt
	 xi4/u3qO5CJF+P1lPs1QuNbeo2fErcfKwDnwPqsEambrrU1+U6PJepm0jcyethgz6q
	 JX88uwp7kmeNqgQfuylEJeE2s5oRznVckDo85A0qJgFQ9QAw7FZZGuxziECsidGv2S
	 nx8sIH+Br9cZwS8c8cZGbL7c3UwaL5uVnz488CFt+rGNopZC78VYsQ83fkbMAw8KNw
	 9t7lY/7sAp0gFWHsh1wvdyyWwHKDdWw8MpqimTympZyLpwr4KUD7Hx+iHv/8pg4g3e
	 mRIn48TjfolTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91486C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169459357.13333.7171475495395663907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4968656c00600fd33865828651a85e3c6779b69cfe7a6d511dadea7b25365b72
Date: Sat, 05 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751694593
