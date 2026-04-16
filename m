Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19D36826C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776367054; cv=none; b=O+hNjiiItVtwFO0hllFkavD4JfKR9OxDPeogpWWxH4fwjs1uSwQqNnoVoEs9bfEGeWHg5f6GVdJxb3FPKuB0UfJ5J/Zuti21dFBsNc1DzcqKgTADnliLS4Nn3evt65BUfaACYIXA++bs1EiVprGBRjEejmoMoH7tOHV67d5lpIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776367054; c=relaxed/simple;
	bh=8B7CBQ8tPScPED/E2cGeGj8FGRM0mksxunEzBDBtbO0=;
	h=To:Subject:From:Message-Id:Date; b=eMMrpP50kp8LY70p1EzNdb+xKPdYNLN59yEgS94woutV/JHAA7Pnj0acfvcswsM37uPimn46HlInm3NAIQUF5LAHihRfItH8Fg541mxEfB2UM/aGvlTvigqkJrUKvGPp8idbENTQJ0GGtw5b5+BpJ5+ln8V34DHQIH6Y1kqmglA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qftnQfzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qftnQfzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6232C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776367053;
	bh=8B7CBQ8tPScPED/E2cGeGj8FGRM0mksxunEzBDBtbO0=;
	h=To:Subject:From:Date:From;
	b=qftnQfzHZQ+zOkUW4qdTo5aBd7E/p8Znm2wTv7/yjtcMQhLGyRRxHxchUtkafu6WF
	 rI9bebZuPcL5nZe6sqklbQxI69y3NWINnbU/lFlkD8IrffxAu/lvz56Ufn0ZvuYIi1
	 froqf+JGKspTGlAYOzfW+sZtal9J93W+Fv7m9ZRVfs6d9HKhsB1aBCA3WJyjIf66yt
	 R/nAZHfu2QuWqilQChcjn/o1PYOrfpweBTR37uZ9jDJveyOGFcsmlvZ/+aMVf449eg
	 Ezqya1O81K3JBITEF/b2z0tkPGGc8SbWjI9CgF2EhAGiRuT565XlQvDjhMXL67H3gj
	 iGxvGnqB8EnNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0DCF8D76E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636705370.11801.13662433253833427959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7269c59f4987cb307eeec3580c6b1ded64b257358f4ece8c2eb918bca0c68978
Date: Thu, 16 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776367053
