Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5EB15C138
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728495954; cv=none; b=ZmXtwzNc83YuoMXe81n6cqes5UKcBTPr/3HKDa1D//rXPrCUxvjKroiHswg0lzm+r2c7Xt54RilYfdQeZNmiJKk03gIFFXQf1kJ2K9adW2FI5Vt5vrrVt2NJfu/69t4/YCvP0N8e5P/cdRs/+J4CVpXmEcBDfn4taenSJciyzhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728495954; c=relaxed/simple;
	bh=dzDQV8Uvy+PP0GsJJ/w/2fW5KN7Z4jQaTSxDuHNr4Vc=;
	h=To:Subject:From:Message-Id:Date; b=bWqHQTrWY0+mrsB2KrrTVmaIcjSGiZ7hGavljsntqgU2BVC+eLx/1cxnrfKdvP3vDvBwI5NdR8eaGDIU2n++bg4qga1AZoLbHgDMgsZ1RtzivzCZwI8rgiAOelIMvIYht2Bp1RGe42WFpfctzswsjsBb8c5jQDtiwnVOdOM1zdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeTHtvg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeTHtvg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79E3C4CECC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728495953;
	bh=dzDQV8Uvy+PP0GsJJ/w/2fW5KN7Z4jQaTSxDuHNr4Vc=;
	h=To:Subject:From:Date:From;
	b=PeTHtvg10xrKOu4qO1e5KNCF5NygKVWbtBhv7oQFtdtSHjar0sv4k9QItkTibddtr
	 CUAnNWMxGvqaFcZvyF/RxmTm7iQyzjv1NIsI37BnBTINg9axFviuv25y5WSgusro7w
	 JaNm/4lHDu+PQBvIWzg49SaJPdTxFK+0USAo5h7lIoBQd8D5TEarkvH+/FO+XAAWpa
	 C71d/KovSK01ZT/DYCJNV4Exay+Ze/Y8gxJZ+nufOlINUQzLr+nxymVxqsoiSq4MUj
	 8OQmeUH0XMBJpECqXdL34+dRv4uO1ZrjLaNLmO7+uijhGMW9GE8bxdRv7gMfOE4OSb
	 3sRi+/TkMeOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7D6CEE336
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849595363.17612.16840192312843181455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e4a84cadd84c7e8c6b117f266a004c39b2298d58ea4dd9ecac1a06df24c594
Date: Wed, 09 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728495953
