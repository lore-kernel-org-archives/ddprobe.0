Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D6422371F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747259994; cv=none; b=kSyBkzJEWKe2Rw3qUbpe0IJozqAXmSrOsyy1jTqkH0zPGIAOpwTdKk/YJUjRxo0+/JS/Q9SF30G/hdDAESThy86IFdJjtAX6vdGlcQzQh5vKcaQZQskbdfHckHK0EHf0enTXWcZALFSe5+gR4R2ib948eUzwUqidu3C/8HIDpCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747259994; c=relaxed/simple;
	bh=+79onQL0VEBFAoC2VlmouEq29VmBBih/LEkdJm/NOzk=;
	h=To:Subject:From:Message-Id:Date; b=kl/4hxI7wA9Y/3vGttdTzx+0WbiJyq2XNV/93XKymsYZB3Dve7hzBa2oRM2X8fi/DOsffL8x2X1fGlBcoFE5Rav9yLIUMr6OLI++sYc/R8yM8Xdkd4LQrpbo54QZENlBiLaXRAcIuoN0hrkG1XV9uMpXjW4cj05+zhMRRWtPblk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG+kf3D2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG+kf3D2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6000C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747259993;
	bh=+79onQL0VEBFAoC2VlmouEq29VmBBih/LEkdJm/NOzk=;
	h=To:Subject:From:Date:From;
	b=SG+kf3D2RjKA87tlHO2xuNT4InWpqMvVavsSMJk2xWL6yJhO1rTW7Z3ap5aOGrhl1
	 mKFHhKM1gsvWx40X5rHoXA3nPJyxolls3Tm/bg/3+NuLjStqxCR3VWCmaC2PRRiOMX
	 DhNX0R+fDsSsZ4X4rJxsiPWWNORsryksVcRisqClGyPQBi0whWonSMSNkSfmNqnSct
	 /CQxGMHoO0jJt5OjH6zLtU7Sc6Z7xuQ9sYknFk/iIAH7rZJH/dilr9XGtroTdp0CKE
	 qnciREjSyrSncDeLo+OYIImiQSxpH30veNc2yBMclLe81RdRzYijm06Kdg6lZ2DoRH
	 BKIbSw6JXNDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067AC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725999358.8055.15039013402363659879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d681f41bcaf1212f876a7b68160440a6752823dae57975a82f3a7c157a1081e
Date: Wed, 14 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747259993
