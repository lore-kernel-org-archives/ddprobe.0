Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447CE2AF0A
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744524594; cv=none; b=VJLhw3Lr44umfvYOrfcvUy/urqne6IV4CRLqYTIus22Wbz+4DSFzHRJEq3I9BpkaM1ruX/t0r8a5jbdzq8z0AQWU4cxF2jupAt16djk9DGTZUDugAPEZy/NwQ7ecJM7cPN/6Hc67pucPmQRaAy0hqrgS1rKNanFx9F2ldIPW4Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744524594; c=relaxed/simple;
	bh=V66AAQvN/p/1XhjFzMnZp7CjtKiESJ0szcsZr4rwf4Q=;
	h=To:Subject:From:Message-Id:Date; b=uH7lKPdFPw7rqi6KzGJCenUV6kQ25umLNA9t/Jjj2o5LJln/yza58GeUq9YM3fkxrETBZGgRLRG4raCE49pSfK8MLrqfu+0Zo3syjd6NGRy5+HIy6WmZdrSmV2SGQ0hC99iIXZefX6KY0TLx0Wn9NyDIcfihf+eRuQhYIPn8VQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga02W6Mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga02W6Mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16CCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744524593;
	bh=V66AAQvN/p/1XhjFzMnZp7CjtKiESJ0szcsZr4rwf4Q=;
	h=To:Subject:From:Date:From;
	b=Ga02W6MjaSopXvBy5xBwaf+iBA8iZYiHDN3wxedNxO1imh4MFstw4IlErbD8dpVlB
	 8YHyRt3ABc8tbTn4hj+3BtT7vi2126M04hrtUkGH36jeEwlmgsNDpMIk1WyoGvrtqb
	 c3ocZ71+p8pW11tMUR2leDHWIb031h2UGwOxB5Cc7IPZXikmCfZmQXLHYbBX1e/Oed
	 HWkW1YJECVAqDwmTD4zma408XIiT6TOvUFptHOU9KwOzC3ZeaGTdGHew+uVQW8o7I7
	 DmFH+/t2JhUNfIsDKbHkjDN8kTF4oP1xTU0809p9At+WFpt1HsW+egRCcSWxtWAFjz
	 5qIyxA5NFQcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE2C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452459362.27179.12091124981081455562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f61350ab84e4d95a83c2a84aa669c9f9f9c6d59aa6630e1c86cd4a1b472c94a
Date: Sun, 13 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744524593
