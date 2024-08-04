Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ED4368
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722774354; cv=none; b=V07xfoQHpcIEibWoQ7pjARFij78ZU/FysGMp2Q4bD0xz0w+rZc6lsSqZvHM4C/HfjQ38OyAo3NgG6TJV3N1V4O/+Don7uTQVMaW0eXdz+ofq27qKMFfltXPYZzdrBA/yeR1hvloQHco3zcNA/e/HuhgNkG39FlftVENNMCeC1wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722774354; c=relaxed/simple;
	bh=4seUz7vwB3UbpE3LmlaRrvqlNGtXTJwi2Zr1ArasTgg=;
	h=To:Subject:From:Message-Id:Date; b=o6JNeSlcuWONuhxcj0mS0d3tvNMEaF989ZJvYJVpeV4zS/+bfizZpixISetOeAO5dvv8ZGGCA14ttNtZPkx4ABTJA9gQaXIia8HRvGUa04GTtM/3kmLmO9yBDrZqTDc5vbK+WIdmHpWCq5byW+71c4VoMsPWCIfiuW8TUTpVf/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C25rUeID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C25rUeID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5964C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722774353;
	bh=4seUz7vwB3UbpE3LmlaRrvqlNGtXTJwi2Zr1ArasTgg=;
	h=To:Subject:From:Date:From;
	b=C25rUeIDKLvSXDNvOOHy+lgKF3+ez6+WypZvz7ipXdhDcuTK8cnKCNOyXwm0+Fz6A
	 61CI7Ri5916qZb39YVY1TpEYR3+k9m1fREwvlD8zUmieulhrkg63Tnr5yUSATBqgIq
	 y553spHI4qCpz+4HEJ5pq1Hht9L+xDkLGvyLLS7U7Gyt6m20TgKRtzixUU/eTXWfc2
	 RweLP0BRrDoIb90UNu2XZ8ix8cdahMkDw5VHSsrKhVfU8/CKwL6FPubb/JnTNdZBRU
	 e4eCSU5klBdq3EhEayDfrPFI13Z86EuizaVip2sx/Ssq8ucIPSsIBZJnlCk6drKXPL
	 RAP9lbrLhRbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94557C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277435359.26992.13954255807175951006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95d58f523d1b0585a97edf6b95ef4b0cb05a049620277127e5cbd0641c51581
Date: Sun, 04 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722774353
