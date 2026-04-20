Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FF637F75A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776656854; cv=none; b=PPV3EZmgRBI7ORtbKN2eQOrKgJgM1mudCx2jukOOoT6fEk2Bm2mJpkDVU4LVhJR6G/YN1tTHf8rViDkzOn6zRpjbuJnMFJeVRLfLYwBEHACR9wgl7kDec7ti6Bu4KwoUdaZvCbUOcuMMxdPD/zYn4LQII8B879EnV1JkYVtEd6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776656854; c=relaxed/simple;
	bh=U57tSBWVSW5NTHR64+WupL0mxoF0oVx/pE/LEav4sv4=;
	h=To:Subject:From:Message-Id:Date; b=loPI/PwUNq2DXqaAsF4nRviP9kuawBoHbBI6q1n4n1ahP7xMhpV1xMNn6fQXgCVOkPtYwPwD+8iPr6GhFceb2irWio4rq605D9X883MQ0r/5GtLAmdkg7qHqBrrWWQVq78vF5dno6NeNwfwui3Ai+BPt8BceQzgvnwJR9CbCGxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1LLigqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1LLigqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA749C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776656853;
	bh=U57tSBWVSW5NTHR64+WupL0mxoF0oVx/pE/LEav4sv4=;
	h=To:Subject:From:Date:From;
	b=t1LLigqihLp79HkxX9sjbWlQ+NCsD+de+F9JfeKt/us0CuB7GQsx2LDvgrOXHpqYe
	 WKIen/WnBCj5ba9WqrvacZ+PEh6wNRNUkPVk7YpWINSqU00MoZMfAx1F8ZdxQMBe/b
	 LQOJBPC9aC+vjFM9/CSOThPYtLdIC2ps9amhJszPcOQWCP0iETC1FPer/9QrHhXiBi
	 IA+riTl1yqH2IWD1ZlXbNwY1OaO7wUy9fCpBay58fs3QRYPqcBpDc3VVrPupZd5VVE
	 wV0tI0kripdoFle2pIgQ0inSsymIOD6gsB7bgwQ6igPmMDCCK4BoXmBKxl1MdJGYe4
	 BJSXd43SUKgSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C51EA71B7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665685368.9558.15209372350480734727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d98d5ed66b302a1ef9cc5316e4b3dc9b341cc1a983391774adb8710a1db2e94
Date: Mon, 20 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776656853
