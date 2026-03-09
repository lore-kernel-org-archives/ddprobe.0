Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C471C5F11
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773024294; cv=none; b=LNaUXy/BYun5t5J5sYYQJI9sh5MwO5eZqle58dgDj1L0VXg2AGMUOQwsOpoLZp/3EHhgMXxBNBQ36Zn1GaAgZfakmnCGhfMBxzUXFBQjZfua0ndbWllBfvS9zrX4qwuFoYx0RKEJeUXZVxadnJDv1Lrq2qCme3eTZFdAgHkcA+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773024294; c=relaxed/simple;
	bh=49E1CmAdHa7r9o3NknJrlHMiCBandSBxzfGo07fVb0Y=;
	h=To:Subject:From:Message-Id:Date; b=RS/d+LTu712iX1eZxkg7J0B1v/+SpPK4Z1QNEru7TC6gnh0hAyrCOecUQxfbUK2XxwoyiOvapxO0OWORP64hSPfO/LudMKHaEx4GK4xeOcmrhjoITn272sy6omaLx1sfyiaPhEi2K0U9b92fE7d+93gNqsBanHr5kAopHa4Uiys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRW/KdH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRW/KdH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773024293;
	bh=49E1CmAdHa7r9o3NknJrlHMiCBandSBxzfGo07fVb0Y=;
	h=To:Subject:From:Date:From;
	b=FRW/KdH8tyIn1vlvoNxrNPY0O+gz36tJK9kA3t6bclhjdFbXKOEdY6QRWDe+wp01e
	 v2RXE1P5qkN1hk+7uonzx8o93xD2f6BYT+pgoEWNWB0NxhLwK/lj3V9gnhNvvHtDWP
	 PZ7nPvmTxaMfePbbYxk/o4uZrm7bvq46u0IJDBc/AHZyZbjSmSwc58mKj3pIGPLb+a
	 wE7MEA3elnllae3gx3jNMPnbJt2TvQg0C87cHMln+l0hJy9r8ns94CgEIDa8iptS5t
	 KgHoofcZX7HpCKbUnr9LBJdFguP16CmLeOF3Wa48coDU9Q6gOpy1292ofpOKiQf4aU
	 OoI/89b3Shu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586AEA854C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302429357.17553.16860087577253735924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281ef187b599ec0d616ba76994feab763b149a0a318360ffcc661cbe0db142e1
Date: Mon, 09 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773024293
