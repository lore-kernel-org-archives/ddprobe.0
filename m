Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DC8308F12
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758278394; cv=none; b=XexqL1m6mJL8OOekpyYtGaCo8NQIdglhMXji2xWOM7s4ge1kdVtLE+JDiWUBQvppMzQPR5b+v+S0kVIlt69gg/Li1LSLCmwEYJfNf6/EwukDeON4aJuC2U0IocQcYu00Lzh131OfdjoonTEeWZj2gRLQJH8UJvglMIVS6yfhiz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758278394; c=relaxed/simple;
	bh=XaT5JekyF6ZHo7M7FJHGVqdXYsbMGSBtrbS0Nil1deQ=;
	h=To:Subject:From:Message-Id:Date; b=LU6MRaQ4wUwkRQ2joeV6VC+g1S2eYGQJkK/LMa9wO2QcE933x9CZTPwm4Iak+rvb35Oci56WT32y3gRXQpiWOMbzNN3KZdH1JIml7vyoDZ1RYe/t9Nri24g9Bi1VOErVAR9uCYtCUxY58BX0e8iu5cCkqhWXov506c2Ar1SSWjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDxceatN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDxceatN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6BEC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758278393;
	bh=XaT5JekyF6ZHo7M7FJHGVqdXYsbMGSBtrbS0Nil1deQ=;
	h=To:Subject:From:Date:From;
	b=aDxceatNsumgGQO1yLd8O0oaJAGKAT1U/Kq3QpuT8x2ZC8qZBOIHqIzHum3d+ae83
	 njECVfrJ9obRGEN9F6KZozxgHjZRcEe/Aegf4aMBKu6HnnBDcOguTRL5JD5ino2ym2
	 wFLigQKFyBfa5GqPBZJQi4JHkQm7WM3bVBrRRQ1oMl1px4tyrAlICU9QvIh+QbYBcg
	 NHK3q3xEIqneMEE0UoMAMIFYFA6sAZSOYOZU26pIUlWeQFk73lUgVN0LoO6YteTY0j
	 n0pumbBcqpqCoHAzEyfS/MWYTuzZqnSFGcYn8moW9miUyEsb5cTRwCXxOFLajGrZrC
	 xHjjs/SwQX4aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E514CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827839363.12102.1343127584784657716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4173d8c63abcb5576dded55843221f4ab726c3d257b460595f503336b107b3c0
Date: Fri, 19 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758278393
