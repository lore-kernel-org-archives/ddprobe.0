Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F294A3CF1F9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786776636; cv=none; b=p2/iUlLZv56my3aeXEQzInzBxWLYqlPSuBrO7g9U5fsNlvrlUs5Qu82sNuP4BduABK1YcDtnQq9LbnBGpX2Oih9hEyVwzeoydZlLTu+Cz074MTvlpUTTxZ6hX+0KVtZz1SiA9QkZSfXrsbMsBo1P8AP7qFCXihaevq7tl+UiMC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786776636; c=relaxed/simple;
	bh=se9JF8lyJOphVal32h9XRfPtB72Xr+Bs1iZJKkG0Mgg=;
	h=To:Subject:From:Message-Id:Date; b=XB/RNG9yb0FXD6vgFG5DTR/ddHy0nY2AvBtQfY3uiE6QS8I+8GmoA/uYBwIMkVGCLB6KLdTLqF5hNr3Bt0noY9jObJH1FRxkw3W45KQvvphXmboF4niF4aTfVzkGcay1rmKJJu0XSjTacFHebC0kSH7BwzpZD5gsAATGQwwUZ9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgZfbkp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgZfbkp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55F7C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786776633;
	bh=se9JF8lyJOphVal32h9XRfPtB72Xr+Bs1iZJKkG0Mgg=;
	h=To:Subject:From:Date:From;
	b=tgZfbkp3TJkAOclXDDz0xe82JDlEgotwgUWNxLkLw5IY6H0AP6b454N/85yIk5R5Q
	 gvihMf6n22fStGQTNMJCJrqpOeElG1nYq9y3mDhqJqdWKTd4fgbi3YJ4jW89jKYQ2J
	 85d/LUpG6bo1M1TttxpKqGybJeizIGv70gh5X/N0Rfw1NQY93ukR2BmkUoJo/59UkR
	 Kn5cxiqbEtX+SXXZK4YKDq9iYOiM11XG/pV7NOef0bU22eO4fakcBOA8Fp3kp3EcXu
	 U38Do2BNncElsPc72NRfjkpeWFOHNlVdMU502nT/hC/mAOlHBaIJ4CwMQJWofk2pam
	 e401SYk2OtE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1135C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677663368.17518.5132869725492200079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd6b439b5a17be043b8b9837dfde7e5efa877b552c166b77507c6dcb95793a1
Date: Sat, 15 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786776633
