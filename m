Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691301F0E24
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743523194; cv=none; b=Rpkp8YfxLYkO+dbkm5h5aFhSQcLkQLDsgqQ5fPaTMq3WWQBRMIkvEb7yhszDwHohthvf80DpMkp+ORN/IZ+AoPCtH2cgJLcmv3e3dgp14JlsfPOKUbuLDdWfnM1RLKyrCnYPZHo+JS5smUv4U7UPKiLUo3XhT/oZHBzOKTsK3co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743523194; c=relaxed/simple;
	bh=sIsC+hlFhZpjNeXMdiXvACkNL/ffZt0AGm5GvsTGKGo=;
	h=To:Subject:From:Message-Id:Date; b=a9ugF94GKWVwSvNHPDEwxzNRxSN5Fupkb8ukyenNRVixBxRfwpLACgP3k4p/sON1Z7waqJ/zpS7ItYS/tsCkQ0QZizBG5Y8CYvl5F25crD+MpTOhYXP3655HPxxTBt5BIlxQc9oHWkgMED/uFGfpXFlXNhIp1toea1klLm9nLiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWOu6wnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWOu6wnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C5AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743523193;
	bh=sIsC+hlFhZpjNeXMdiXvACkNL/ffZt0AGm5GvsTGKGo=;
	h=To:Subject:From:Date:From;
	b=PWOu6wnv+kWaZOeRJfdnSRaZX3crQkCrNRDRkdmE+BD/TQ20fIDe5S/46w4gtptmO
	 pj67giMuBwQSWITw02TbsnhfYdo/gqw1IenHywmGRM+xo5Wf7RjWFfxW32EvzYUuB3
	 ZNx7E6AAFer6tEnW0GIEwTcOLCfuOj7FAvQY6Yo3LGFAVZlr5a5i44m8IAQldSWAz1
	 HkCR0r7Oad8ds0Wg1tFd5DH7pUaPSiG5MNtdbybYlj4z+FkVbV4KD/uoDjv3GpLS89
	 0QoMXbnCttcmP6PUAse2x/kd4Kmq9mW+7BEnkOeAhl1/XwSfy6AfmztWC5Kpb8tQ+Y
	 YfXg6iQjpvSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D09C36018
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352319360.8525.17852613575964561128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e144947e94aee429e1f680e75cacd87ae61afe1942480e3eecbe0120e0f8204
Date: Tue, 01 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743523193
