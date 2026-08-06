Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6482931A556
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786030234; cv=none; b=ifVDscwtQlgeWfyFXc5Z9A60n+973Ai4mKgotSE4+97TnOXKDUModZN12PxlIouwejaEvPmlF1vSZTatwAf/0illP1WpmNr1p4ZJViET4nMrYelW1n/xhshJZHK6P3eFxgQ/io88vsforFSGp9NqWpudNoug6iZSoGEHPgcYtFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786030234; c=relaxed/simple;
	bh=0P6AnE+Os89zoEHno9ZEjGz1QdrfxKvm1vrodtJlYqw=;
	h=To:Subject:From:Message-Id:Date; b=gKoLw2wKoDtDSX+MqvZIiEGddBoQtnoKt9AmJmtORJvk/XPUCo8pDaIrowd2wDvqlARRihpICMZt2latZuKb11X8PT4P6YCvXF84TryNMggufyhcTsnkE6JYbyq7tGOIBYECiDDKCjufg2zJOKNcVJtaCEwSI+dpm5q/K7EnXkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwBBTR7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwBBTR7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786030233;
	bh=0P6AnE+Os89zoEHno9ZEjGz1QdrfxKvm1vrodtJlYqw=;
	h=To:Subject:From:Date:From;
	b=mwBBTR7IDu7VpXQoh1cAj30bSD9NI78m0VSyGdiYKjBlTcjxfVCN0blkPehpPkTNO
	 ZF85QNc8FDsrSaQ66YiRfm1iZJNMnFxXyOz/fynkxC7Otm42gqrSyluAGpgVTMmZZE
	 ZYs9rc+UeHrH/kBw6PYgvi63TJ17uPwXIHsYdgyqV9gvurrIXyJv0pm5pvX4wIqzyo
	 6lc00V/R06p7h1s++cA7JnCOBPlvB/2pkq4S1ELOHgq0TJkB/oEVzhtFGgTodtjST7
	 cIVrOlxLF4pSWN7TUw9K32JILgxhsvqByfUlUYiWhO+ORzrsIbrGmep01OnoyFU0se
	 f11egcyCXVTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2B7C5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603023369.27535.2970996679600912039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f3c66dba0b0fc5a2a47c4b1ad0d1adc4cd494d8e92bc18cf879e2c78f132f1
Date: Thu, 06 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786030233
