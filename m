Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5597D4A0906
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790263234; cv=none; b=nRvwkj0zZcsf8FxXj1vmI+ZZIKkodrJctsqpow5jzhhrDuFPrqVmaKo815j8JXGS3pXsbmv8JprBUbUwKar/eSCP5ui04OCLQ2BFvV503+2hZgsPaIuDM9V9BdcnkB8BwF7oxqi6y+PIokApzl1mrKrxyFPg2ffQESP0M7LQrtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790263234; c=relaxed/simple;
	bh=pf1woj+afniERQkHi0yU81ET560yEj2OuH0sZvG5IMo=;
	h=To:Subject:From:Message-Id:Date; b=ETBMUtfYEUYuBQqTcVQnQLIi3FOM+VW7qxnEdH8aczMFIa/9IWB/L3sp51MT4vJqHvrxRTD9mPl+xpasTOV6cAvgeXbdwNihHs7koc9R9Zms1VUYHKPI/kohWCe3C3DOJTGzX0n65Pb/GdBPMZYL5KcHaylqUc4c9DAv6MSWdTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbnGYmGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbnGYmGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB0C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790263233;
	bh=pf1woj+afniERQkHi0yU81ET560yEj2OuH0sZvG5IMo=;
	h=To:Subject:From:Date:From;
	b=rbnGYmGqiu36omlKYvQLij8WTHnmwXXfiJHN4Fa2zRNmf8NHJZGjCCoWNscXz0j2g
	 5EbePKRlCHzoTE8yQwPFfYEFxbqtcjXLSyXKbsfTRyh+UHbsp1UJSErtxKI9KzsASJ
	 N/7PBZt+mSzr0MPpPuyazIcEnup3uu8KFjdxTT74ZBvxaU/8LQh7CsHv3SGlpd8ohg
	 yqHF2X/XRcdsOmE48g1OVW1pOFH5obUHdwqArhDpYlddVA0lUdLIw/d4ImVSK9bs+I
	 Fkn/3hFTelOywE9sjGyAh7CLz7WKJWcpq4A6ut469zSdZkLtisxxUJY/hQB/qrP/bm
	 j/2hfjpC4KxVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B588CC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026323373.10939.7272924995208467153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b40804dd668edb8af42ee9ac5cb2f85f157fd0df7150ae450f65e91092b4f70
Date: Thu, 24 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790263233
