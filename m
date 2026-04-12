Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D97082D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776001054; cv=none; b=C13WTkm34/6hDM7akyZt2ZIzBK4Bh9dCOWkyQuy9FJ2cZhGsvNAjEBdjBQPqqX74bwq4vevEvlk14IbVsoEYjuuZ4GsEPv3NsoxLTVCBE+QURDIIOgPs8tLzZNtmVpBJX5KFmj0lNGzcPvbkBlPgChcIGL0WOzo5/3MU5duaqV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776001054; c=relaxed/simple;
	bh=YnTZu7Fc9b+KVWBncaMy3MvgcJYe5lTTgs1MOijFsGM=;
	h=To:Subject:From:Message-Id:Date; b=qFdAUAK0qkoCBmzao5e70FO4eL3kVsyc+yEZwyAQYXkZgQC0SLEvAkJa3bVRtvvWUEh00GSnxPmuPxiLtAGAp5xOQEBgU66sMzSQIkcEV5clwVAolMmQifoU1O6P3Sphck/WTThOoU2AeAzjYWGVKT4KtdYVbMneOoFVgPnGSTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcPFTcPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcPFTcPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA3BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776001053;
	bh=YnTZu7Fc9b+KVWBncaMy3MvgcJYe5lTTgs1MOijFsGM=;
	h=To:Subject:From:Date:From;
	b=IcPFTcPysdDa7Za5lABX3bmdg6nibjhICNLwKIqxmzOmIegDNQvxCTC0wvOpLXjpQ
	 oa7FF/PMsvhVXxofT+Mzb6SvAjHlAn7fBUnv3z9KdwN3SKS4K+82Hb4jMzg2mGJQkA
	 p/QtKp/9dmzVVcdUHBhWSGgYI50aV1WcpqQGtURb2yXPvjdLiC7Pxff90gBI/PQHwH
	 IB8723N8uLzBCfAvuU49l8DRbB4T13PEqs6ahalu0PhMbNzLEY9zB+K7Iu+5f0mjH+
	 wBZ8mrrnp3SNUsEeL7lSJuJU0Hot8ETcOFh/a9i5HvWPkA83HAMBxMbMpAy0OG6DQs
	 awr7Uygr5AkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD930E937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600105369.1610.7951384476288741294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc43ed927c3bcf4d7342dac2afb00c31b49c590db1f5dd97adf54933cbc05bc
Date: Sun, 12 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776001053
