Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5837F1411E7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717042463; cv=none; b=EVFP7bnD2pGmgj7qd+XiIPXGNYXjMmFtj8bUNS1JoYlDlCxhBqrn4cn4Q8PjIuD72afoIGJMC8mGuXaGw5HFl8rHCryI8bEl3QiBoc11pP9Nc46BjLm6h8k41Mb5XQHNhorLg/mL6LKLyjlr6QQ+T2HXS4B8CZ6+nIfn13qLFQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717042463; c=relaxed/simple;
	bh=oxqeoCUWH9v3QpN+/bAeHEO7hzEV/7PdtLtOreBT8Hw=;
	h=To:Subject:From:Message-Id:Date; b=rJnMEMhTmtJNesW+vOxVPBnHiRwmLtQOWX38Wl0PDHxAJSlPSAaWOIeF5OZBKi+7OX1ly4uUury3E2HpXhoBgOdQ4+6twQ56fc0iyo0cw2r/joYGYa30FWVoCAjpQHvuJ9fpmuCg9hFPQBHvBjlrlsK7jYtDFuxOpna6QyHsboM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUrnf4D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUrnf4D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B63C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717042462;
	bh=oxqeoCUWH9v3QpN+/bAeHEO7hzEV/7PdtLtOreBT8Hw=;
	h=To:Subject:From:Date:From;
	b=PUrnf4D8ZuX4jUup2ogDb6xaA9yYHA2/mQR0bMoiO02LDiqG50VjdME9u5nbhW6Xe
	 xvhV/j1PCIAHhvceLpPCodKzDrCTGNHdE3xVTLCoV2xfBMSegk8ffohdtoVYfjQSBZ
	 A2D9dCsHPous6lMdRICM7IHxQpIXAKvLB1qxIoDtqHA2F4WYaLddPH84zySwz4ee7f
	 tTNl/5H8c60NfWm250p61ML+ghYL6r+3nhp9XR4NmsviRSnWoBmG0b12M6ka6nMzNp
	 Pzb/kuEZ8Ovl2tx/+JtEzTjP987+v95z1Ara8OB8laJqz90TBhSY4gEGARYaouHtJT
	 rXOWZ4PIn5fcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5C7C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704246275.10563.1676172975336205681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249f9050293f3274f8775f92ecee3431ce15922d5aa070a1e7c5543f4e14b7ba
Date: Thu, 30 May 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717042462
