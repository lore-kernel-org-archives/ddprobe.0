Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0B451596E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790787034; cv=none; b=hXH0PguYFgCwsWWk81B7JOi05Hr1c+gA3HoIIiR47kJwJnc1HMsJeTusReyzUBxueOv66H0keoQOZVw0d+6c1YRYpKlK2MNkTT+kOsW5Wg10xhpvLxl5+QuxtqraL+2ddSG9cCL/FiYqwF9eC0qEEmiJGHURpt1dQugEaEx8ryo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790787034; c=relaxed/simple;
	bh=kz5zh7BGIUjOE0fZGR/du4gmw0LDsBbdDjWdE4ZuSWE=;
	h=To:Subject:From:Message-Id:Date; b=TgqhnL3NgdYhxoKyCP3h+INfgkr1s+/LbcaVfNjUaqPOf6PS/Clsf1QniziQBFb1BciaJFOX6x8+Hm0rHJKouxVdLXTxIDZlZYHy1YYEC9hxdfVwUFFJoG60Fx/JfLM7cYmYHQ/+JBEF8BsTJaXcBzGBbqSYq3kC/bNMyX8SMAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft55edqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft55edqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD677C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790787033;
	bh=kz5zh7BGIUjOE0fZGR/du4gmw0LDsBbdDjWdE4ZuSWE=;
	h=To:Subject:From:Date:From;
	b=ft55edqkGKkPPHB0pESB7qPCLIefvR9cmGz9kwkYRmwCNJ6eHqNDmdtL21QWQ+pgm
	 hqiU+Mz+PL9CQmHAq324/26O5Tx2uhJRF8ex2noj6CIFjIJsSWL5Qf81Vgf0WpJ21m
	 wNWH7PRe8wLHR7FPJyQdqllF8tGbKtFxa6EPY66DvVEkPjVdxOjdACtAXne50OEEie
	 mikUBmC/EUyldggAs2Jsk8CFngvCWDp2PXXLx7N2umoAHWTX9OK3qKSiuWB31okrg4
	 QrOGLlshVxyZPlXMjfESVtqQI6aZowq0tbIa8rv9dBKmuqaNO1Tdl7dj1Cd7GoQptk
	 8R417lKeRoOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB8CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078703368.9455.9681232380203991019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f172277e7c7fd860c48dee10f9e762abadb7625b58037676f840681b2221f5a9
Date: Wed, 30 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790787033
