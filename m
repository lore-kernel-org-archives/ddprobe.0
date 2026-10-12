Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6ED253340
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791786034; cv=none; b=PxsxTZv46mhXXnjs+aBkhTMNzwWwVo1Y8wvwbRSIixyelvHSctp5PCpuTDnFitFiyt5WttQHUUSm/CBIPnc5TZsgo4TsjcCZVOPn7MuXHTnWhkBMSBgQhtIoJsKKmLXBTH4K03L0uTnZhYvOAT71rol4uHXV4bl+8jRHlrG/REA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791786034; c=relaxed/simple;
	bh=+2uHXMto9xxa+abTxfEKRCdlRw7h0iqMyC0DASAgBCM=;
	h=To:Subject:From:Message-Id:Date; b=fVudX+3lKPM0DdL2qfodXPs+8uaDTM08lFQY4CzofSd5/Trb45uxeX0Ek2XP9+QAb1GY5ZkRHdUd4ohkQdgWRVmRpCSbx3HkY77t52kIsJu0PangAvAZ+0Oz4eHg0d2ZeNRfLEEs1g+cx48Gp1sjNlKSBs+5h5JqkTEfGFnggzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1JtduNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1JtduNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9956C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791786033;
	bh=+2uHXMto9xxa+abTxfEKRCdlRw7h0iqMyC0DASAgBCM=;
	h=To:Subject:From:Date:From;
	b=L1JtduNVAfSEQylATTLKaa1UYm86SjS+q5bF9UW1s8yoGpKRJeoPGbhgxHd9tImk4
	 rvzJ+4gaiO0jPe5yAYfRMXRNdHGNe5U8PymLzLWP2gJzAm0s9OBIc+qUR0mhcIMR9O
	 QO5wyWEgzKe1OfJ3QSE45UlFFgZXvudRsxtsuqkK2nQjYaVwv5Sed3JNiWbWzAd1BO
	 opN1Eedyu5SREe1M9f9VOJsO/AwyO6k14UlIBUUVSCCvgapxzvbKvgCtA9u9IWvNLb
	 zfKQ52bK7jMSAo6evqJHaXcw6FI4f/5w7b6V2kS30QFhHvB21DEozlu8IIsvMZxXOs
	 mcHLGFnoqNdeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DDACA9ED5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178603371.567.11815447169043398366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e7977eb8db33c1ed25b407a5ff232e6dafa71b62d27a624e480aa30cbc7b75
Date: Mon, 12 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791786033
