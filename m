Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F30A201024
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738580154; cv=none; b=DLKvnMxOQwlxCVM5c8HkL6KYOA4+EMkEMcVyWqQ3qVHl3p1W7svHZPgb4G9KlFlFJiNa+ClbO738A/NX//KdDd/qsNAwPUAEIFrGNgmRbIgZ9wh56gSFINoEUWnHEQs6ukT4/HcCXY8GA6Q1L0IN+HRKJtSWx4tMFokhhv1R61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738580154; c=relaxed/simple;
	bh=lRhM3GRmiY2yRez2V5XHtAedDQBxj0cCGSej6W9oLYQ=;
	h=To:Subject:From:Message-Id:Date; b=CR2SSkVmsnTeQlCTzfDmaJlensD7kst9znMAf2BrWoLpM6bK64VetTxSlU+JvCegkdQfL4tu36kI4f61tHP3T6d92wuZttiNZ6n7w+BAXcvSWd3jEMbVtyA5kR0SsboWjiNTsCtU4qoAm04v5UXgZwQWboM4+WtGi19JBlv88fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx1AVWHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx1AVWHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC125C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738580153;
	bh=lRhM3GRmiY2yRez2V5XHtAedDQBxj0cCGSej6W9oLYQ=;
	h=To:Subject:From:Date:From;
	b=Yx1AVWHYwa3E25lAk3Dlus/RSytUhsW9jfqmvUonlWqSkVNhnBmPSXV+qhvGu4BTW
	 hX7DrvD7jz45aKO2VtYhl/V80vPfMpHRx7frvocXNkJ9LXcpiUSmw5xPOSxkpC23Ru
	 pqTCjvCm8nJu3u69FdJ8UNz006ok/3bam53HmRxzAsWaYnZpI1sVUOr4n+hWkPhgd2
	 vbAXAP/oVe6awxxk7xM+e4WortRIT6eGgxBsLw2i0SBaI/mG3+vcogzmHJA9r12wZc
	 4PjAwZZhtHo4jX693ajzIY2YtLc4Ed++nR47ENwiLMoDvcIJJY6sVym1nwG7SQiICo
	 xPzw1tZnU5wpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAC6C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858015363.4555.7106773843545767657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135c65688c3728b04c152a2b5175835a95397921ed53340f401b7581bd604bf4
Date: Mon, 03 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738580153
