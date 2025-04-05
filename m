Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EACB1CA81
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743865794; cv=none; b=DtumCImqZB4PGX/DyUGKdQyn/4z1fFplZ7t8aaiPTtLk8A/cZOQMld93UblJZDmLPcqCN6erpHkcRlktor73Qnafdf0dl3xQIwaTj/rtu2X6rbldviPwE0FJOvzQjTyD3h9UxJ8MRzp/+esX8xiZE19ANWaVtHucjTAMtHfP1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743865794; c=relaxed/simple;
	bh=RMi3BLwm988rAHw5QLdGuPpEYBExd/c1FdiTPPBZLB8=;
	h=To:Subject:From:Message-Id:Date; b=hVxdl22FnZSfbYjZnbrl0w3EWsgAWn7reJrg4+1sgTxWuf6dkHH2e7Wbm6pO2+ZxtnxSQ/L7zCH9hOizgZeql7/RTtCGzyTk1PZ1UwJb16uZVdJ07cLUi29UA/kcXYXIzeN1aV2HwYXyPtKIOWgCx87b5EAuhgQStfwkvr9qFbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8KP1wvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8KP1wvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD85EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743865793;
	bh=RMi3BLwm988rAHw5QLdGuPpEYBExd/c1FdiTPPBZLB8=;
	h=To:Subject:From:Date:From;
	b=g8KP1wvU80mGqL3wIskTnGnHsmRcoPV+Z5GJUyQWg7moHjBwoUtspN7wqKJcvpHx7
	 Sonvz2vg/q46fsuDNmqmZBb2cOZ3MEzZpalJmyYdluvilE/H5nt1S+cxDymN9fzaMi
	 L0+L2AlEvPqSTYU0qs9GUqfpnsDG8QEJOHxcfAzpQWRosUKwdyw+hTlnywwJ4p+YNR
	 Zx1hXlQHOzSlMuXi/LqKunQ4WatSpIsLRNwXKwIjEuDWMhY/PyLY4gYQwErTOt2EK1
	 uchKrgLpOvLhaiPteB5kJmGuXcdpCqfPkjSKLFRTvcNq0GuWKoErGkRUPkp2fG+T4D
	 AahMK0AX4tFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80C4C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386579364.19454.10051971832970353459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b695837f9aa4dfef2faeb78b14b276f001f24ccb84ca428ed057af742a3689e8
Date: Sat, 05 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743865793
