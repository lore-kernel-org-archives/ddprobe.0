Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3766C20A5C9
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259334; cv=none; b=M+W6MrrOYDD9Tc6AViR5BbAEOE/6G5KxjmLITLagEiydU0FvcwFtD8IN4jdxhxwstXmbYQlOLgSO1bcV/iSTlXYu0ntxZ9dTI0NWbS7xvTbNKrET3LDWFgUrecF1wmSHaryl3aZdzAWXQPnFqEAYtJnSMdNxjy/0RJrjYFNupz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259334; c=relaxed/simple;
	bh=PD4OdeH0uf2AkmToR+neRlWMvTcLx35OmogWLrAXvR0=;
	h=To:Subject:From:Message-Id:Date; b=X3wa3goYI/x0w2aVHPieXn0WlBIw87WUWSHK3lVBciTHVCqfRx04WF8LHEO81LwZWdzZTFUOpYw9C68MOP2nv7j21lgIhoaoV7yxDtlYxzL13VwjA3F1hOeJ7exdEn+brfDakX2FTcpNrsplCX2VwrZQwRCCEbfH7CpopSE6CzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCjBNxrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCjBNxrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C0C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741259333;
	bh=PD4OdeH0uf2AkmToR+neRlWMvTcLx35OmogWLrAXvR0=;
	h=To:Subject:From:Date:From;
	b=mCjBNxrcR7nxqmqpDdidgHcacflGxx3MRS+qltWotpTjoH472fCyRXmq2+L1tgQV1
	 lnrHC+BzsPeYp0lUZvrK5m1/pP7UBzNM3UWcjXPdKAUrv5welbDhdWynJeNwX7s6K9
	 L3c99JOIxFdhUF9HBMpS5E9GBmz1n6KNS71sIulkTxLCUdHlNCo8YWdYRT1Qm3kLd+
	 kwq0zzcc/MaNNuPiVUDZ9K2d09qVUEIwnXxz3I4YZL3HUB8Gu/oQ5ZlP5TkZrHPlz3
	 XnI1yJ/6QJg+xIrIunHcyEa9cuOk/jM0dceHhbFIoAOxMFUeZQSKa9lRHDBnidxJup
	 MULUBvXEmHarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94103C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125933359.18781.7057514833727922831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe7d987f939e5df5706c59ca8dd0accbd7880f2e88999f2ed18ee2938e1a037
Date: Thu, 06 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741259333
