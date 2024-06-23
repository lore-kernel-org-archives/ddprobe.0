Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C1F1836E6
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719165144; cv=none; b=UpHvTNWVVihBt6KF6UQHyy3H3N2GEvP2Qln8kadzT6NcqV2bTpfc0su6TlMc2OM2Va3UNcUMGRnDPUZWCZJWPuOCPV9wmcW7dVRvSP+Bbfa0PEptQbm/ABPFEhXv2uDee0tk5Zfvd+jMurNjnLHAr7RxgHQGCoo40x4IRnlCKUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719165144; c=relaxed/simple;
	bh=lY7lpi81PTBJYx0SZC07tk8OZdDJDgAAoCG4mW0MnEc=;
	h=To:Subject:From:Message-Id:Date; b=tkCFFv/tybrWX+wtaulATrjp5mxsDQhJCWtzOEN09lWzqWiKYG8fmVHc3Nc/zvHH6QtCtOC9FWINsr+sIfX8ZICdbF8CxR+nxCBP5aQoL/gFYUMGT5Vrberv9kXOBVGXajX6ZU+OHcTVuQHpxOorUuwnJqKRCXgQzntfzHMBLPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxm5t3T7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxm5t3T7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F02C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719165143;
	bh=lY7lpi81PTBJYx0SZC07tk8OZdDJDgAAoCG4mW0MnEc=;
	h=To:Subject:From:Date:From;
	b=Lxm5t3T7iEfk9+qtH1OGnxpyNhf4aX3S3rNqwmIGxRrREiNnTnW6YZMd/xiZE1kH5
	 x6BFZVlSqyHoHUPaBIx/kIg1O6vCb8aU+lUvFSPANIfOYSiOIwfhlCbsWXvEAHpwkS
	 PJ5CwBDCRG/0g7Mztp7zYCxYAHNTi842FFseeTFq79pcLj5Ns2oxQgol/RZ0eOnpA5
	 jG5jKHmaFhTD/Pkjirmr/AhM8q4DbUPMNiJQXwkG49ts7W3RaQGNh/wmE/wmbfIdl6
	 FRUJv7lT7IVk75Mx7ja95YcxLaEXpjd/nb5Pei8fIeEkmq6qqZdRPW825uJqUaqOlw
	 BaNlkuHzAmuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C395AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916514279.18000.15080112181346228051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94222751df0c5e4bc45223d6ce284b73df3204feeb5f008e3ff7865615ac9b57
Date: Sun, 23 Jun 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719165142
