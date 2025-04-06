Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BA11E871
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743976795; cv=none; b=YMdx4e0Ekw01aUplOj8osaiYEI0mQ8J5H+qzivVu9IEk6Eerse7I9PnthTnOiLgR/Hp39rHl6Ji92aiDd7RQhLLUweSDWCfqZM96g4B+xuu/scyuRsTN/r8FLilu/3YRStmncX33HXFnZlPJWPXaUCaNZBIgC9z97ghG3hJdTZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743976795; c=relaxed/simple;
	bh=UIE3SsgtKMvHPFos7pTbCDID9C0foG4T2a58r2KCDHk=;
	h=To:Subject:From:Message-Id:Date; b=cGW+0Qd7hhx7o8Ff1oOa+AXyANNHK9OKGMEx/X2MpAmo2BxjU9/pRGOSCCXR+mexQlVmEeqV51LOBRUM6kg5bzdmMKxVQmYpvwVBdhdtL+aqEs68VeCO/IKe1xb8c5xPl5hzAP2GpvvRYqmf0LqvCUoiTnijqBkeouf+ZwOIINc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvyZGO4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvyZGO4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB239C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743976793;
	bh=UIE3SsgtKMvHPFos7pTbCDID9C0foG4T2a58r2KCDHk=;
	h=To:Subject:From:Date:From;
	b=YvyZGO4CbO6zXegzdivOgRPhkKfirkJ/Dg1qroQKGmTFGrdrVQDsHxIgt5tsXwR5T
	 6yQgAS2k6IzSJiUfSzF084T2xUYRVzZ8WRgVs3aZ1pisFC4HBC6aS9x7gi7oLq6kFx
	 HDYfNOpxjAhXzqHcSV950Dd+He7PK6OW+EEhNTXL7gfxfI4TvS5rcoQnXmFsjkoFnO
	 AZvCLE5tJMne1/hsQfv6ts2iq5LoFGKabGavHcJjdxGXzbktVDTDmkegqP6wpKaHvl
	 zuYJuaxNO6J7QEm+h+sZep2Te2v2gjGDylWbJNsNiUL2j9ounRoImXIIydcu9BNYPS
	 zKzY/MCWgRKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96190C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397679357.22637.13208016793887594169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab067b32ea91d3279bddd54182051276820b85bc7ef41da6e83f2b0ab1e65b03
Date: Sun, 06 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743976793
