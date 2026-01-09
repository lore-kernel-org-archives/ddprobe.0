Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF81328B47
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767950034; cv=none; b=s10tpMBVoM1PT6JABGAYO5aagCYtIMVzCKU3srCyTCSmsdeV3moDwwLeelZJn90ltlsdo9YWNWGKF46/8uFS9jPd241qMqCcb9DCK0zI+KzspwZZmiJAyvh6dmfF7sbzjc1lFSkm5aCZvwtVa18F4OCkEy3g1lncUncnMsCN3CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767950034; c=relaxed/simple;
	bh=F9W7MH76zBbXC+zGpQKgwFsb06UUmtsD69gQyTRv/I8=;
	h=To:Subject:From:Message-Id:Date; b=HMNVmNLhjW/vh90PjsHf7pEhbonhl+CAqH1fXHPznWIyF/0pRsUNfHwLpCFe2OdBkpQEse0znLv+8B+6ag0jUIk9o49nSokUxFjfodv25dZm7Anoxi63gCIizU2Jxj6P8UPHYWRIWPoMr/NIrP0TYYniaO+DOFqnhg9ND/J0hVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR2tEtl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR2tEtl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0AFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767950033;
	bh=F9W7MH76zBbXC+zGpQKgwFsb06UUmtsD69gQyTRv/I8=;
	h=To:Subject:From:Date:From;
	b=GR2tEtl5uGuZMoBrKz33Rkg4Si7KEgXh8tkb5YYncamKZe8WpqQo2YGG4fK2K6Lja
	 h9wMqoPgSPocqCrpnfRpnHXzKEHfbIXro5GKM7u8FPaodmXkTWnnBGu6r12ybM0L5K
	 bqjWaV8awRd4QWS6vLWusUqs/7OTX4VeBqy7YWTnFjSaYqM4nEAslzZIQLCBzVoadF
	 EdcN3C3RGnPYAr9e+eeaMpJ6DoXnNPm6WXuvZxXgE/Bx26alJj507XtIg2P/X5gAcz
	 DDIxuW7WpAnargFX68Df9ymwS43URcQLB+cX73JXCo9ePduvShWqMHHq+jQYI8qACQ
	 P5oEZ1vDTKJxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D812D232FC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795003357.4898.6145942582497841605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d139bb1aa481a4f94a97f9dbfa4ac2b7f98e25dc01548ce6cc7a6e93714c83bd
Date: Fri, 09 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767950033
