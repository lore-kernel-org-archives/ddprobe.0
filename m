Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F18C1C68F
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743757794; cv=none; b=Gi8DPdP39WCHD/6C/hWDjhV79d6HnzBh6gxS6sqgq20PUu+Key6ldG0clb4J3lpYXh8RsaSiIUzYFUdwULUbyARx0f/TcOxBP6GODaMj/k9Ry2J3hAWqOwvmXymyOfQGOASlptWb9iHGOsvDWKehVJXD6VAzDtJ4YsnIT3+yMlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743757794; c=relaxed/simple;
	bh=qkmmm5fI6CVUVpsUQwpm+vaX9k1C65kdXU/R2Bgla5A=;
	h=To:Subject:From:Message-Id:Date; b=tCXHlNZc7XC5cncX2OZHospRiexuuk8ez/q0+v+i3Ni0TjSmKMgYsFkD+gDIJTQLSrASXYSO5oCwNMYPU+P4kl5stYk6l4TkgEZ90WDi8uh9UoIt9qZRCzQw6K68IJoHr3KF15KKdBhb5Ev76swYcm5wEa4jtkXFCHEvapX1AVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMvv6exK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMvv6exK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743757793;
	bh=qkmmm5fI6CVUVpsUQwpm+vaX9k1C65kdXU/R2Bgla5A=;
	h=To:Subject:From:Date:From;
	b=TMvv6exKzUk0vss5haa20h3uxIF+9Lv0XnZg8vIH8LsdFI4pSPMY5jHtY+eJv2LtY
	 M4k0cHKo7+9MBEiDsMlHgrq1143lZhpdu40JllbsMqfO2lC/uIjMhfjgq7WthgDbp6
	 urIQQhVHG8zpvo1HDHxz5jyU6YruYk+spPADhbB1qcDXO74Y7h6tm7ICczneNjrZWU
	 un23aauEf3yHKw00F5mLu6vuu8N/Mm1bLFAuMceRKwGR0XekpFfDaOXnFb7+GWUvJC
	 bMORq4g+ybkDoRNxNRyXar+6iEvsIIFx197tzOThPFFk1rci4IpfQ/4vKL8bmHwNfU
	 Qqs9g8OnTS7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF8C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375779360.29858.15834618918656503160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a7f4332c718d9987c4312cad19e8e8c12a3aac69743842a7c7618664cc1aaf
Date: Fri, 04 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743757793
