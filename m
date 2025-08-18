Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6551AF0A7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755476994; cv=none; b=BEo1k0ecEfQ9/L0VZlBALwxAGH2N/Y6bTEebm4Q4LcKxl47Og1CwDy7aVVUbKsiNastinkvUu1obIAh5jKG4RWgL6HoMyIML2q8iFzoFuHTX9zRhCzRax8JNjQFDJrovDxQq83HUdqel8qLdayXMARlxqbqKmwspYa+kb/5yiJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755476994; c=relaxed/simple;
	bh=hjPicS/T2mrqm0WBKD0zUwooTotr++tkoyhLLmHEReQ=;
	h=To:Subject:From:Message-Id:Date; b=psjy2Gy+eEUa6ShqJejo/+6bTyl81UnzqfalIy3wy3pGXDc7Tfm1LFIof16ZPQ5859t7yJBcBw3ctU26raPHehHS6/UVybaUmDScHhwhFp9VdEBo4nwzgwPcVUCFEAysFgQvkn+tQEJKkvxAnulk/GnbTx4te+y2nIIhdd2Fzpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipLtqrG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipLtqrG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CCCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755476993;
	bh=hjPicS/T2mrqm0WBKD0zUwooTotr++tkoyhLLmHEReQ=;
	h=To:Subject:From:Date:From;
	b=ipLtqrG4Y6eEX0Zck5abz2NpvSZ/t0R3s8AT+WTCNiTC9WQg0PAFC2v+HGTJfMm3F
	 Sl8tMwflU/5bolJOTzIMfVBQHg6GnkA15a3Wm/Ra2V/M0W2SSUYey5meFFtD2wL335
	 GOJTpjvXG2fy+gkCAS4ouBNLgpp/Tspwh0qmaT12DQOKxHFMm4vbWFHNHXB9sDFtoI
	 lrHia/EglmCFQ9Vy+Eljuq6Mp6AMOPRQLQSe4eRH3MNYVWWDIEA0ouYVrmfrt2TMb7
	 WPPgzAddhhMBK+vjdXtZj4HDl2nVHk/w5uZ69pZmC6O/wMHv9ICOxG12P+HjKTGqrF
	 kDrXKBxdKW11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F1CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547699357.13137.898975677214816768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d4c66993e98c850619e7734edb534183ba80b9365c2541864a704c58cfb361
Date: Mon, 18 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755476993
