Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D7A9445
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713192563; cv=none; b=ZiWkIAsjCn85TouozF5XS8hN3WFCAHnfia24i7Uo2ILNdpwq4hY4fDcaOfoESDTgiaa3yA/b5z7Tg4PuXMkNN5ZKXM2Vz5MUNtq3BMFbtAhhaxMhrKnYq9AUR+msuwV0W2hCKrkd5dEqrZxIebPVU2o5ITNTOWqDxUKkELlZVpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713192563; c=relaxed/simple;
	bh=4urD6nNq7wnHa1KtIQ0GjOLRyjGHflS59aRPjgT5C60=;
	h=To:Subject:From:Message-Id:Date; b=uhTdBiw5Cx5Qs/g6oQv7qjWsWTrN/jGrpuIPjb+tDk7Jx3+5Ls02/rnNggOBFcDLU86WnAYTY/Gbhr0yzbhdppC+LNm9TmGvXwzigMOd0HHij5HZnJE4jTgL0e+r76njMc4f6KGWZJsHrTroU0dZE/hnPzs54hwbI2gUbaSvEKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNW/2Hkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNW/2Hkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C63C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713192562;
	bh=4urD6nNq7wnHa1KtIQ0GjOLRyjGHflS59aRPjgT5C60=;
	h=To:Subject:From:Date:From;
	b=sNW/2Hktak5oVAQ1uWiJ+bYA2Lg6cTv+3Lugx1w3LYbFejIS7kM0P7yVu3TYU5QU+
	 HcTSwWZjPBX37LjTnpfWFuFtq3pMU+GLJCRtWr8tbaXkhVMvF9McDrtt9r0jw7tUrY
	 OMjOBrXOOYzeTBvS3w/PH57xF8KJC8IXE/ToqAlj1o7ow80x0l6OpIvLB+sNOXLuQw
	 KkGttUO+XEsBZTtqIJIXsnRowDQAoUDAmm7rEHtoUC/8jqpj1turZhKiiu2nAh6VSd
	 7TUNKPQo1NnnPKetdaXQVokV99cAic49rSX0UBUtHD3KVo2SM0+FBm2uasooBE/Py5
	 6R8nOxQ8I50YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46A5C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319256279.3949.15077623964204159035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e1ff54108e0286d76e6896516cf79214fbcff1f478b4f78637646d3f3d452a
Date: Mon, 15 Apr 2024 14:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713192562
