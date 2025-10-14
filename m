Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2F031354F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760444993; cv=none; b=mKfvo/3HWa7oDbZtX7iV7MXoWq/8CB9++jd+jtB7VH0AFZDv8XlleItIlDkG5vO4dXSVgDdjW/SuinCNRwZK8SPkkGSHhkHQdVpPZXjGCDrZZhpJDAXYodSWrO4qoAc4bIKAmn2Ud3UO2lGmL23jp4iwpJ/UbzzwQNfiDGO4uw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760444993; c=relaxed/simple;
	bh=flfwtMVWr4MXjVuWAOE5dZ+EmBBYnRa/v+BRavH81ck=;
	h=To:Subject:From:Message-Id:Date; b=Pz4Vp8l2yPUbmnqomjRvIyaldGFVEo/KCfAesW9wqDabg2GipLedQZKwRapgJJz5OmSJOzGC6dwfV0cs98L1hsT0W4NFBDkCpstE/VNIpAoA4bzs8hh14h7mfSIIKntpWDjh4xEeZPhDDv1kYB5X683ZOfCxmk6/nXjRgCtIxEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3lMZNN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3lMZNN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA39C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760444993;
	bh=flfwtMVWr4MXjVuWAOE5dZ+EmBBYnRa/v+BRavH81ck=;
	h=To:Subject:From:Date:From;
	b=U3lMZNN7hTb70kvE13qF2Fk8X9C752Kv8vjHnAhX1KuL0EpDUxVW67aX5gaOyxpN5
	 +e8tR6Je5RBeNKPFDtPfygzBIlUIhoSjhfQsAZXkfUqkZo+z4IliSt631EM4gXxCS7
	 K2OrCziC+VOB4t42WIWolDyNdv3KLiFOap3tup5FywFCI4nLDcPOlDBy+9N9q5VRWv
	 BTJ8/SZ/2ghdTy/cPN8C6fejXOuh5XV0wHbqPQjEaGtjqhP43dSMwwyV8HRoEsQWxE
	 XMKKJ/Y4KChs1QuTc+jfHsKIxRQ5U2vivbjoccjw98ABgsL5FOIiZSIYHgVSVY+xNY
	 UWrvss16GeJQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCECCD18D
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044499357.15328.17691995339150749571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29614629b826994944fc43115dde45921d7a13fdae9daabf428b3217569837a0
Date: Tue, 14 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760444993
