Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB11CEADF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736031354; cv=none; b=itstuNheSBgzeoiZl6g+xAQSnyQjxwDXgwxeNNyvnsS0PHYdG8MxFfaRCKjRcVgQ+cmVru3R2yu8wldBtU16ndcZ1+vA0i8M1MYUjz4M775mY5PO73TFFMmmoM927PNgz4YrMS9CV5q9rr0Zo24JbAJkHdHjq3G8u6PCNXn5Zjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736031354; c=relaxed/simple;
	bh=2tA5RWZTrqqXsMhZKeJI62Ae8urjCjKak/Mf642X4f4=;
	h=To:Subject:From:Message-Id:Date; b=UiOlU6TbT8j1U848PJo48iIXTrYUu571dockKMA+5s2PBtu4w1S6QkcarIP6cv5PTJ733Dp7ZfRYSTUqfqb1megPHd+RtT7e1gCsuRsVzuCPMYgAg8AwTc5IBskk+asCnzufak4PJNENZC3i4G67Tqq8UJsUbkC36m/vxNAsH2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n98Xw64/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n98Xw64/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07C2C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736031353;
	bh=2tA5RWZTrqqXsMhZKeJI62Ae8urjCjKak/Mf642X4f4=;
	h=To:Subject:From:Date:From;
	b=n98Xw64/fx2fglexKwIVDNPrrXi3fdHybFJaoHjm4QMDPi4R+fEd3LHsAAgLxJmrR
	 EYwjM2TaSqgKRza9JirlTAYnyk0G6z+eJxGiDUD0POGHDYQVV1Ae08a0ot9G8DbenZ
	 7VP2jMlnKNS68mu4lHKftncBTbt2SK82XQfoF/UHDuB+fd7DGcOHAEvGIjTiYsanRY
	 3VWmaDHKoFSKTdQAevM/Mjv8ZhSlSwKBlWZ0uXht5mCzohhaLLF7B+i6+OrI8jyYUN
	 NfUnBizqLoWoPSNXOWpmA5AGhuqkn3gi/Yk09DOYQGnD0nW8NeBQDa1FWz5ND6QU5H
	 RqVZvAUAtKJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A44E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603135360.23637.1454196370623395638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631ad6fda0ab736f2ef440e4f50ef923b2efe3d966345b8ba90225a22488a5f7
Date: Sat, 04 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736031353
