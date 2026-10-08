Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5444410A26
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791468634; cv=none; b=fh0+LtDzU855A9wgFGv2EV88U6GTEZ/0S9h+F1celKeHjoBORa8ikplydumtZfCLEIKuwLsP0ZahuHKZ6DFGpUOctnd21IxwXvrBncN4GGOTnUk672y0EMYccidXlmrrj8LNj/8+ZBY0rRzWZo8Q/AFXDGA6H5q4Y1WJoTHxCu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791468634; c=relaxed/simple;
	bh=ApgCbCQUd+cQE8BOBMWs8IlXJWtQO2JNp0E2Mpa7Mhc=;
	h=To:Subject:From:Message-Id:Date; b=TB0PcwP1V6Aw13orv0+ufliE6kpBqGHRodexoN8MEV9/W8U1pyt3+TMKFiuPTgSTVCPAbDj0EdozTR6Jq6qI+aUHyuF9JNjmcF/+br/+0d/fQYc21Ke3RkQocPT0akQFI5/htXdffkwMsBBDtiXiefJXvXuRqG5Sl+pxtOw0+S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+uS7V9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+uS7V9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9691C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791468633;
	bh=ApgCbCQUd+cQE8BOBMWs8IlXJWtQO2JNp0E2Mpa7Mhc=;
	h=To:Subject:From:Date:From;
	b=U+uS7V9Ia03T+miF0CWmgnwgoa8qoX7BLLfCoPJxetGplMCuyNSRG9lWfKPlzQTlC
	 19BIR9Tg/EsPb3bdRO0hvDltgyY4FULZVqpIk8CFEepA0ngHeZKcWVD1JgSIRTvpmV
	 nXAqaKzPi98t/gUihMokx1p6Rmdh2uz9wzugxVfpTayw1R3EwJ2HBJ+QG7uuPTFdLY
	 rIa6RwJy2/RA3My/ptzMFuefayCkHxcWZWE1ERCWZF7HFTcow/x4VdZ+KCSkyTWNzF
	 whhBza6SHmb8dkZEnV94Zi6Y6fUThYErKPS0J64ExaJIU3F7d6pOTN/hzYlICR2DtD
	 /zzO5aSUVIyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE714CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146863369.29165.12175045578510603099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a9cff53f47e3310aeada666b7f6bf201e3f52c20abf8560e2bac4ec47d4f0c
Date: Thu, 08 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791468633
