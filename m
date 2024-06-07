Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7D31CAB5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717789643; cv=none; b=HpE7ikL1U9PP/ISXoryuTB+ID2RnrEdWsd/bUFG/4EZrXFdBrIhb3wD7p3kPRaHwuzM+3059RMBHwg66WAbwzkRByPm+k9nJ9OLXTVnE7po7ahAtHpvJgv6wXhyezqRhXHIZZgyPhzqmTOVM50rcUZzfJ9w00vnQ6ev6gOOOwf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717789643; c=relaxed/simple;
	bh=Fbo9XnRsEYbHTQPGKyUdXkp54Zr6z3agd2yeaG+rqsg=;
	h=To:Subject:From:Message-Id:Date; b=NtXEq+mKR/b6U++runoTJhcdvCJVU9rGYNLMm5xQEMIMrkYIPrtTHWaynvsuENcE9AaHLENiIkjDtkE2cGOoZ/nx7v1BQR9dN9QxQGD/NiwkNwe4ZMv/Ecv2XbSXLN7/JklVT2kAc7F8QdbZYurAl8szmOsRTAsdv8ik5C+6S3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJkiC1kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJkiC1kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59A7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717789642;
	bh=Fbo9XnRsEYbHTQPGKyUdXkp54Zr6z3agd2yeaG+rqsg=;
	h=To:Subject:From:Date:From;
	b=SJkiC1kY1OQvCXyMrsINUKTZnC0aZkIBp/UFrL1I6S/qo79rvqlVeRpyEjye6XHFu
	 /vJdNvCyaz7hIbBwjvmnobQ1krapc9ezKv80GIyIOC0AO31ksQGaMh1gq6CQWRFLD+
	 PEaPkcfk9zasVhm1NUAbYzLxT1ZZiIN7h4OkN7onVE9FAqLGSuJp0RzN4jBTSADY26
	 4oeu7i7p2dp5YOiuzFdFdOe7GAFzMKhq9qdoarKMW94uZ1sLCE4n10f0/CnxNl3A7X
	 3a5fUFeQBre+MKVqzjeZkxxwY9GjQf8aSnh9KjNnO8NMafozVTYkr7D2hwHBgVE3Ci
	 0UwlQpPSKC5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1A98C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778964283.9076.12951293164745061020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35a7c2113e5ae63451068ee3db0cbbdc58abf94d05e1a090267d13378f8ad4c
Date: Fri, 07 Jun 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717789642
