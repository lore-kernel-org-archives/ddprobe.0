Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A303B813D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783362514; cv=none; b=KYPSrWGHYJgmZaRtrFlcIKGF272b1ChQ2+LGgBjzcKgfbLV3eUdo0lLg/yDhLSKTvdONMTEhc7T3pJ6r6ZZxe3YsjoyEQh5ne4hNa/aLc9UoV78tOcIJRr81zYXpnFIYjVVH0YokW18G8+eEYHE3m+PU6PM21pTPld+mkmduEy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783362514; c=relaxed/simple;
	bh=aGAvdoRDg+HNDIo9Az4u8DBPL6ueEiG1Yd2rSqy/yoI=;
	h=To:Subject:From:Message-Id:Date; b=Xddppmy8ZHeSbVVVAwn8Tv/spjYx1NvYt2LZoVOT6Mezr0vp+pDgGkwhR44Ys8Br20xZ9YL4Wl9OcjGuumZ1RRnBbHl/rZkoDIozejUB8lVBiBFNYwkrkM+6qiF8E20GnLLsQr++uOnJk1AO2b3TJgoONJcYYdoY2Qr0NIa5O4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnzO/Jd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnzO/Jd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EFCC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783362513;
	bh=aGAvdoRDg+HNDIo9Az4u8DBPL6ueEiG1Yd2rSqy/yoI=;
	h=To:Subject:From:Date:From;
	b=YnzO/Jd7VzQv8E1N4jNaeSXvY216yf01lsuHaEULcBRjVV+OvI2s1lAXUe0RT2cID
	 aXrBzM83wa4G/NNn6DAFdxy2+YHh/jouowDy9u51rc4XU97oGKhyGDGhPWmaR5PjLf
	 Vuftc5UKD3lVTF+cAO2LslnYIakxY3Uh+1VXL50sm350x7GorM0PO2ZXtiS5+SPcFu
	 VSmxc8L+qSLNpXv81rnbBvJgRMfcjQu5ICHJfxrKsnXdFj6WLGr2sfS79Gs29THZ3F
	 27i0HDeZXLv7Gnp7IaXd2nrfoQLtjJUGCgcb/USNZR+jdQVMmFb9fyCZJU9Oi/ZYJO
	 a/YSZKYxlA3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9398C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336251368.31959.15800754082586212991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8de8e85000898df2589a24c25a90efb7e595ca84663e59f7c2c3b7191c76ae
Date: Mon, 06 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783362513
