Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D137DA6C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752290994; cv=none; b=XyYMndz29a2HHoPTaOlA9Ako73w8+RpxfAQByPtFq0C7TbNPKQaGQ71A6RZB+aVZZ8lq5tIj6A9tytejclyl4De9LzUdN8O04rldZqEivD+KExDD+G4XMjia28ZT+84XTreAIiwsu3W/F939ZBeaevB5L0sonYwoT/b4L+AuM4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752290994; c=relaxed/simple;
	bh=4EueGJRp8fED7ETEkw7DExJqc57+K9xJW9yEiKx1rkw=;
	h=To:Subject:From:Message-Id:Date; b=V0tQEtj+Suqj1rjVaAJ/pVdi8GlK879aIXVhnD1D1j7ylQxl77NuC+Vx+McAi7KMEGoIBcVrEgRP9Js+k9hpRaWReK7WNNp+orLvqjCGVHzY4DnUd4aIMmi7UTdvyIrtnUrb2nnrBVrKPo3E5oDZKi8F3AnMe215m84vuXXjk20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn8qtYoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn8qtYoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752290993;
	bh=4EueGJRp8fED7ETEkw7DExJqc57+K9xJW9yEiKx1rkw=;
	h=To:Subject:From:Date:From;
	b=gn8qtYoRt4GS5zjcaQecdcF//Ug5y77ttfXujVIKmV5WGHYsnbVqXTMw+MJnGVJUW
	 Ye9W2Ntrmg7g7/ZYoVkRxYjz0DSVb+ZgeG3JSxF8GQokAXAdoyq6jxZCoTzxsJ20+r
	 gK/MajJN8tjjaYWNtYM8UhRpxMC/U6QePizyIXSFPoZ8HGoZzk6YSCyodTD4iRgomQ
	 QA2upB1k8WGPHBcO78d4h/9SJlxTXI3d2uzsBZe+S4lJHI3dsO9nc9lB3t349otT47
	 Ifr74a4/R4OFcufaqsU2C0o5iX5cEBIPLNQfulmdERAMoENIIstftR7RVvLgQEzH2Q
	 9R/Eo3RZRSS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362BC83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229099358.9682.16969588975568770693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eebdd87c48e5bca1f422a3e915296e545ba05b2c291664e756575988ccbccb
Date: Sat, 12 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752290993
