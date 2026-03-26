Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13370332EBB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774506894; cv=none; b=YAolqbqFqnoZs7j1NesqQmQLlgFJqNVSZApK8JElDrL9hEhB157b3by4CqvW7b43fg0wVlGaVJVmR/SJpw10wX7JkxEINF7CvQn+fvEVEDkNXzEk1/VASR9MGb6F9qRhmDifYggH+4IllpXIXkXxfgVzHbGdj+lV2tgthkrDBIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774506894; c=relaxed/simple;
	bh=Etwp6+PSf1yU9cbmFnw/fifV+bOjrDn/FOAdKOvzjl4=;
	h=To:Subject:From:Message-Id:Date; b=LfgDjJYOwwjiXRTyl812Xk32zEjZvf2DojBA4haNDZ71b51HG+P3/27Od8Yr7gBAFYdvzksvU7lBcb7ZaYFimdxdjlyACiwhZJcLPZMDugnbSexERi9QCpKm3/y3vmnShJ/nPfcK9SLllhbSB+oZ147heVq3bEZDwTro+NxgKQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EG8kt90p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EG8kt90p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6785C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774506893;
	bh=Etwp6+PSf1yU9cbmFnw/fifV+bOjrDn/FOAdKOvzjl4=;
	h=To:Subject:From:Date:From;
	b=EG8kt90p1npaBm/zEXds1voKysdQwVWlpCdX0uRqnd+cDypKMMVAIkgOVFoPqtzFT
	 XnqiCWMKxmxr5r789gIax3fxqudZT74WHIdBc2RMkmno259MKW4Y17VQ1GXyesq4ZZ
	 EWyOE9hdvSnnf+U6M5j4g5WS2DYu5n8PnQuhUm2e4YZPaYiO3ov01993yrOGu2ncb7
	 8Z3jczWaVirUOk/z0B4cOF5W4FuUaIKns0diEDISE0e/dBPyLcFEi5NeDdXHyv5UHp
	 Z9Ss2BhgRCIHsWxH0pV9FHMoKQvAwDdJ3vEslOgeQXpeLSJ2V1ORtcRQ/RrYSf9EOU
	 a3hoV1ZAfbMqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247A109E558
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450689358.13139.8358929062150787489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dda8633b2d2b8ce02c4c222c3e5843f01e151b1b34fb57b87f2c8dd6d853e61
Date: Thu, 26 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774506893
