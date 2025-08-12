Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC992FA0FD
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755021594; cv=none; b=HxLIOVlCt07ynX5eHd6evH517Qr9GLW+Ywbs+PqjWNrZHWKhiQaxW2xtO5PXbA2TgCGf1G14KY7k7oLZ1KajlhvjnGED67hMwtY5Qy32BjCsxRTKQSzzy6hbY8hY96HYemfGdgKrAte1Ui/z46piNz41tUfhzycn6Ou+tuUXkg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755021594; c=relaxed/simple;
	bh=aBpccy4iN6gIQxcwB9ocVFV/JdBQ5VmWKhYDWlej8Vw=;
	h=To:Subject:From:Message-Id:Date; b=o7M546uKwNnbTlsk169mNm1I0/2lyXh9imKK+z9MTLtMoMqO/CJzu7FtPv3HSwSixGoL2pK50kfkrEQITcX3nYx/vKANwMaZKTH8qbqKiKCrESG6BkDeLV964ZMR/hNjM0V5LLYSMFtWvBQO7vQpk2kqyLMAkSyGQSgn4CMN//4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mim3cBrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mim3cBrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98264C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755021593;
	bh=aBpccy4iN6gIQxcwB9ocVFV/JdBQ5VmWKhYDWlej8Vw=;
	h=To:Subject:From:Date:From;
	b=mim3cBrT0W9AhSFUHsSE7StMvKDm90/kRJResxDlalGvwDsw0y6O7PEIe1eLvNSmA
	 wKwa4oJi5qhcYMUW7V9Z3llbWedTuswCxXV/EvPVM45i9Z4HdZPgCUGdPAnuK8sfTn
	 Wt3KQFd9nENOdFZD/SWFMBp2rtR1pJAOi2Ryaugg9PESmN8q0/gjDFiFeU0KtJ3nub
	 AC0csMy3rF5TYNITOly13nQBVlVfEVIseNlyEU95i5oYgFsqwjyC82ZDg2ODLJnhux
	 TqsfoXEj2jI07tC1UHhv5qQ9PH6gSlhA7VnXztCuK1dQAZzuWjN7ebUzrtGu00rQnn
	 I77O+gGT1bHgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907FECA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502159358.25836.2003960464726728911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f4328c28f97bce1c58bcb60730bad6483803794fe003b225407d7c36c67a60
Date: Tue, 12 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755021593
