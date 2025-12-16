Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C830139579
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765919034; cv=none; b=flrhw9PRuLnyzMv2Ib+BdPTZ1a+V60rHZVtFaHukB1312bwC+LONKSOzR+w/XNjNvnVknRfhLjOy4p7yKcohq2NmFUIiv4kSGKJwjg5r4D5R4YApKOZ9P/zFJ+rfd/jQzXjDWnidiYJ1Iyd44HjOTBY58oS6RRpQcCZIlyI283U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765919034; c=relaxed/simple;
	bh=BZCI+ExdDMZUhawKvJ1yaaNkjv9seYoECssuCBeQzQQ=;
	h=To:Subject:From:Message-Id:Date; b=IJOPl9gdWMWTxLW5rVVRp24fZ2NgZug1dHP4SBsIJnWpc7Fx4NuBoaC2CGfnYWYq936cSifWeSs/TcBhxgtDa6Ci1AmzN+Rvy049aVhEvIwXrjp7fh+uq2rwgSHw7bkwyLvPQ/CsZO5h9BKmOpPorIOnxokgyPSkiMPFC3kfJKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2Fz1J1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2Fz1J1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F1C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765919033;
	bh=BZCI+ExdDMZUhawKvJ1yaaNkjv9seYoECssuCBeQzQQ=;
	h=To:Subject:From:Date:From;
	b=l2Fz1J1J+8W0542Z2wIi823Au8tVv7cCYFK5of+jXLRKzbsSUGKercZxO4+IJkVAz
	 BAaqQ4fhsAB73yjmHkq9i5Ci7wvM2i7t5UgXcuKBJScarjwWMNJmD7GZZzNkzYCStB
	 Abs5ES6/1CUnd6dQmm96/zz7xrECmRU5am4LrVmt8XtpFZQLgPkG5xpu0vv3116OJj
	 bZO5PKtZAeVCL9XSCVohNTRvB5+rc28fjs5Mp7MKv3kvYhAw/rwwnO1Yx6L4MjKZTA
	 jmK2CJlQM2mihGAEr+7HWY32kMjkg6J618SgTLHRc0lB/B3uP2nvzvS8gcG33GsBy0
	 qFJbC/2dBM3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9784AD637AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591903361.18517.2921916306947029926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c904da9a5c4db54c39779f844e7ee0b4e73f12f64d2a5a4f6eeb7ec04c4e34f0
Date: Tue, 16 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765919033
