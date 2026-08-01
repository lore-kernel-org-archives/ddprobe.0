Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47978386541
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785551434; cv=none; b=dJuoJrskO/RTcWdWIXFPTSuNmbzelO6sKdW9K0pCLRiIePYDzt+ju1RrcWwA9/juXHpSrtNS8srHUEGss60aERs0BRru1jUuXHs2hXNAiWzp1QbAIMjFQrbrYfxcBmBOBoJptqRPTj4MVCs0rk84BAL0OYbbEcnt0vrQZDx5jB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785551434; c=relaxed/simple;
	bh=Zfu6isCHJandRCWypVrx8As376IPk2WC1rBS+QYvhPg=;
	h=To:Subject:From:Message-Id:Date; b=JYpv8V3v2oPA/3bkS0k/SZKqHAF70eUB6q9qKHNCKnv0tVtzHzqy7obzp7fAnLc5Jfv3AAo5DDJbVa9PTBfLwloN8om0ugI7UOOgwqNqKv5HHGTk1yo3bkjVCCWy0vKqtH9CGJZ/+nRTtiHqwOCkJspL30HvzVuaajM93I5XTSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8Dh884o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8Dh884o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB94DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785551433;
	bh=Zfu6isCHJandRCWypVrx8As376IPk2WC1rBS+QYvhPg=;
	h=To:Subject:From:Date:From;
	b=T8Dh884oyk8RpYr++R5zJjCLKcsgtvghI3ZKqLsn56wfxPGWDcRSrK8p1KMmTYHDk
	 yOhF8NdrLwoF7ozD8r5escjsr8j2UbXhTT/C+3iKbLZr4ssDiNhqcL1pF+/AS0Mp6+
	 ccyj6wdVDM9jye7FQLLuYb6neL6N0stbPtGMQRk0ZuNBU482Ncc3Lw0gskBZBfJnU/
	 ewOHba7bZiwwe1ScaRjL7LFm6XHigBJoW2CsaTaUQhkOTKn9LON/oC7gtmP4R3DaQA
	 LNRQmF37OgDJ0RQtghCeCUQwYm8X3K4kFw/Ba3TlA6B2Zp9NEWI+V5HoANHdvrHX2W
	 0W7W90xGBDPgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B47C55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555143368.9444.3995206406905464118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e1d4f6993472deb7258dc6a8825efdc8925eb26e2a87427c55c3cabe265fc
Date: Sat, 01 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785551433
