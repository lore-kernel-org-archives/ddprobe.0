Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6FF1BC3C
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734243954; cv=none; b=CIddD5nxW7hpTxwpuXBKctP5ALJ7KTq5dKRwvtv+ITowtZJ2gsVumzIzQNU78LAiEBk9FgqTZV0guoWtegUs20aCtViRDh6+VRT/QGaX4r/32zx1hxbHG+pBHCbMbQyBiD7Kuv7qevQSV+33/jqHvujMt9VsANZ1PMwKQjOHZD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734243954; c=relaxed/simple;
	bh=TF+vVIuP3ORJMgmZaWdTrqsCzCrS5Zx/iAOV1Fy8mDA=;
	h=To:Subject:From:Message-Id:Date; b=Ufn5Q1TPSWi7QxKRiV7UnmAisZZ2UJp/I+Eank8WbocVXx6iB6dAwSe4Spdc44AfMl3cnSy+/eYAXgGJFf0pN2/JD7Va2UQhg2mMJAsQZIpW8MGJqVEDZI/L3bMNt2PYlgQ3Mkh7yDfgnjNXfF3NMzsD6mw+WU9ulj0uFdJL524=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOEAOXOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOEAOXOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0709C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734243953;
	bh=TF+vVIuP3ORJMgmZaWdTrqsCzCrS5Zx/iAOV1Fy8mDA=;
	h=To:Subject:From:Date:From;
	b=mOEAOXOn0MHFFpoocgGZ7JWjFPOHAA610y5rsnXVNAFlkwCN1IYr3+U7nsHaDEdFB
	 w96xoUitW4OqEebXYvTmOS565OrVLyIrW3V9k73lYVyAecZ96Eq9SOXa82P8zYoZiy
	 3dpOYNLosaIpOJikTjp5goRIZALE2xhf38XwXw0kKHIYvFCVyyoKR+0GiJXngykq5o
	 oiOFWPz8pXy1grkjcNLzNuHLb3w3NB7X2Hqe+8bGLF97/6MS4PdYZFcTrSYXQfPtRc
	 MUGnMIrDFalu8wOrjxGJP6M/PwrljhF/7DoLYvmSffiO9i17HmDQuC0Tb9y0/EC8PY
	 3a2UoK5MJVANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83AE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424395357.5272.12443942312156145613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfc9951b8a306b41a2c7921d10d5169b41ff26c07eea51fdd014bfbfdc58ff1
Date: Sun, 15 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734243953
