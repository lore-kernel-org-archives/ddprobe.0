Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4D03B8D70
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768949633; cv=none; b=t7xwZe/RR46kKLIDCM2XAQ1hZHUuWjzsBUhepPbFds6MtiTr4kKUAx+O0cCXjTH88hgHKzE+WHQsW0tjbzRYBFqHXbe7sY+1r1lzqUDDl9005pZz4nj3aqiFA3VtMy+qslsxALEPfPhZzBovPzT+daxR1A3Xv1Kw6xlB8R9N81M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768949633; c=relaxed/simple;
	bh=HlbNXc0qiVXfloi4/S64qPrAUc0ciKePaObCPiZeBxQ=;
	h=To:Subject:From:Message-Id:Date; b=iCe9PEMPCXvpj4S4D1b23LIiIbsjI2EmUK6rt9dxnhZmloH2mCC2P4v70q8qbJVk8dZilM/R/bE5c5O6OcLz1AmqKMYYy9g4qyMhwCveI/vFpd3Nooh0i3T84SVzoWIZFMfegUwRCHQgVL0kxlfMy+ntxb21JA/Fns7IfuCWoDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RguqLzEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RguqLzEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A4C19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768949633;
	bh=HlbNXc0qiVXfloi4/S64qPrAUc0ciKePaObCPiZeBxQ=;
	h=To:Subject:From:Date:From;
	b=RguqLzEoj2ShfBmpoxtOf5Xwfcg4MR80gUB1kBF7ffBGjPqPAoFiTvl6xJQzlxsul
	 X44GnTM/dsnROvFzkm2BqLVuSGtmYdD/vnTP0scUlivMwH2LV3A06OmMEwQI3e0tXE
	 fpqqz9cE5SMon6RKStG29KQmapvCaWNGu9Dz2TV3yaY9FjHa/s2UAsNWSpDZDmtV31
	 EVV3jXgGGGM5Cwnlx+MCL7TTzaIzjAby0Cw2xXK7R1wsHnhmzTZfhdgh5WZ7kKNwgg
	 pa02pacszxhxxfxnOEyqxjBVKpJUyeSzoofGiS/m/FF+TyMhgskTZi8XUWDAQjo450
	 CT1PQGI84zEvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFCD2629F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894963358.23419.9965077168415064052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac7d6529aeb0abc2a172be58da09006dc5a9e3248eed5880f3da91f967e391c
Date: Tue, 20 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768949633
