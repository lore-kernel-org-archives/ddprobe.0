Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340C915E5BB
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778613034; cv=none; b=GFVoQ0Rz7oBiAG8k6SesLoqj2vJzYPC/oOWdpbwxwn0Zkpifl/O16dSpW85GkCar4qW/yzysRDVQNUlpXSQr4hVGv5oEwQmbcU0SfF+8QlAiiWs5xjFb9W6uP+oAcouGXmj0HwQPuXhBccyfntJ/XI73p1pqLgghkskh1FhAGdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778613034; c=relaxed/simple;
	bh=pah5rpsbowSQTW7ZrpqMapnjLUys1JA1JughEpx8CfQ=;
	h=To:Subject:From:Message-Id:Date; b=SPs4/Rld9twOILshXjrqvB6KyvMwO5vnikP9aA5mTGgswM2eEwG3ur3XUGj/CJ09XVWUXNlCYXJKUKKOVWA3Mmt8r3w3XB5DBFtgOw3NqZbd5BUz/e2BLlVxPCQYpN8ZnDbHYHhmsu9xmBZ6TJIdKYNS0+prwe73/rQAkE9Dhic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f83lXHE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f83lXHE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3631C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778613033;
	bh=pah5rpsbowSQTW7ZrpqMapnjLUys1JA1JughEpx8CfQ=;
	h=To:Subject:From:Date:From;
	b=f83lXHE2z8IUPQSJAvvLJzEQbVzE1yrATRPYaqB9qoiZRbN8t9PYco/skKrArDCBA
	 KO6pBx75rRhVtGF/YJzWg+9nK+Cj3ocVsRBys9ZHP+8UcnnefxYJ93197F4WspqGRI
	 uXXdybmkwSAhoTaHJaxyYu5mdQNeoXLI+oXuQCPQ14wyRp+fF1gmVI5U/ULuBBR8kO
	 fvPmodeX534/Hx5b/erZ1d82CymlxKrwih9E/onKm0GbwCHnzG7LIl3P/bb+5sugR3
	 iIhb4CW8QJB4LZbr1A0rPEYcqfxkrSpHV4n/2IXZkEd1+XV93vZrxSccAZgBb72g/Z
	 arvJ0puQbN0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE81CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861303368.19301.3353922204213598888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bedbcc24d11023c12a3b0fce49044dafa8d27005501b21eb2bb2ac6393140a2
Date: Tue, 12 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778613033
