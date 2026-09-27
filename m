Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F85846A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790473234; cv=none; b=iFtMk37y5tL8lsUQegOPJJYfZVFY+xY2diVfkgLG0eDRkubK0/dBwlqO3f/mjfcvT+E1k/wcLYJcThf7EuzTb+YF15s9eOOsJ773PxKxL9dv1Unho1NQbGDKIfvcQqU5BjcE+7oWBf/hdqZ1yaB7eUfFtlYaVJGc1WQ6ZzQxB2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790473234; c=relaxed/simple;
	bh=H9ALq045fh8elREdHSOGX83UKXcCxGUt7I8jYcMX7oY=;
	h=To:Subject:From:Message-Id:Date; b=SzlfKAQ9+C3cUfMaZH/HxaUg1HPxkgavBmeDp7FBh+8HK85n90Jmtk/n/uVfdDz6bs2k/Dt0hvVPLSDt5NnaBqpcFCnuiwXLfRR42R+kvoZTaUfXGcx9YSO3r4fJcacMnSq4SogLth0lTX/gV8kyICZA83mSRMbsWUyKvUoNKTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgZ7PeWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgZ7PeWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3767C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790473233;
	bh=H9ALq045fh8elREdHSOGX83UKXcCxGUt7I8jYcMX7oY=;
	h=To:Subject:From:Date:From;
	b=JgZ7PeWwIEw5bYvQK4B/7Kcd3xViAO8p29FGNBFp2Ve4UxeiGzq5BMN4NvdZidE7Z
	 w4sHUvDgdF/H7NgQcdAY7WCItg480IQvBP9HKiSge8ot7VbF8gm3TFVKTIh6UjIvUJ
	 JRTQouIQJihR5Zs3Iclz1oHAAWykWjz1oKGa7aPh6nYhjVlgKvmxPfgfI2Yc2KQ4r3
	 S3RIYFc/9u5SGfX4wWPwruvYo7x5gGNE1pb6UkGKIffcEOZ2MVQLNfZvkViu6xXWg4
	 jXGgGzzrL0v0/44LvpLLXcP4pZVbe4js8Lq+GdJKINv6OnZqw8CMcZ7+/HGSErcT8k
	 7m0Fzk1aKUX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F4C98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047323368.32097.8814198228205943423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9938c861d51208c8dc265d69c90c1cbe574757db7e92ed156a41ba0dc1067e5d
Date: Sun, 27 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790473233
