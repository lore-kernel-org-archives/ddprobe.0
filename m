Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0DBA27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752931195; cv=none; b=GWsC5IsUHYEhCzI/U51a4wfBwWe97H61XXvxFLZtfbhxXNPVsIvecic1JXAibxIGWctJSSabxvhihz0TbaKVzNzbstlG0RbkB9smgqhnnfnjDBlbkbFkRCvp/QFs3+wg2y2qRzX/NpWhB7x8sQq3TLL3zzHhyFpBLedITW/CnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752931195; c=relaxed/simple;
	bh=Qxxuh0lOMOOfpuAY0cuZXfM2Mcm6q4uMcHnSRAFeztE=;
	h=To:Subject:From:Message-Id:Date; b=ZBamAXGL8sUpVMWTYS1jtjr5InLzdbym/6WWTU9jWC9zguTxFx8jtB6c76e8lCJW6Ms6gjsBqQiWdKsVBwjx0a7dmaEBBWpftNoy1V8zGI+lqJhY8EmlrcdZ5dxJwr4kxSbaYziOWLAD48HrkQePZA1kNruAh2kGVVqY7J6u+gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azLCu9Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azLCu9Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D69C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752931193;
	bh=Qxxuh0lOMOOfpuAY0cuZXfM2Mcm6q4uMcHnSRAFeztE=;
	h=To:Subject:From:Date:From;
	b=azLCu9YoteYyK3OA+FM/Om6+KkKyy1WuPRlwjq3QgE43iLU4cZf99Jr0cN2KIICJw
	 qKNCriIJxe0R/x2gpSjytDlIr4ZGYqie93pWy4jUiBiwyRk/I7mwh4nxU4fLhFcez5
	 oeQLu1kti/8xingiWgBi4yZoGSBHws+hGyQ2jtZvljMqvvp/Rg6i0LJ4NMLEB9qp5Q
	 V11Qh9XnDOUhiIoHiwUOqxYSYKAY1XKXvjdfg1vWbvie00tR3Qi0TpnOPDowsVv/9j
	 jj67NxSlYbLnb7FClsV2szUU96rIr2vIjFZl44AgLgdTcA8vtrTMFVx/16+Fwm8lob
	 atYqR7/nYJzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFBC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293119358.32665.389250816878720323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8339b76171a5a86ffd911ac736417c4d7a701e91788be71564b748364e525236
Date: Sat, 19 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752931193
