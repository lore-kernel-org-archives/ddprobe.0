Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5118B346E7D
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788613234; cv=none; b=dee4msAu2yUq1xc2ebwvep9jtwa58nzQH3s9aFDbAbqvc6Sne6uPN5qNbFcUUCG9phvtjRxng0vcT+RaylFyj+evui1HXtdOxcZAcxUSSdLuuDgVPjqOFmqUUclqo2EBhc7WwwBEELfu7BeERblf3dDkt/xitw67FAVh3j+ClBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788613234; c=relaxed/simple;
	bh=vpziIt5Sb6ecYxHpvmeE5TvD4dE4zmW8KH7SecGWBBM=;
	h=To:Subject:From:Message-Id:Date; b=ejEQR1e1hTpcjJ/r8ZBSq+qnWJVhyQLtdSgA5cwNbETL6cstnp0Hv1/dHQ7Iis8v27ZLpR2/hSqVSWSu5lfdpMVk7Wq4pJcoKvpcjnPwrj8hReqm3N0EdU/TImSzQ/MomxLzJtMxzu7dSBpzU8cRNUJadKrI5IjFBg5X546MGIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgP8NRBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgP8NRBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC003C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788613233;
	bh=vpziIt5Sb6ecYxHpvmeE5TvD4dE4zmW8KH7SecGWBBM=;
	h=To:Subject:From:Date:From;
	b=mgP8NRBAP9fd7z2bGSG4n77Yh1ur4nVM7RWEHFFo4AFOFXi8LWXQL1EkNV7Tg4Puc
	 soM8JNAwPvOzsnWJdhk0xUkz9TYnTQgNwCz8zCTHG6nA1hGN6rB3ISY+WzJhHMgNNS
	 CwWGi6QyNgWMEq7ziu+nPLjcrcoeEmcVxu/vai+6cS0RGv0TjxfLcL205Za/Jt44ba
	 gurS7A7x5Uc1+IlfGDMj2bB+onPzNHTVW9hosCsuBk/Ur8facouA9SPXydQ6uVwEhi
	 8s2eYwi8WytmsT/2JbhcOUF1zxFsZSXo7833uIdJG/zdRBN3ZOTxB/uGn+Ow4/Kp7G
	 YRXu8G14bxy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF509C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861323369.23002.8298496332244604385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6962918fbda9947a569e93c5cd2b05ac5e73b97ea6dbc9a24d569888fb64304
Date: Sat, 05 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788613233
