Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EEC22A7F9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768182234; cv=none; b=UvSKfTctc7ygq0PFKQk3aNmmqEtT92FG3B9Ez07ZgcYvMZjHLUMptZSzmxVx2CvWhl3WQnjFy/l0pICMhQwfPjbGgmcFITYTsxLdd1PhIB2wKz0TnZHxQuk6UVwvD1gMGmXyKKERytP3bohp+Uh8PtzaHpBnYSlyYgEgkWAwbsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768182234; c=relaxed/simple;
	bh=CVKPR+1Ag8e8dF2g6KBW2fHOn4QtuLJIHqTJdTO/Ni8=;
	h=To:Subject:From:Message-Id:Date; b=couLO1rORcZ6I9ABuMKNfm9Krd0XvUxseeWE6FG3T+IBB7RPDsEsKpVYY1C6i3Cy65zGy94pBTkpCBY+dWHUkpHGG8EJuCtDBbkrYZLQ+FQXUNhtczUy12kpgQyCzlDkdWYTpS+LoY6FBJTMSKlRTnBJOVde8hUnm27gNrzeHiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZtkzTx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZtkzTx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC27C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768182233;
	bh=CVKPR+1Ag8e8dF2g6KBW2fHOn4QtuLJIHqTJdTO/Ni8=;
	h=To:Subject:From:Date:From;
	b=tZtkzTx8yTLFoyMIEiYM7FuYUNJxAMDBLdWpIfwtKpMBjH/BgjsFLPIHOFAVg77h0
	 R+WRaG7uKSEZ1LJdTsS/FlOhLXQ/hVk8ZzWeEWUZifb2d2/X9Cx6MVjeUscNwI9423
	 Pn26s4ZMe/DMRi7vkhbPGJXGdxrj0jnoPb2+XNFA3sCKudGtST5gME/wUQlFOSpbCo
	 ahA0myGAPEfux2QiK4DXVyTQIwVCMCJYo/IBK1hFUNuqVNAZ84Ts0DzYE4+UU1mlxc
	 ca8G5YpV9Geld1uoX/qm0iyUZJ49KZkcY5wj8NUpFeoLaCQElyl3/bnQjs44m7zxPh
	 UtEh9yt/CmZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140CD25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818223358.7169.4402842624887914604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763e4785cd71af1ca88e59e5eeb33ad4fa9485bcfc0381fe020e32cc98f61c71
Date: Mon, 12 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768182233
