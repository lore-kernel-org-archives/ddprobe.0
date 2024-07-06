Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408152B9CE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720303583; cv=none; b=AZDeyZTvSkT9YxhoewMmgC8mOTGQxVif6I0qqhNDa/fZxmqcStRp2Ht1Anf93fxJeKxpWVdzn6G5xRjh3xVAYFVRIXAxF694ZA970X9BGROyQ2VsF16+384W4I1V3AnMZG6ZzCwIliwS5JRrnl6xD34zDXefgABssU62gnVqrVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720303583; c=relaxed/simple;
	bh=3+4kPPiUnJMgjoUJPcBjSX6x8qz1gPZ1X09dSMhDY4g=;
	h=To:Subject:From:Message-Id:Date; b=gQzrW1NB2huXJPt3EBF+dLZR9gj3m+JP+1tTt+mlhnxw4inNoEsPdRn5n/mtvDC0FUsIh359b4HE+9U/NgVwNExLK03CdLC3axEN+gL6b+SEpiv33gN/HN/PYWSC5s8/WaHssuaXKL6peB3shMFkJ08IxkAF/6MR9AabQBCBuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjCBaofu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjCBaofu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F0C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720303582;
	bh=3+4kPPiUnJMgjoUJPcBjSX6x8qz1gPZ1X09dSMhDY4g=;
	h=To:Subject:From:Date:From;
	b=jjCBaofu416evVN1hAuqJYrWCtE1tqMuVhMPIOe4Qwk1PBojbEeZzx89YwI6I90wT
	 MWUraTfsQ1Ds/UBf0Td1wbmd710ypEXdnedYoEX2K1QFWpCUgocJ7fD3z8x34glGJW
	 h0jOG8irNpdnuu60eJF9pALBr+MBRdecE97gLbF5piG66aVw8n5p4vJwI9nHgyRFXq
	 UfSi5lm33gJ3A03Z7MPWTShH9qv5+xNfShxJjkrGAUKGz5K/uYoWvuYMl3bSWp0q6t
	 Wunhoj8gDkBq1RJcoFHAc7YSTX38wlHaaJdhu+8zMsCtJLKH8P4M06xL7veI6vwWJS
	 mYxMC00uNoOcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A77C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030358276.32631.11020489175918970844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6235268aee9d3c18a8b33e235dc176bde4ef45eba670abed9bde42881b80db07
Date: Sat, 06 Jul 2024 22:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720303582
