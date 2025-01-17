Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3274288DA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737077753; cv=none; b=KgxZ7ZgWo3tBvonVAB5fixcCDpa/xsvgI7ht2eHBqROOHpV70mUEhNy1ugn1t0srsYZB1U/35PhEEXP8DsiV+/9kIiGjirVcprOuAYFTpyeZBZaPOWzOmPsI8umHfaH9iK2l8dJKiTyh4CcQwC32Uit376/06v5qQ8sVLcHdNh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737077753; c=relaxed/simple;
	bh=dBWX2Jmei83zgF2SU3zW/0pql73bS8ct92TJ18MlVy8=;
	h=To:Subject:From:Message-Id:Date; b=Qd6tyMkF3uHGkNFGYOALEu40QSrmaj1dQVfqdotwxqdOZuNoFrQLcLRlj/8zqk+KEPdnItLK11bJco69ewZzojCgZaMbgxhQ3ysWU2Kwc2crqKDUVPqx9Ldw+ZyJRn4GBGQZc1V7xwwuvrjTfGj5WECcv2tlDj3dSeuNkuGOFNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck2fXYCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck2fXYCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A84C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737077753;
	bh=dBWX2Jmei83zgF2SU3zW/0pql73bS8ct92TJ18MlVy8=;
	h=To:Subject:From:Date:From;
	b=ck2fXYCeWDiTUnbCdUFI6E03mRszl1OolfUJGFE7vhfZV8ED02lFYS5MGh+pz9hX0
	 8hb/ncxyvdXEL5yLvPQomkjloapzhz4YChtZJYGIxE1wpJhcWJR6y33Ucvdsyd84Tu
	 MLBodflHej9EOOoNu4KLAKhI61EwhwGseaE9PDJ2RqGOMmamxN9G1mb8PCgdaB8cju
	 lrvpyLJ5rRj8rdT3pdhqaS5XZ1RRvG9m+M6P3BeSyjeciaCvsnQ8rshbaj3Iii1Tab
	 neivMYaP3Wid8R5kC14adAIBn3u8H8YorOq3DNQ5G19hRziGZKR0kmQD/pKPY38RgO
	 xmOYat9G+INZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A7C02187
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707775358.18860.5038643216557402145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027007a2bdeef2781a759031711cee49fa6c6cc6ce9e0ebf182db8356161597
Date: Fri, 17 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737077753
