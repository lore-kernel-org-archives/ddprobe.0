Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201FA2F5A13
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764950574; cv=none; b=W+59aEGUYJOv6lpD+z1M15Hjhk+xzeMsyLOReKb5zGRQ3/RZX1OQhayYtYPFmUav18y5utxYUm9/6pD/Lduqxj8uUzsq8qaDXoFRrF8AZ/YJ43r3qYl7OTBDOWMeXfCwAPkncOCXA/UhIzJxrqGwBNH+Ivb3yVesO6TSbEoN8rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764950574; c=relaxed/simple;
	bh=CWqjisvS3qxSefnQJw7iKDIxXcSBgVrvy5Kdsz4y57U=;
	h=To:Subject:From:Message-Id:Date; b=p198yFPAZXHKJ/rkZzRzGv9pDBeuvbdM43twX5YHkZV8NldkcRAhrohmz8M/vDXt2h0qXBDoCUgIjvkQKM4/F5ObjSQ6vT/qysC5VcqP7P+zTngnkd/hiMxAynXBTYobuajhoU+MJhY/+AmzZp9Vaf++kG609zbdrY9kmJjEmUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJmPeXEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJmPeXEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABCEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764950573;
	bh=CWqjisvS3qxSefnQJw7iKDIxXcSBgVrvy5Kdsz4y57U=;
	h=To:Subject:From:Date:From;
	b=pJmPeXEmAjwSX71hvdAd0F0f2GBznUABmqDgcyshBDhqfkcM99+pGdBQVdTJniifQ
	 1ARF0uxU3yM3tlnJSErIIeR6RKQUOf4RL/U4gm/9P6xYuE2GgRflnU3e0D59+Astjm
	 ziTdw65A6IBXTqIdepB4uz4u2eBePP4SHls465w4dlfi+NdSFVaHDU17I2Ud4D4lE4
	 7RNiDVQOwP2NQh6r2HCzkj+wtOhf6u06BxbcIlPpAW5tf9M2zTcF5ErRu2ZegwxLTO
	 bj4VnMEHR1pJtCVLJdnOikSfVIohqjW8zX98FRHGSIwVavF9DOBg0S94wG/YqOiWry
	 C8vh3mUbJzX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447FD33981
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495057359.30237.16011042715770070496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6456bd5b4d62b4a884aa3545983918591dda3875e3ae342ade2130ecc74b68a
Date: Fri, 05 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764950573
