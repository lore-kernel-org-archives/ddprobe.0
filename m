Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA334689
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743737994; cv=none; b=cLNkFzypl5qoDoVpCJ78lcPKhw2PomCzGB3W3ywNNdJ5JjfXhP2LJjD1wJptS0uPeBIoC6q5XhN9A7GsqYMF8yjVezIaupfJ6Taat4tj/Wg2vaO6f1sTu5i3xMGZuquT9MxmcVj8w01pu8mzxFR7mD290b4EFQDBehYdwlPMS2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743737994; c=relaxed/simple;
	bh=/4yDiye5MU0I7VUd+frm8PmaVQItwG+CD8UWnKpslNk=;
	h=To:Subject:From:Message-Id:Date; b=vBYKESsAcW2QzAY6N8BVoml18M9CAHMSRKp4hiTyijdznxJxPdatTFjTShnYTMg1B4vqnfaehsBWOG3hnx1cGUWU9YKPL3Ivf2ssK9GbbEBgnQEn0X5JrkpW1T39S5pSH2VPiRp8kCVm+8TxRH9OgueeLBH4fc1bg230kcnlnVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwQxb2zr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwQxb2zr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743737993;
	bh=/4yDiye5MU0I7VUd+frm8PmaVQItwG+CD8UWnKpslNk=;
	h=To:Subject:From:Date:From;
	b=iwQxb2zrF6PvP9P2IVTbQzaSRRx/WzROCTawXIWxgU9+1Am6axpk7uQgEerMAaIJi
	 TOTN9//2iBxPoag03yAzsFw6SxNFWEEYFxU0BIa/xVzIgOejxvMDKDxUGZbvN/+riy
	 LgcTJ7OfsvGz9TccGgy50fMVTPGAypjybBSlJBiPQPknOJgbqcN3Mmh92ugSdXBGQf
	 ozHi6pBo0fcbDL55ICIEWaxjX+fksxMI3jFZCre7cASpVUp8L6JK99wVTuyNnTcpEh
	 qXPpl/vKdx/ORKsK/orGB5Nt/FK1mS3AmN2i8wBiG9r35ze8wK+Ec0UM3/28DNU5gR
	 BfNCw7dmTiPow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9575AC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373799360.20891.7390373121419127654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5d5ab93fc18f8dc846e2b753fec7fa9c824fa09ccd239d378a9eb310f3c999
Date: Fri, 04 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743737993
