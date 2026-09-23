Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC482F60CC
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790186434; cv=none; b=PtZtbNpwlmpCzNWeiakAFdtmfPYenBKcz+fsRxQcBINJPnC1KgUx4p64v4vKcQYABhJtwrGATMwEi6AI+hPPgUP906YQ1ov33l1J0UNfY9AodkoZR+lLY5rA02CbCMO2oathB9NE4wnYWpspRYRJmChydP6eXIGH4Ym2Uww5ZYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790186434; c=relaxed/simple;
	bh=GZ1UmBjCFPDliXXwhd+8BaW0QE6OyJv/ig6x+e0ZCVU=;
	h=To:Subject:From:Message-Id:Date; b=ejRjd6Wu7TWYIIC05jo2PzZJFfffIi76p3cO2PAWBBV3sI9PnFidkv8AA7kfh3LbsXIIQBeoBcHwDdu9zL4QGSgOFI0+BTsHy8eTBfsfTd2PJTlleEjRBn6mZO5KHPYwEt25EFGrm0BmQAmkV+M1gDRSL0NT0Y7t8vbwkT1BdzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5rHDWuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5rHDWuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D794FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790186433;
	bh=GZ1UmBjCFPDliXXwhd+8BaW0QE6OyJv/ig6x+e0ZCVU=;
	h=To:Subject:From:Date:From;
	b=C5rHDWuHfcVgERW0BTZCYq/mVUu0pLnG/hDM7HYQjumbRziICbrxHPnz8SUC/jXN4
	 QnJN84mzBBey6xLrarn8iRdXRq0AYyk5Xw/B65YGcmSogK+Cv1VN+bEOh/PC+rTwb5
	 mlC1Yd27CFj4/o/CXOQPi2/99Fp5bnh/rklzoRueMopO8iO/LLVchmQV1QymwZN+D8
	 yfwvLY8ZwdkFJX4ONcTv2p1apqAIBbwPhMWANHbT486rDNr8USS5vF9cepdPAZP7Y2
	 4kVRVY4awf2EP6UYE1XZYeHFVc5z0iiVvrVufQhihfjDkXtSbXJxOzmgGnhgRubDRL
	 1/tcp608W00VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB1C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018643370.28376.4633247434436905495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3481f072e8fae664ef5fb97450736700fbc7ef5d4049caea52052c8c6c6a2ba1
Date: Wed, 23 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790186433
