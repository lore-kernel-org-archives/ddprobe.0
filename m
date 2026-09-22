Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCF409298
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790064635; cv=none; b=la4ziz2Lx8zEAXKhtSnrhiu6o53YyBdeQErkEpLC3OhuINPRBu89PXRXPPZBzUyDiip/GyDLaqkcKzB+pWozIP9KTkToFT5Hw/Vg6YaR77Ye0clv/HSh5j2Be3vRh46Z+S1iU0f5MpVO450dCWwVrlsR7cxpIvSgbR2mxK1YYEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790064635; c=relaxed/simple;
	bh=lM6+BHP2aTkAWJyIqg7WbyU9X1iDYCGxpgJVN2j8oHM=;
	h=To:Subject:From:Message-Id:Date; b=ugntdRs9gUwgBwpKWiA++03SdJbImqwnaqRm8IiegYkBkRZMe3dvBkyHiqigaazfeYRYD2aGKrZkbhjS3yu+3LR8niFL02G6CagBMy5SVChw3vzbY5p52S3MTkwZlZHXn+OWQWIzauMGl75nyObZ2FGN2i7W5UgCIhwJshTImLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VolSJHEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VolSJHEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6FBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790064633;
	bh=lM6+BHP2aTkAWJyIqg7WbyU9X1iDYCGxpgJVN2j8oHM=;
	h=To:Subject:From:Date:From;
	b=VolSJHENO/sNIE9nul4zi8u7hr3ahSwfp3cFoopKdOpBGdJkZ9acWY4DkyGUwaU9W
	 y586qjAX4YHrwqmG+UUqygho87PpDpgDodbNJa6Js9zLsofBQBfL+AKhZA7qF8U2dd
	 LuHgDLEf4Y7vj+Ggi1TiQ+FNKCnvw07p8VgFl/bpRyZpmjkBkQUUjMg6t8fOhnTTDY
	 tfEsShjYZoS7KUHh8D5Xy/dur5eKGIEmi/HrdF9xzOFfp1fdS5bxj4IvK2sDiTvtqz
	 xATKSxGVxgRU5qSEkvVej/HiNdzIsmIEW8GrirIeKUlrchxQfcVVDar6hHyDg9NYuR
	 zBgaxsjcejabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E8C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006463368.26020.9887842740300106433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c757bdb347f8a107ca8d0cf028cdf3fcfd5105ff4a9e449d5dd823db9c552484
Date: Tue, 22 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790064633
