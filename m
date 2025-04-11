Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BBA3234
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744345794; cv=none; b=bMBfHGcRSnrcI1waY1FiUog4KpMhK1V17gqk3PLFQFM4tP7aaaqBjM+rW5jRztfdJGil2aDEIAMZePMlMy4sfB8bWHdxBXED6iFaloevr2gQfJGeq63Gfh6tPalrtnSZRNBmXpDtdtLcJtkLmwlym6/kpZdYZjSuYP8ecyFm/44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744345794; c=relaxed/simple;
	bh=yOzOUrEkAhdCSMASjOcTPG6GlwWoiZmKFwQLecs/iAE=;
	h=To:Subject:From:Message-Id:Date; b=kJQDC1kB95PQRKYDguJhsWJkYoFPWMcWx9rHS0qYrPccbVEst+CtfWqumGvyFznZCoEpLR+nCD7Tsu80IATEHeGk19AiZTPOrKWnAiifjhvWGA+oMD62fmCH5grngsQL1PQYjaDg2/ECMiNuicrrwwhCqlt3Es1dqDKUgsr8CYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joFrKBCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joFrKBCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD155C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744345793;
	bh=yOzOUrEkAhdCSMASjOcTPG6GlwWoiZmKFwQLecs/iAE=;
	h=To:Subject:From:Date:From;
	b=joFrKBCO2bQwoOB534064lrVTJjK6bihlZVm2+u+uU8jVz5MRf9sm4p3/Cl9G3RB9
	 1Roc+lCfd+AV2/7602no/GIt/54iDTVbjtCzaaKlcObC4BTO4pzCrewNQ15kmvuh4Y
	 t4dwvaVAfy8+XiJn9qC0079mkYjwOrKKUhkszbOnXHyr+pBL8fiRlQHqqFSP9Dbhyf
	 oEVQTCaDD10EJUS321XiReaMuUguMetgzCvalaSnqmtabB7152ENSbshppn6NJGN8h
	 7BnRJi0yBIq6ytS7B8tDfFgcUeRfw98JotFxyZV9d266ShftUnir6IoE5vcPRbi018
	 tTUeDGXq5LGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97454C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434579360.2223.14803486547636719458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4da51dd433d4ff5283f6211ba301581b605b0334f31446acc5ffb5b409bbc1
Date: Fri, 11 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744345793
