Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F65428B51F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750424395; cv=none; b=HTaDZ8w6b2m5Im/3u5ar8pvXhNyaxnjDd2hy+WLAvYr77BplvmfbGM3OIwv8vJwwWcOesq9JZIwitKoojSbh/8AHC72GC8zh8TwrCe4CisqrH/VZb9FyKDly05lyPb6bTnimdBMYdQlpRfgE6LNW9OeDoEJLQhMcRdxX1wZZE0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750424395; c=relaxed/simple;
	bh=is1gA6sbiH3NUxiV+bFim6EoJP/fFubbodnIPYaoj1E=;
	h=To:Subject:From:Message-Id:Date; b=DYW1zPSCGQI9kJIuTLIkKiPv/rZnOgEJ2BUA2QbH5ub2zGWvTfAGZJcB/28Dm8Bgaiym/EshRzRx7tYQqX6VynmPtSJZocbklDTj14I3+CzXGOrFCX5OpDbq40CzjxSRQJz7Dtt+VpLDGa/B4xYFRYBdvhpP/QG2XSwZAtY7htQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QC+jXjMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC+jXjMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750424393;
	bh=is1gA6sbiH3NUxiV+bFim6EoJP/fFubbodnIPYaoj1E=;
	h=To:Subject:From:Date:From;
	b=QC+jXjMnOktVe/lz0FyK5bhBGTCB6pqgc8XZzSkxra8/YX0Osi/RTvm4ILDpdYQ+F
	 E4dU6/tpz5q/Vj5/jSEsSVeGtmz6jrkDluKmcoVQtz8z+KPTHm0HalV3zqnRo8LPVc
	 YI5VTgj9V528GeBLBB1cadlIijxCFFxwLU79f7LoLkiW7eflIaBqE1g2Pux4B9aOFJ
	 B1mOY6it9V/GVuQj9MQ0eeLIuQZWeyKCCAPYOQPegXyFI78vq2eOc++YATqbYXFVwY
	 g5Kaf0m+3Qpc9rvZs7of4e2qzMTSWn22BjDUHsmrdz3QktBxBo91jahKa/A1HRec2D
	 yr/RlpuVVsXvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED61C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042439357.30177.7372124423142279388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728ccb59f9657dc7d835157c9be7bcfbe2f98d5b4f9a504003384e905a53bd73
Date: Fri, 20 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750424393
