Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26E81BC3C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743054594; cv=none; b=aDnlx9PJsnzWoLHF/D14iKXd/KwyNncHLzAbX8Pu5x1WrB7ZGZkEAwGsvxQ/AyL34M+UU/Yul0ARaDZZ6hRi1cWmf9JB/jkngCAGAfI0awkjFMrehyNAe8do1dMGiMyCKPEwYyDj1fQktQlY8gD6s0jAir0VHgXLSZvVACf/8WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743054594; c=relaxed/simple;
	bh=t7I6JzCCcW3OtUYk4+vjbX6Vqa3ZRYLzWBEIKff+5FI=;
	h=To:Subject:From:Message-Id:Date; b=QjumoMK9pzdvkq99l/Ytm+KvrHleAEy/zf8CdPVQUhdWiBg+fAhetNBp1VC2AU6f83vrSfqnkceBKH3SQaf1hrEhFGXTGgKE43/dw9+XMzSZBoESNVaBIahRToM+jZgk5cGLsTieptsWUltaUjla4OvYtBvyP4AyyK342Vcurtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7hzV2dP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7hzV2dP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0224C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743054593;
	bh=t7I6JzCCcW3OtUYk4+vjbX6Vqa3ZRYLzWBEIKff+5FI=;
	h=To:Subject:From:Date:From;
	b=U7hzV2dP9y04Hh8n6IlFHUkn9n+LmSJvHLU6tyGE69q8u2Kl+3PFXcwlqsGCrbkch
	 dEBIRqOvwTwNRRHWUO2CgUyKWXQ4d485Ik8mAcR1dwDl7my5AADlXfGqFy7/XjD1jL
	 NMzvWMBVcLkybLZLnWpuUTochQ7Rx50fpRsrRLhUrNPVcy5nr5dLnLhHhyjYFO/HBf
	 ONwlit5ZO1WnO7GrvgKYJ6XoMpglbpq6+R+9yJssEVWg71Q5BauDcslXcEoWGf5NSp
	 uWZEEvS7g6Kd2EEWfGxAzhdrsGxOLDXN1g7AXXk3c5Br27gAaahJZU4H4J5WzMlMIj
	 hQIHGenRjJE3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA26C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305459360.6881.14567890810434977677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46100ec59c1a00979db1940919b202f25fb3daa7cde2a9af6b2df130d6d94f38
Date: Thu, 27 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743054593
