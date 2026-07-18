Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E6543F0B5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784351314; cv=none; b=ANf46q57274alxhbKs9/tn80bUKXJoHgeJeWFFqy6zt2naNec9o3K4pCKWkZan/Q8Q6g72w3zWZKYbI/uMu0xsE57Ds5zLKKk5Ksw+WZEBYnB9biHKT/VuIpaUsPE/vqlUO30+TTRdlCKvgjV0fDaCQTl9TtiPj9zE5aCYG3I7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784351314; c=relaxed/simple;
	bh=SMhfk7wE5ygXqiJ+Sg07ooKEhCi9OZTr2qxxsfEsG0g=;
	h=To:Subject:From:Message-Id:Date; b=U50y+8d/o4qmujJ8dRvrK23zdx4hsuoFnDNFmdyd6YC676cNz2tNApjCkjmlbpGyOP7vjcUAXPNANDs+eyv88xYHwvDzO7kcsGDpV0Z6LebbWgiOKlrLALOYlN5B6i6r6bXlnt3ZvA6+5SgSothsZtvnQ3L2dq0el50i/R1Vr3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT1iYNoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT1iYNoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4379C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784351313;
	bh=SMhfk7wE5ygXqiJ+Sg07ooKEhCi9OZTr2qxxsfEsG0g=;
	h=To:Subject:From:Date:From;
	b=tT1iYNoYlKfqA9Y/yudq8Tz8SeIa6W+Ep8ztaDAIg9gH4VPh7bOOKTfwMAIqcZxWI
	 qBY/fYmkDx/cH+ESeEzSrCyLFBggfLVdnzjGWXdRCk5gfA4CIp84KYeOvEFx4Uwbmz
	 tr2+1INxMw9lkr/UHOjEZWhz39hX1jh06J2IVqrOyW2CdGboZ9rKp913a9RuMmgrwA
	 bnJeM+u7+P+IQiQCmskrTRIDE9dSmkJlsXFc+qqVmhYHaOKDtzcXE2wcOQevrXheZw
	 IS6u8AMXdN1XChXLBjyj7NWGz/IBTwJJqngcyEKIR1U8ihYcW0iKYEbj7E14CTkmKq
	 E76bM9KIZNAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB68FC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435131368.3310.2941259693272693147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7e11f0619f9c1aaadd3a490ff145bf89ee3206f78e783635e45d5bc72699f8
Date: Sat, 18 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784351313
