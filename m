Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE1612CDB6
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718234303; cv=none; b=rwvpErKZH6l3coeEtgNuCQ1e5dAZ1zK3nfAkH5i9OM3RcxoSwyHZODErTNk7NfoAM+anY9RdCZCgNDJm/+qar3xcxCtnOAHFmlqe+y2a81P0FFsdkj6B85nSZwuOMaYs4aHyrfo5uQnXCcSPbQd8GPbK/hkIdStDE+azCwhKa0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718234303; c=relaxed/simple;
	bh=rHKJYC1DDjXVkT55YkJNH1t2L3+OsxhhgS0Z+lPUSQE=;
	h=To:Subject:From:Message-Id:Date; b=O+2sfTcaXaIQ9l7ucx73ZGsSDL1mRjSlfEpBPnKdq+vrjjOM7adGigcppaHHCL1imyyVAMCZ2Xy+o4PDP7q0zhM8OU+Y5lIisJoqCstkB7vcmQf8bQTHPT5Ioo8y46qMb1Bv8bE/bJrxORIDoAVCnd/+MuizAYcFr+PsgyCbCl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIuW4P5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIuW4P5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68C4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718234302;
	bh=rHKJYC1DDjXVkT55YkJNH1t2L3+OsxhhgS0Z+lPUSQE=;
	h=To:Subject:From:Date:From;
	b=UIuW4P5w/1Qt8xmWnK6Y4AFp/TTxJ/svwszCG9GI70q2Oa5DRdt+7MSwpY11KOgWj
	 uH9wQMagVue8tbpYO4rQ8xsVOQ+0k9VT9/TnCXXrS5nUWP+TT2hh51RJWeiiWZOdTf
	 tvnR+02gB1ydZRbyrpaLIcHuo/L/aM4a6Iw6HaQZGRUpZ2VN+Pkv8GsktrOUP2kYGN
	 J0+4mPdQQik9y6H4xNHYW1oJWWwsJNDuIT6GWvW0BW2BCqJxxGzqViBwLVOT3UwMc9
	 ThNltFYiJvX5K1nbh8K6P28O2HBQ61PkRh7e2ZJGwYZRtY19JFzyE6lfISXVSkqUxu
	 Jca+ERgS0D8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD837C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823430282.28240.6841382920916241909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd97b48a6cf5badaed8fb54629dc8382094406ea0706cf384d974141a06f421
Date: Wed, 12 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718234302
