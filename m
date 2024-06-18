Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B5514882B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718732963; cv=none; b=iu+MafodQbjfWcMXnMkncWmVnbTA+kpT4IbiCjYaRuo5NXdi23cZZ+qmpkHpuxwVphxeR1uFiIinU0FRKeVy32AVBpm3T77i6c/oRRycGMVyF3Hg1FCBoY4uokMgLDrEV1hd+PmzLisnjB4yFnaqKMkxbN6rLLYJwpTqSU9eyTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718732963; c=relaxed/simple;
	bh=kaaBMbEIi+e0njXBn/sEbu8kpp94zcF8Zp1LOsmGL3U=;
	h=To:Subject:From:Message-Id:Date; b=m6ySXXucihDFLsRkFfddw+x8efj8Q05nC9h6/b6jy3RUP1lqQ6NDycWfHs+vwkUrZSyc5ax6tjqndDimYBWNo0SLrKmH8TIldgE9d/CzLkQQIv33lmjKtnvXqlDyJXjYA+YEWoGgyAFKao+81RYrTSD+syCrhlquLHmSp66k/ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQcRRzYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQcRRzYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E84D0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718732962;
	bh=kaaBMbEIi+e0njXBn/sEbu8kpp94zcF8Zp1LOsmGL3U=;
	h=To:Subject:From:Date:From;
	b=JQcRRzYHkJCwaUa8yhtZjHPwHVgtCyLZyO+DL+IvoZusU1hLbfOfp/Pnmm9bu4dwC
	 iKrH5Hio0lB+Ld6SV0mGhqJmVo+evPsfK5YrY1Oc0iXLZxn21JK4G1OpJm3dQOTEbJ
	 pwCtIcUEcYn/mg3wyqigUCMIpu1eoP+PWkY7GLh1GgErsTv5MGZjvyzR7ePJHA2JVh
	 q/RUnhUa+o1gKB2FZKkAYiraXLpv8vtx3pILhbb29GiA5sujXrCYSNiQ47bjjH5lPG
	 FoqzS5gUitQgIcrYHOWiZwiQsZR5CxJV1dShe8kJ+jl6AIGCLyOjo9Fu/clc5XA5dz
	 hXlue+7F32C1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF64EC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873296283.32729.8071387570806127680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c686849fc21c2cc39bdb8ae25141a85f303552cc487ef5c7938243b1f55d92a1
Date: Tue, 18 Jun 2024 17:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718732962
