Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDAF1D63C5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756049994; cv=none; b=ibvThiYMU/jTIiDR6pIBBVmyB758HrjtX4V1pMoMPqpmbEWbUkA5IeGE1XB7KgP+yXQlyfovlcyzsS4ZkZ6DdgFrOK/lsTfQX6pO8ZHs7yeqgE4K+pUz/G++8J7bY7Ar0uFG6k5q5cLD7lNSBPZyFVYU+WgI0RrcJRL9HSe6HSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756049994; c=relaxed/simple;
	bh=F6TwWCn5Su3JjBRyatW3OzzrgztfPGGoWEVouS4BD+s=;
	h=To:Subject:From:Message-Id:Date; b=bKWNtyltYYbPFvJ4YLwprjJPoXBHc6fNTo0MdQd+B6OHh/m2Q4oAsj/JKXrR1WPYuIrjgM1GJOnjPbWQ+KeYaDeAbcqBPJPw6JasXQa7b3oFQMO+0jcYT2DHjMK9LM4b1SWvpoFob8cSuAk5CZglIcIalNbFWN9x7gmxrQm/t98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SspdrQrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SspdrQrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1738C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756049993;
	bh=F6TwWCn5Su3JjBRyatW3OzzrgztfPGGoWEVouS4BD+s=;
	h=To:Subject:From:Date:From;
	b=SspdrQrqAXexGgPOYzD9Chp/H48RcNBuCz0CBaECuuEkff/gjxDD8+yusm+dOHzf8
	 KfHur3X2DSH/VFyckjwb4zHNXGK28vVv4+zJ5egAG4KYqZPfSYPHDfY40nVmB1iuPA
	 V9oH6ja+p1TwaTzWAL75wA+6B2O6wOM7LuVcNk4LlVzdVDOvBswd4wGqpteDZjd8Hg
	 qQImfI6Ax8iv82JNNbJyXAfWKTa/kcSUoF4p77PGFcCBGMYw9eI1rsvcYnyuA7yztT
	 JE/VAQ7zXAUBu2tv+DzUocPuRyoS0Er9zjGaSEXhbi0R6dIc94PdG9oDvRjm2aXl5j
	 NIntm9bVva/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E6CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604999357.2777.7074012024175253258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850401470fe87fc45887d175b42d6b495167734c00ad9cc9bc58f9fb9cf9ec1c
Date: Sun, 24 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756049993
