Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C95D37713
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705868897; cv=none; b=vBYNcX1Lcayc3vVOE/RxJrcGfKuQYXvhxBxCk4UPShbY742zRzLrUXy7PXGq6G29D7RYlJXCjNJeVri97Siy0482IgBhKn1Jt4z656mv+766t0GJI5fd3QCa7HnDAbpXqcuySrVA5jMXir1SOe2qUcJFnVa1rvOYQGmcx72IN/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705868897; c=relaxed/simple;
	bh=WTgA4iNFuRWtjsELbmkBIfpseN5hvMBLeLVWQwLurWs=;
	h=To:Subject:From:Message-Id:Date; b=SSuCopg3RINoJOm0PV9z4/qPT51V4IJhDaxvmZZHvrdPc1WXmX8TGzPF24SHlZPZ/45oNDUBf70t9ATGz16lVqtCI3rFWr6LdgTCx2y4xKd1KjQn4rGCCoiRhie3tURt1SIqwBd/3ixjtvJeIp5RwGeFUr4P06mVNbmysuldQZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttrzsq9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttrzsq9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F08C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705868896;
	bh=WTgA4iNFuRWtjsELbmkBIfpseN5hvMBLeLVWQwLurWs=;
	h=To:Subject:From:Date:From;
	b=Ttrzsq9F6MuJWNhngfUKIa7qTxN9EWSiu1DM+5UOSK13EtDPt3dYHVYbttcfNnt4f
	 1ihIfwQdJ2eVfUhMbtUDowHhWXI9xbR1iYUreITeG8YuzpK1MM7HHRg7H5sIbFyvtT
	 pO5FrTGY74yQuZ/d2GzPkVJ9+c3CvIZnE2KE2T2/AiNlCA0rZ17RdHppu4OxIZ+dJd
	 Koj/4JTq48ym7fjnV5TKkoMBKAmBzfG//twZJvMyxZDy+NW+pDOfHdkoGKqC/O7GiQ
	 3MH33jvympAIZwkV6MjnW5gpw9hiywdCz2Vk/DAIVMsE86LwQradE6jijWLjBzwXKs
	 wUQm31gbY9Ngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686C2C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170586889640.31633.7606505497510809179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e6e46ce95330bf3ec3a3f90550be60cc3c929cb257e51aafbcea3df2b9b92a
Date: Sun, 21 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705868896
