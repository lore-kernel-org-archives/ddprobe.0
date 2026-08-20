Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F79261B8A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787269834; cv=none; b=kG1gBlNUTxg9gdGFZ44DppRRmBMj1gesN6itfPX8dKqjV5LOks/Gh0fRSTgCwdr/iSeN2xtHM4UW0/UCmbEQF5AodKXWfU0nMR9owQAQKFFcG+F7Bq/lxn73WgguTQ9SEltZysvwyDIdpNClqYEY5JxMpyXcSmcEn5dkdnDobik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787269834; c=relaxed/simple;
	bh=Q7b2pTME7kWkOuHPKi2abbsiUD+gy2gaJAPeRLQJjNM=;
	h=To:Subject:From:Message-Id:Date; b=BNA65UZZnL9nqOo6dH1CpDmHlsz5Fm6G76n94XXQYRMcRrtPmigDHYNGiYxVbzJw5xTV9L+HQ+Xjw/CLpVYZq3UUkcvZ7tcmcz2L0Tmn87S78cVg8Y6L/U1dAbxPAHu1EaZ3oAxxhaVEAiEf7OvYPfL39/dMlNoC1jq1BYvhMNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcrW2Cg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcrW2Cg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF85AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787269833;
	bh=Q7b2pTME7kWkOuHPKi2abbsiUD+gy2gaJAPeRLQJjNM=;
	h=To:Subject:From:Date:From;
	b=JcrW2Cg8YgWoEXDbrUGgPfMc70mArIQ5hQS6QKyrzZRLXAlKwZuhNCZt6oyLpYbud
	 HPHLTkDIvbTM3zCTpnETlgc2JiRvwHkJ5/6wikKSXUL1Aj4A9hWLTa7PvlQ3yp+2dW
	 r0LdJCa8KM3EU3+88T/uD9beAmrBclsj5d1An7TBjoHVO5c97f/Qn+DWIM5015wSFM
	 FLl2jgaHQnBMfBDe25YGCW6QJBXf+hSXWmmloz8IPyHMDiE+aBznATNwOo2hHXyjBl
	 OeBrAQwe4CNwXJbJ12F06F9NW8bfQcdh/gQVSU+OkTGpjLJtKMO40E7CMnsiuAJbHj
	 U81kyPpQ8PD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776BC5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726983374.19663.1191046102784366989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae8411b920ff6757be0d987a13eee9f16e99721f8479b24028ef2304ecbfa6c
Date: Thu, 20 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787269833
