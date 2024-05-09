Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8C029A2
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715288543; cv=none; b=AiBuyiHOueOJwcDqgUbZq/LrHt4NEhyUuT3jf8muIZyFLXd/g7J52qxBKS5uyL6ompz4ZicG1hqft9B5eAiQUC1xe35NeFobnWHlUTnzk9bgIEdBbTq5+76n18uGp6ZDd/NKcMgsyG3aJM8x0Fr+lGjM7ocgJDgX8AMYDLnLxkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715288543; c=relaxed/simple;
	bh=uPaIQurP1QaFhmllkfPmQ5On3PXW1ohe5JJBKoUrhPo=;
	h=To:Subject:From:Message-Id:Date; b=Z/I7tqDlcPiUGnCxwNDUlnwaAXSW59sAs8mGva4Yd3i76FfFBoumuNTaJSR8AGwNY/Rrxrsc1kK0ru+qGM1nK59oTL0ViAeR4hbcJZ90GZgEIdlqMF34e0TYFrd5QsZKzsDRx+cj7pogkbp0pIT7pEXRtZcR4mYGXjHi47D9k5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzwtQayM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzwtQayM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10AEC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715288542;
	bh=uPaIQurP1QaFhmllkfPmQ5On3PXW1ohe5JJBKoUrhPo=;
	h=To:Subject:From:Date:From;
	b=uzwtQayMNXOCzUi+Z7zkcd3yY1IYQfk8k/A7XyUNY6zizasiVVaI0IVEq7++c5qW8
	 9JxYNk+FM009bIJYMbsrJNIjSQ7uKiCQw1TN1myO9umHCqMhUL61j5zjDoqoMFZ/sw
	 Pc9esdiX+j5SlNpSjR5J3Fv+h8Xyrlj82Xpm9K8iZG4/A+0Yv34pqF0beduF38WfXt
	 P2yvnADMctTZWPWtUX4Y+Aru2y7vGSyis0pN+8SSW35mZcjp3TyOhKQ9jxIelNl6Aa
	 aJQXkMaE4ENmOWRmm0f7GAXanNhzl2eQaX2la7PhCudSx9KdKsQTxL0ntwg8mnbcdM
	 VaWv80UV4DqNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3527C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528854277.11259.9875813585023965200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f034331b41063460ec2d42e9b71dc2fddd1f6a2bc3f74e7e784b60f29d8d530
Date: Thu, 09 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715288542
