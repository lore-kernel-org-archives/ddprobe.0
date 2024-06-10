Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675A612E48
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718001443; cv=none; b=U/7bE0hRrib9475oSULDMKyEZxmYaXK5S2E49ZcThW6VsivgL6sQwEWO//olKKHhU0rmlNJC4AnRZSnKGtykK4XXyMIadOxo1xpaRBJB2/YCNrp98tsgEqKQU+xz+zNZb53ID0CMFP5oHJ5aUhUUUlXU4X+kfnxRz1s36DIr8HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718001443; c=relaxed/simple;
	bh=MDgMo/bqpyY5dGFupwJCOCS5i2x1RDUWyz2cHhsxI/o=;
	h=To:Subject:From:Message-Id:Date; b=TXFf4mlfglGKV45UFQdYqKXCAz1hWR25DngbbbnjL4Md1+eJRuASC6y8uU/gwvCvVjPDH/Ydvu5hCm4vwOP/bc+vsT9ikx6V0ZrD0k0hC61LCqGKlRVlySUP4FpT3WRm/LW+4yzHUNZMT2V63DU3d9f63MmJVfBrC2uxl/pYzMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ0ma56Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ0ma56Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB73AC32786
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718001442;
	bh=MDgMo/bqpyY5dGFupwJCOCS5i2x1RDUWyz2cHhsxI/o=;
	h=To:Subject:From:Date:From;
	b=nJ0ma56Q8nzfWnZoLSSRmaL0OQ9RBim3W23Odw2WhfFy9ocdRwvz/4JSr2K0sAUEK
	 me7Fl++XWjAAMkN1n+3c1LfQCQPPxIhpXgrD5OqDoyxSmUL7d/vw3NdCTzmBl4k3Ts
	 heIflYEXF2p6ZzZifJ8VDyH3KnXjcfBb9Kpq1yTTt2uv4UIeojrSo7c1Lu8Vnkxxad
	 I9X12f/JnhEc/vN9dykg1FyQ96NtbClVw4mZJ5q8J1kkUnXeTKjqbSQ61wFgG33hrd
	 5IpWjjqM4qMC233/pLq6cSXAfa1eoIaQU5JSmA4XqCNxH+E+0Gi0PJOHaC3E+GsdlQ
	 hPxFo3rL6Vr+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C642FC27C6E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800144280.31905.5587675326712033319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4350b3b6bf9de8bee21d3faea896942604eec53f834aa28ef2e8522e19d5fc8
Date: Mon, 10 Jun 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718001442
