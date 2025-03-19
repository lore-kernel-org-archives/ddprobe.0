Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58217A2F0
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742414394; cv=none; b=puTjz3OcOMmJp/vDaxttr+a+TnSkBwkCj2PhCu7mrGiS5ok2BtT4p1cEooP3A2F3DFM7dHhfM0LcHzMJywBEGs74N0dc2zoj+stzl8uW++JEbQGyDX5ZnIYPjPBTpcAYZpJMp3JXT7bmk66hrBoIHaVtj2UleQj24TYhjO60s6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742414394; c=relaxed/simple;
	bh=l0gpsW3CEpiDjAFxFdZ8vHe8yTolkzUGCEnf+NTzcOU=;
	h=To:Subject:From:Message-Id:Date; b=M1+TSlN5Mo+0CDHQHPqc2/Cca8UjGWT6oGQbRSQZT9TZLruutm41mnuuA2Nc7L7+ncM7l1l0n8RKEV1m4JG99X6+dqr3SOQabeUFFPJP/XvNp/8ah6pkmRcYhCWAQ8I6NapDwtnzQG+wXGIUnYBCfvEGKa0VqPNjQynaIys5Dms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDfYGiqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDfYGiqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E2BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742414393;
	bh=l0gpsW3CEpiDjAFxFdZ8vHe8yTolkzUGCEnf+NTzcOU=;
	h=To:Subject:From:Date:From;
	b=rDfYGiqeZwBQM4qwH3t4TRviRdmiwi9g0cFmiA2GlR8oqhPycwj9goH+4xPZ9t/gb
	 wOr0wPxiuPL7sdvolOBUUWE1SemdyMUCA/HJwvkUgW5sRcjQKo5GumcRbCXTB5T2hI
	 LE061nQB58VcIlJC6JR75W+CAP1+ZKi1IuYT/I4W2hxm42SvXE6bAEggIKag9pQ6JQ
	 SyzKmkjW6PcryRcr9eWRDA9fFHJzfuJqyAQvkUleYNDbN7NgQHQey0MeruQXdF9Tog
	 Bf906tqhHMUio49WyQLQkwkj8yHbD8mWywE/ixzcjRfr7qd+POWDP1diJX+D+FQf4t
	 d6YQ5Jr/uQIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02FDC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241439364.30362.9793893417243413097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ffab05ad81f2750e012d03bba146af1e475927a99d1c1556f60c115f39c6ca
Date: Wed, 19 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742414393
