Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE89360
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716351803; cv=none; b=JqO0bm0m4/oQlOlU9kcROLBBNuOZ7IQ/NBClNzpaHpI9IdbsAYCjPa3a0xXl4SwIaIwTuegfbcHRCfYH6mtKF1eJIAWhlNwqOub1MhHPDlHvbuGWKjAydiIC7D6NOHjlZnrkoEInsMfC7DJGht1t9NWyI1LqaBasHZl5LZJUEpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716351803; c=relaxed/simple;
	bh=pF644OtDHGwMSQkOYi3XFW315DiBCQcBX8662457Gfs=;
	h=To:Subject:From:Message-Id:Date; b=crNVl/IuBaxZPRDKMeYTrPcprvDsSelNaBMhwImOch3tR9ttOfriY2EGfzhbV1ublVHeOXFY6uiCbo33qkUWU1qS9eTuQ+7McfiamLah1CXm+4EcHsEJXH173/vWxM9XsZdsdHxJyO4TbOrsCgD61z1lKssM0dTIj6mpSl9BAiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzAkIbCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzAkIbCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48F4C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716351802;
	bh=pF644OtDHGwMSQkOYi3XFW315DiBCQcBX8662457Gfs=;
	h=To:Subject:From:Date:From;
	b=pzAkIbChzHsccXpFoZLNVNvghHo0BwFidEVSKMhPzPAigaOat7lk7ssFJHUCIX9j9
	 9wMQNUHb+ibONSGY6k06cgIZa9qg2ggMAfB4gQFa/VWQlEC9AhK45p0gJ9a6NhVhlK
	 PgpN5NboKRy1oWtO75Pq9JrvpLflVU2Qlx/Apvdy0EwfrzsymDTnxgkvCJ4hp1DBb/
	 yVolE/SeATXCZipOtyeDrXdETfXxXWXaJ4iNTITy55vMfuYgK650J6fR7UhGNZ2liF
	 KuhFHDY3c8otJtHQjrPDpPQ2Prasi7Bv7jIwQIz8MIThmMwal9TYNGXuCrNaT2QCF6
	 RMB3o5mHjhHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8ECC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 04:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635180278.25192.12726568991082130555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b8667d6f6f407953fd2a61dff32668826d6072b1bb61810b5e4570447ad8fd
Date: Wed, 22 May 2024 04:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716351802
