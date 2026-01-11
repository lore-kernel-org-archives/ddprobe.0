Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0869650094C
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768132434; cv=none; b=tjmHVXYhhQCVwACKxpNDNffEtO9k5K1IfgKiaSPTzcpZau547IoBfG7fQHQ++G9tspioFZPNwvLkRPkPABI43+PNSbsMa2Zw6o0A6M26FOmDJuK6P+BB32Dqpgf8J5SusqmzcjMzO8YKQuSlvsZJLJFi6OcTfwvj/LBfKFyDBKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768132434; c=relaxed/simple;
	bh=nKNcJCUrdVSVSJ/sML/a5ZwWB3R7EKo038mrTwx5qdI=;
	h=To:Subject:From:Message-Id:Date; b=jy1evRLRhbhxvNikZMHGcptAMRvT4d+ynhBj34pYW+Ml226ac/qIQU+pCHPwtYwcZa2w9jwy+4mNjiFDxxqHTruAVhLr3vEsqSQZLv4oqhbrfo/BS59HWncYZlqnxlpHG/4exR7v2+etc56XDcFz3vHG+9ifFUm8GBPODGzORA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLqMsDHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLqMsDHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D83AC19422
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768132433;
	bh=nKNcJCUrdVSVSJ/sML/a5ZwWB3R7EKo038mrTwx5qdI=;
	h=To:Subject:From:Date:From;
	b=mLqMsDHGCOlmmxjSyk8z3cNYlkXWw06sL1oYUKiwqvadJFEzkrErB2pOVpaQSklcC
	 3CroAhW7oDmA02mf/f253JRpZZZpV83ReZZyn/fAYQbVEXQeVXxcGz2Qn6al6VC5oZ
	 LDUrxjSpMHp2RDlHug2X7T+ujt70s499UZgCBGAFjcWrU2mMlXjBnn6csck3XuNfIK
	 ZmKjusBWlL0tL4QMqdMYbNeutgBWvb5bwULxPhpHR0hIEdP8VaafD5npJLNt/6YyjU
	 JohotF/PJg2/UGipMtxcoVfIRtKNP5ZKzimTRZXkIX0tMM2ohP1r2TR5JceIQhzS68
	 S749+n2M32whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFFD2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813243358.20792.14580098277922908487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07437e4697fcd4c646fc7fc7c2f8dbf8578c7ac37a334ae3ec5ad0182311303
Date: Sun, 11 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768132433
