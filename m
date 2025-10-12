Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355E02DA771
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760282394; cv=none; b=K1O0uPTuQ1SC4lmtjAQNoyYU9XZaBmkYObWCAEr/rgMY25r4EkDf58ntsg1hXyIi3xytn8kEJIKrDNgXdrGrLFVmzX6d2coBV8Zb5u6r1ubZs7HgHHrTCISJvDQ46ZsNPGg+kfDjq4QIgdiziud4DeIf68d2/xTHaqXos5bOIfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760282394; c=relaxed/simple;
	bh=3tJq4q2+DRhfoAX/r4u7LasJ/3mW3lHWyKm6VwLQPhk=;
	h=To:Subject:From:Message-Id:Date; b=V5Iy0Gt4aTIv44OebdJ9dddbuonfQR7MZI+NwqaLJPj/U6/Xyg5fkdXAckxIyA3HU2A5mZq81tNNNdQnGsnuFOlLrH+vu6fw4Me4iwe7O68mwUTiMxjHYJpQo42/usI9YBTq4UZGxmzd7w4Yts7Uq4QRqHj95vWozF0vLuBWTFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcNgqiVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcNgqiVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F92C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760282393;
	bh=3tJq4q2+DRhfoAX/r4u7LasJ/3mW3lHWyKm6VwLQPhk=;
	h=To:Subject:From:Date:From;
	b=hcNgqiVr+EEpiimM09nL0FOLfdJn9f0DrLpBnH7pzNzUpzURqfqaHf6MiDr94OrY/
	 IJqugqRAIVXTnMFvtuWEPR6Yxd52t7SLndGiFu8drWUSoaxxZiIqhvDmyRkHqn1Apz
	 XlKDIEc8iUOXy40im5FNsLOVZBGt4lE78iaBD1KcfWDSzHVgs/K5fK4B1mcY/Z3/MU
	 dejFmkW1HkHxkcNRl2MiILQ+rBHVzzCgJqq3tm5AgzkXZag9zClBvZ/Cu6zbdA5Fb2
	 0F/aoDBq543/TufXti6KudXC/YHL/9Vvw5VCaAZGuC3sw0feWwXmKc/w91ToFtSVVx
	 g7bn/CNdCNFkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96238CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028239359.26056.1152992628096796973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca0b882bc1dd092816dd306933a9c4be9c940a9e4a2246afba78032261bd7dd
Date: Sun, 12 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760282393
