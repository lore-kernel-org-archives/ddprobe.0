Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9A9188596
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758724195; cv=none; b=KKPFH35amv1TXF+EfXD935tCPbv08CjNqUrfapOvPL1F0H+xPgeYMPHqxc1og5t5S7JiQ0lxM/sheAGyB4xhYVsvqO/cED/gN9URobN4Su+TCsh3jthAhv6L6+nQZA+9S+8CNEowU5MCM3uWeNUe2qYTq8kKtyXCjJ8TC6aRGAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758724195; c=relaxed/simple;
	bh=i0kBy4dcYPn6TxHkm4jyAkG0iY+VtskUiU6XkvINRrA=;
	h=To:Subject:From:Message-Id:Date; b=UHX1sH8eBVk669AHIthqv3OJ25fGWsdOmvdfyrR8AkFeHFaVDeIaRRZZQSHs3fxAfgELdSAV46Q8J71plq7ZXlqZ9NCFCZpywhj8mQVyEQBP6QL9TNymXH+dCK9dlhgRNNTd3la5gjVwLFV8v4Uw4w11VI9ZL82p18ZQkO3Kabg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqLcMEx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqLcMEx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3580C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758724193;
	bh=i0kBy4dcYPn6TxHkm4jyAkG0iY+VtskUiU6XkvINRrA=;
	h=To:Subject:From:Date:From;
	b=sqLcMEx3LwVELZY3XLwoIT4t8hYxJJGelvi9sjXTlQjnQv1JqQCA8ISZORODwZwnm
	 a4obPfGLIUVTBAWjZwfTzYsTibwJjsV758JnQSoGKg0IfVLi5gq9Pqt3lClA5QzL1g
	 RK405CFassZJJvFQsU3kmEL10IzHTis+ofQcjcbnw/H/8tUrRLvL8QglYil3KjLNCr
	 DjkVM78Q0Ya/DDX3bTUPg1pVmKFoV/Uio3BZ/9gd4XF0Ewm/kOa+DQvL3X0zAPzQ4Q
	 Lfp1kbDdmjhZLTvouTFNHDJm1knhK6bDS41AWcDPGXAMsc3IcJD8kcKjG7ncuOdvWF
	 TGj85R0YBzmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A5CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872419358.7892.12351548909334139164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3171c604cae8ddb08c36117cf5b682c5dc0395a4ccd088c6c9b2cbf655e5dddc
Date: Wed, 24 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758724193
