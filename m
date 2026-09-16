Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563E8126C02
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789539634; cv=none; b=A4TeKyIzQSFxNBDYoYrjxnRi9FkrpAMSZl2UczdcGqSo0nVTwkj2N4T7oJVU/IAoZzag8ar7/WK2hEt3ikpb8t13aAGcjZt9dRVMJmTEhdxkZoaHbtekvEPGmAx4/LuxptMLyh4nYK+Hx7ut1psNeO1dmWtt42uUVaUfxHHXZrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789539634; c=relaxed/simple;
	bh=+OG373YWd1DfrtYhNM1HkBeQkUGlLgztQW/bn1ZgLqg=;
	h=To:Subject:From:Message-Id:Date; b=ZWRX4zYUHJwBKyZio50ztIlP4MtF/s/KiTWO1Lw8GUhapdz/9RqAaWx+4XbiMp8wQkLJcWBmhTZogda5fC6r/UpJJZzNWDEKXdXL85YT+jbh8dG09/wg6IBmmvf+hcaWFZWeV6VolOKQINsyWa2H1UJ4B/Ou1DWWlLH8R9T8FNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo/wl8ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo/wl8ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA86CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789539633;
	bh=+OG373YWd1DfrtYhNM1HkBeQkUGlLgztQW/bn1ZgLqg=;
	h=To:Subject:From:Date:From;
	b=Qo/wl8ikZt8ofdneZtb6vttqnMy0lVgrMI8IEQxcL4cYSxmsXlh34sIv6nTUr4KH0
	 dpotW465IC6EPiROojxXVCxfoJjJf0p81c99FJRAoK2rRHF6pDV5bkdmQ/HSPZC6/F
	 A1Scxd1ccZAG72CEiXQ2A0EcUaU401EJI40+R21HlNvppQlfppwM0LBq/2f6ruvq+d
	 fW/bcl9H0y5WZVfdBBmNuoYYfGWjVcD1Qm38MCtFeyc88fkHhHkvdbuCB1mT4r2M1t
	 N1JXi4DM1C9m4EiZ/8N1bTVjWQSCreZa2e4Rf9RUXvRU8HbaY5J7P9Rx1P2GG1FLLd
	 NyKk/UWJf+K+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B482CC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953963369.26510.10860541329064825797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc602b98807bef17dc147edf3aa291ca1902841451db15414a7f1326c53fe9b
Date: Wed, 16 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789539633
