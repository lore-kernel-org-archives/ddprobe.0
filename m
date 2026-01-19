Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808E1E32CF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768794834; cv=none; b=eDNM5Z8Izua1FezEok9hiZvwgPK/UZKksslidsCWR2p4gQyKiz14YN/claUm7ve/zJh2ZW2kRKMVx5pwfCq5qxdNv5nzXiGUuXsExrnChcPoz3WD5hcb6U/Hhpx17fCjHxeZjGPiJcS+gwRtiX8ULplziwsVO3JVput8HlfdHF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768794834; c=relaxed/simple;
	bh=tbX1F/MyNmcF0otyXa3P9b5/tomInbjRFctb7CS4t4Q=;
	h=To:Subject:From:Message-Id:Date; b=YdQLzP6ROP8urCX/rqbZYCffxeAb7NSddx0YdiiYp+D5wYZclTe6I58Ibqs9DiDZq9uIrGkeGSUI/ONGoFWUpNLdyxiLiTDzYkvNafUKTS6nLJdpmGMbk3jgphY4MrPm1pZsGCAT9v/nrWO65xxlB5wy2O/BqERQx7Fvf4vpI+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBBjs++R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBBjs++R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1100C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768794833;
	bh=tbX1F/MyNmcF0otyXa3P9b5/tomInbjRFctb7CS4t4Q=;
	h=To:Subject:From:Date:From;
	b=vBBjs++Rg48D7o3GETVWdhQ9NgMGGR6ZEFmcHP5J2u+DpOkYNhneNLCRvKerT0cn7
	 Ba3BE0Nttb+4AWXzpCnOV4sXzGg8epFrPNxgbSj4TbbxstavI/UmWsWWks5QdHSWsY
	 Q2XomgJQHoAM30tD/JoAqfNThVBO9lIVhnvNZm57vqrRvngkfrPX6jZ9mXTLaXJuaa
	 MxsPgo1Fx+X1YkwwFJuyX2bd7mhLDQw5Yh/xJsQb21zapCcq1A+iHQEHg5lJpxOfmu
	 viH4JRdrz1XciBrP9ElfLWVF8XgFMnw5dmhv/Tk8Fz0cIeOexGMRfSWi58Ynf08h9M
	 1iPKH2G0NOpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECCD4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879483357.27198.2188213139979994267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744f5baa7e11878787a54a49567659094c42348b8d63a213a421f77066157bfb
Date: Mon, 19 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768794833
