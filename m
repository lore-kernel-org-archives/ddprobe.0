Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F08430F52A
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774166694; cv=none; b=gA+igrXDApdd7gOvW/v2F17rph75USlo7b6Sqb59RPEXZnv7ZlkPAb5P9zoP5s0oByv5fdDjGdkugvwUu5zlSJpttiiNyYigV0IOc7q9AxtWY3MvZudubDc2c0aThVmQOAouGrsG5x0Y3KgWTr51mBqOPgTOsH9pm7y90SaLYIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774166694; c=relaxed/simple;
	bh=f3Ptp4AHXgkp96p7kMImsFzz5Hgn4zQyKFMYrBMKsbY=;
	h=To:Subject:From:Message-Id:Date; b=KPTY0JFc6MHHHLOD/F+DzVryLNfjgbk1prZg9ZcSwxCL5TnBcz6WPkWQxIXupuJw9ssWyymSp3bcL8R4wmSTsVIC3SUBYwT9Zz9l//JiG/EUZJ4bQAroUGPX/SiXJdkHsLx6RWSzFsSQHi2zCaddxc8yEopHWTyhSfgTU1ea66M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+ltIGWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+ltIGWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD3C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774166693;
	bh=f3Ptp4AHXgkp96p7kMImsFzz5Hgn4zQyKFMYrBMKsbY=;
	h=To:Subject:From:Date:From;
	b=T+ltIGWoCZz5zZL+LlAjHbrv7d4+cTbCa/Cn14FKd+iVOpYyCJrG2t85fIWgwbG7v
	 5MlHdjuFn5cu67656KB0BiF5InRxTmWfHlJLlCFTlpEupI5VQhO3YX6X89zvlCt864
	 2TPTi3G2vQBcd7OJDZ63acKthgOdt/C2VJV6VNUlkJ2kaBbUUjhd/N3PVlKUMzBceS
	 ITMiQkqrPlB5Lacg2pN+PuKo/t/lmJuy+KXPbbKRunP+NgI5yKq7ht9MSHH5+Z/yFB
	 XxVO4Yk366rly7tPRVkuCw/7A4kN3N1rYAjF+eGYzIUyCvnCAivUI1qKijtXI2as9O
	 Fj679qmnuc6aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F95FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416669357.3641.15319733873537750528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd25e2af73533267f97826e3c07f26ff556383b00dc9a359479a1d461c5deff0
Date: Sun, 22 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774166693
