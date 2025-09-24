Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3534D26A1B5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758743394; cv=none; b=d7inoXJuUAKsOAYieENnfYzAqjfZRuv4wNBMkFNdmC/Q7j3YtJi48a1CgkCyjMRvN7ONDARzBrkLKvP6HHKOtB5luf4XPeTJyBpaM58U0BQwMz4LpyU3zGKVa53c7nVw7+dKAfacHsHlA8qjF/mIvX0ykrofXE5PQLT8/Izes+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758743394; c=relaxed/simple;
	bh=DAVVcPYhL+8Q5AjeaA56dd6Aif67ytcsE6Qf2o0xgYM=;
	h=To:Subject:From:Message-Id:Date; b=X+8wB8HL+uFJ8bHYpoyDFpBLLulUrvqIqWQa4lrgSuWu1acwGFq8ouw+E1WO3BJLmBdM5y4ttL9IuRzWvymx/A3bIPqYzSQTQt3t0NRokAh3U2mfDCHPsjKQHLmCkPBBtcvJtvSfqvq/fZgVPuC3fhxIVZCAz1coThipD5A3h8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHw9ovNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHw9ovNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E56C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758743393;
	bh=DAVVcPYhL+8Q5AjeaA56dd6Aif67ytcsE6Qf2o0xgYM=;
	h=To:Subject:From:Date:From;
	b=nHw9ovNQND88VXliNvfXG9RP/D9PyrYLVmlkJyXuQyQUO1QGRX9DwGFDGy2vR/nln
	 kjvztDckdPb9wklmSDEmJm57+6KgXZIKF6XStwZGNtir7jqDMtnFfSNP2VOhd6j/dY
	 tpKZkvLaeM/Pi5PTCk1q/ow6qpDvMUkic4zX4wnPkzjafu/FedUOquIPJTJ4yMUHnr
	 mRdmU9XtXWHUsM13ldVLzx36PAj94lQc9/atb1nKoPNOnJN8oLvawYvN4NhtMx6PWR
	 Hph4vZJVabBFlZ0ztEo83IvL9VEi/acKHncx8ipDGn7bzInooktUCOt+nYAxw/dO3M
	 xRyXjP+Zi9JIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AAFCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874339358.20885.18347937665601233575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a656b034acae0e9353c01e9b9a62d9383fce8278a18674661efbee663fa0cc85
Date: Wed, 24 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758743393
