Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BE11A0BDA
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726764954; cv=none; b=mYtrOULEUnDqoUjG9TJHPuiyd3Vf4RlDAb3yx7W2Uyjq8kXb8NKBB5Q4tFqyf7H5BEKMowGcl0Rb6q4C//bmpVLuZjnvQTBzC/dcjwZpwXckJ1j6nrB3V+GcYnyHhJiSFpOOcKiHb5tRa1+zjolxHWb2mXSY89ylZeVizdECOtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726764954; c=relaxed/simple;
	bh=7v4fgi4n+Dk5Q+nI26K2+di0HVx9MShAtVefc93xLk4=;
	h=To:Subject:From:Message-Id:Date; b=YPXg1FDXmlp0jo6J1MHHRcqR5IW9DVAGqw9cpMoAq+pnqDspARzcU0j5bFlguYQGz69jPHwM9vY+J0EfYT07P6rJYjBy83GkdQPMpDQ0lS4jo3/TAGkPc4SiknwcdCDyYfnkGFF1svFe8WEpg/FhB9+WIH+kLyowtRs/gv2+f+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3BB3uA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3BB3uA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE1C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726764953;
	bh=7v4fgi4n+Dk5Q+nI26K2+di0HVx9MShAtVefc93xLk4=;
	h=To:Subject:From:Date:From;
	b=D3BB3uA5LZc7vHjc6dfs5uC8kz4Z/9b/+4KOXK8tRhtrrw50AFrSx+XGWY3OyfcOw
	 wlVSEDuTAkxI/1iUSvkwjQVAGs79uGu2GRjDKgBOnMb1UZfY9wc8Ta7A36NK5oydN+
	 hqOTIAPIygs+NZ/1craxJ1/PxN4Y7QwPcFYcklgyvig7+jby7oreYmZMvl+CDApZH/
	 3vQueKjs7xc5XeQnBxtdvbBUjc2zQ4XECj2ijxG2kuIdxEfunyxC77ld2oGLaDsXZn
	 bGO9jpMxTrD6u+qddkw8VMsH5Rxf0TBYH5GrkSwTIi9pEPKUiB6qLr6SIXGiuknniw
	 RjuPkahu61zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB3CF395D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676495359.19404.1957182475976846251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae337c8b7f5079954cb9f78ccbfad4b1b71b0b95356a1911985d1d1a502cc40
Date: Thu, 19 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726764953
