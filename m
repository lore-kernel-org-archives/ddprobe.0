Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1F36BFC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727099754; cv=none; b=bx7V0gf5b6G/hbVJ1Z+rKd7zd0iecfST0ZbRiUYX4GQeqQdiMhDB6Cns9LJwboID4E8PSRwE9Yz8bvmR+jfa2oYBU4VkuGINA093ncFifSEZB83sqFr4KlIuSgNVekz2Jj3uBjPGSn/BGnlkRzGqMxGCpu2SsaJFAp3V+SILeCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727099754; c=relaxed/simple;
	bh=aQ1qza5t7xd5BGFzyHnO91E5YBGHWBdgQ/sTOvjNvBs=;
	h=To:Subject:From:Message-Id:Date; b=CFkKhjCzmNDys4CP4/ZvI+Nn5SbJnVGgJU897fO7uAHituKaPCBP4AIJqgE1h5g5nfL1wVmPtTm+s6SqzylQvqjy6Yw9ntEuG8WfcVYQA3DEkCTtsohShaQBKO0pB78XK5+xUzS4HY69ZLsl2DpOZWpWkFzZHMOtnoMk6lXeGNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWWyb5Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWWyb5Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD126C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727099753;
	bh=aQ1qza5t7xd5BGFzyHnO91E5YBGHWBdgQ/sTOvjNvBs=;
	h=To:Subject:From:Date:From;
	b=OWWyb5Nf7WdOTCyh6zpd7zzWVGPHiN8KrGuBl4AfzQ59Gpo3C5vHf6BPLlyQxW+it
	 K6unG67lfp5onufG489PgAqKJuLJmgofeYCthzukVK45qzNMFx1TkBaXx+wvdSKpP8
	 AZthR27GmYEoXQoYHs5PC8UlWoiVFQ7WsWPM2TXoe8JKlJCgzBJAV5aEJcy4Krmet2
	 T20VAEoqdKdxRUr43fAVpEgRxGWpiRVwfHhF/QMNvt9ZITUuAPA38244xJw6kk43Hq
	 hZmoepVtU70gXpai9WxmmjpWD90hObR+K3N2Y2/P73g31npBWVK1qdQ0kD/A+jP0vZ
	 VDx0hXJ8RpgXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3A3CF9C69
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709975359.17263.6720446357921929931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1200ce4d9bb2e966cc3fab49f693cdefa08aa3527aa6151cab3e976f97923557
Date: Mon, 23 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727099753
