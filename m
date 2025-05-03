Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316EE2030A
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746233994; cv=none; b=oYlWmpu+sTacQZVoD0TY9/2xkp0lTvoFZiIeRq7KBGyPQsndL5YRkA9mSiEGCCMEpQvci9zHPG9/MhwR1/1Ao3ZktorC1eVZFS/W9HTS0cpj5o7AcIAfN6WeoKV4kHVbauT+7WtLEeVGrVNvRmXHDOQjW7Hj3QelczAwu1dTxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746233994; c=relaxed/simple;
	bh=NTZ88yJXQWa9ecjJIlzttNTgQQDSzsj2Xs+zW6n0ZzU=;
	h=To:Subject:From:Message-Id:Date; b=g/F0R43H+i+zAtMOHYv44BTseihBHUZJvk88/1SJewi0+6hpFsIRTwEUs/hjKrYyO0iSeRB6j2XT2WZMWCK340AT8CDJvj3HoMPZjnGONKzcu93RCKr0Y6Kcb66qxSrRFsNyruC5FP47OrzPwCX3HH1rhiba2R3AgOEOXdIL93U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKc0DNpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKc0DNpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6359C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746233993;
	bh=NTZ88yJXQWa9ecjJIlzttNTgQQDSzsj2Xs+zW6n0ZzU=;
	h=To:Subject:From:Date:From;
	b=nKc0DNpTObwrsZfb4LQTzGiLWQcbIZ0/qQhdR8SXbeRwwrdnhFmUUo2XVyfrJRQVE
	 84H58uibSCJLm5rskkmoxKZSAr0ayyPy4o2ZI4Z2gRIyFdYmr7Tg5eIbdEKhIMHNFk
	 LwFpa3A9WYWfef0HR+r0eU73GzTIwoZviLch1T+6sGTcOxHIwAlESrpw9rXYRWBSmI
	 z9SwQ2eim15DMcRmxAqR6ALykqyfYjl7+SzZZ/rvjP1Q+SdnhhUq4GE+gypgSLUndf
	 yWBCAVxf20F/OicEztmmzmFJmxLlSU4n2iys1oseoVURXZ9uxwjaEsJ1NFdS9EeB9q
	 ARzZettnIBiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FDC3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623399357.10132.439406833807544175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193cca1fac8d4c9ffe6790417c741ecc56fb56d7c42e27a52028b2a83708008b
Date: Sat, 03 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746233993
