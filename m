Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F9C33987
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762834194; cv=none; b=utmB5zbgZF1cBhLEK0DB3JNQcxcIIDIfCXgznLyVpsMbAizj0V14JYVlkKg5FDRlx5iFSh1LFGWvbmrzIIAcMAR/Mz1nLCoffcAAwwljEEd8m521CcwCqdrcM59DNv6V3n06CE7zKqOej/zIEeqfQryD01WKlFub23GmCMlhR0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762834194; c=relaxed/simple;
	bh=QbJtpEhfj4WyYySIyDmi/MYqNCdj0l8TCb8Rrc5WDPo=;
	h=To:Subject:From:Message-Id:Date; b=ITrcbL1/ANPYqtaqVGclSMmJi08VaDovljN9Lhw1u62uyUgN9yvYNwwQ5NN/Z4mRSctMtOZH119kPnm9AOgi6lmksSx0B5+0RGZQM53TVqcsesbbQuTFvRNp+5OUgMRLWheVNSmac2nTvilv5n37GY8AuLU8NCHsUPjUjsrB354=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcHketap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcHketap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECC3C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762834193;
	bh=QbJtpEhfj4WyYySIyDmi/MYqNCdj0l8TCb8Rrc5WDPo=;
	h=To:Subject:From:Date:From;
	b=EcHketappsKir26O6zXB0YYMj+ZRTFBkHKYYaA3U6F3KTcJ8cGRPijLPcuObUETR9
	 VsvHgazC+/WP3qFOfa8fN43FcavcqcI5MsPQjBIuJzOpvgP2wkh8nwL3AztzyilC/X
	 Z9qKHPl0MVYCEGW/ZiNX7+D7/hJASZwySWprzgOCF+/Teq7gZdU4rImzrd0yxITuHX
	 NGU13CYSJr8sBC4xB+uCDtBCzKG96EWk/7BvZBemfGkHFv/pDu3Ex/NGnPzkv2l7g6
	 bAttEE9hkZ37hh47qOcRszYjiyqoedi4rXaXgsRKhHGCALXNBSpPzDihox24BPl19W
	 k7BWirvmXuXOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0861CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283419364.27620.4042513896660970608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b150f1d03f4d290ad62199ee1cd9d94a014b4790f3ac273971d0b30de098acb
Date: Tue, 11 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762834193
