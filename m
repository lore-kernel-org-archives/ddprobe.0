Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C20315781
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755515394; cv=none; b=LHqgdNIFwQVkWzsa2PnQPA8b+pL5KoKpd1XwpP066vkOlffql0cqcAfQ0mLSgMpyCtIt57oB0xOzoskknLW+lYv5LuhqLfnevRaohXa4+PVhgq7UM2Gj57Sqj6zvsj1Xddzcvb6w4zf+Bt2l0YipMYhvMeaVipI3Zt6sUupunb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755515394; c=relaxed/simple;
	bh=37DqUM7he4BeBVvU9+yRkfA01/rDwJasCQbimByRzRo=;
	h=To:Subject:From:Message-Id:Date; b=ZwA4fSNIdY22xxcToFdiR70OUklVPAvXKWq+ooExGlAt9Y0He4we1cEfkBtQEa1cdE6Z+X7A01V0z7cybpbEI41c43SHXe8VIWJ2NwvwWwNDct7lbr0n44oWIsr+99psc1mnyC9EAn6sbqiHeyCV3wiAkxWcnKxHslj5sOgMNHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXRJvY5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXRJvY5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755515393;
	bh=37DqUM7he4BeBVvU9+yRkfA01/rDwJasCQbimByRzRo=;
	h=To:Subject:From:Date:From;
	b=nXRJvY5jPJQPl7xljsMcoUA9sGGj0VtyTPCgCjIKaLMBiU+wRmcizOZCRiI6gJDVx
	 zLG3fk8oUwR0JziKCWawRmPocnbGzTxQELFHz89qHXHxmnapLBhhxQe8h5wSWyfhRa
	 owmuELvTnucJ5IcKWPyBSZyYocNhRn/KaeDb1lVyTFRW+Pq0UZW/5vk8vu+GjowifG
	 GGZVqufr7wql4ANOiVYtJ8Jhkm6/Saq+T6RArZhiI5JSVxAwXvVa4tNb34v503a/BF
	 LFU5l5G4+mW/LVhXXGMR5sooY7ThKUcdygmE3+hVf7/b+LhwXHQpTIQuUAUQddXU54
	 wH8tHW1CeCreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B43CA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551539358.26629.5719281431846088701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daf5158795cbfae5bfaf49104e5cd01be019e6695a6ba96224255b4bb7dfb00
Date: Mon, 18 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755515393
