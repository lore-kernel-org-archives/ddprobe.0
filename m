Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBB92F690F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789755634; cv=none; b=cHT/bDO4n/UnaY8ubXyXvFhwDj8dOxPXpUOsdEpCR0HOPH32KitySF46z5PNU7Xq1yfzRAOfJu80OVL1oXDbljgdWd3oQ9cx4p/slcssTwtjK5Fkl35DeLv2idjmUmWuubawTMBlzN9xxz5pIp5+pg7HENI7uFYeU6JyC8a8PjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789755634; c=relaxed/simple;
	bh=hMoC0Y391PfEU4PqhcT2RE3SVSct5pXLvuIapO4fgNY=;
	h=To:Subject:From:Message-Id:Date; b=uPqFX8iR8/nHIow1hJ4de0MWlcEEn0UHdld1axPztbKgM1spdIMKp9FlIgYppt67zuOl4lQOBLsV+chFA+nccoedqscbA98IavjoghEDz7+Qqj4NQBbGnUyF/FLuDtCZaZt1mTwhP2s+JsFhXpUbjV/I80sFI3dSTV653ePbq5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utnK7vIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utnK7vIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD8FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789755633;
	bh=hMoC0Y391PfEU4PqhcT2RE3SVSct5pXLvuIapO4fgNY=;
	h=To:Subject:From:Date:From;
	b=utnK7vIiEkArL824rig3J4J6l4Zdfzc0Q9iUpNrq1l05pIZi7xsfhpx9Yq/VIlmUM
	 5xCE4heFLhaEOWFA+E6zzrBRllpimIrd4c4lUrhGEx+EIBlQPjM4eIz6fu6Ml/5Xx9
	 lYwJyLSZkBAZsZlr50Ceapo26sLg7nyhnjQZTZ5M0/HQU6nefibA7WbykGsqHoSMGD
	 Sjp9ldpeP2oS3tpduT7+4xMaxrSvvow83uIs5IyXeMqC9h4+FMY0nIIvIdwz6ik5NN
	 ktwMT2kTiU7/rrVxBFnwJf2cNH0cKdaaksb2BTJ+5bPXm7ohmHtghGF+pkXDxDX2jK
	 V8GXqfzcB2HSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9CC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975563369.18783.16744365506670227181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607889888864fa0c5072e99759020c3ec30bf78accf7fd571e2ed01277a001a8
Date: Fri, 18 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789755633
