Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC6946F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748914194; cv=none; b=EYUQvNDivq1x6GFFh/QqMg+qH2Osq8IYtdi50lOdRYrVdcc2oi7glafWypDpKGWvEIcSfiNr5jmIMlm7DO6Nwc9+x0vHMdkUD3ycnTW+BEE9uDQcJc99ShCEsfz6TAKnj9bbgx2lyxdU4exVOmEK4xOyd+4jN3Vz/fUC0itLhts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748914194; c=relaxed/simple;
	bh=6UO53CzW6f7umhsX7S7iqiv0SCtt7KV9/33isnERhko=;
	h=To:Subject:From:Message-Id:Date; b=TiGzWKueBbhjvZSV3HF1CugqHx9S/wKpXBbCeEB29Dsq5Cuaigu3pvG10dMCPrJdxVM0zejyZnMgGHjqOe4xLXPJSVzqZxIqnM1Vq97t20a15epo22k53dKuDyI/sjKc3vl2O6uZ/0qZSn9waznKqMMmgrPQLMkIQBAjSG5i/7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/E6U3IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/E6U3IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D7EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748914193;
	bh=6UO53CzW6f7umhsX7S7iqiv0SCtt7KV9/33isnERhko=;
	h=To:Subject:From:Date:From;
	b=X/E6U3IMUnlzEg1J47p0RVJGU+GsXRRhSlGBjQZ6m7CZ30rFsqNDEjTvdQ4vCzEEl
	 prieFTybNwrPpDHlfN6Lxmgu/8ftQLCrw1LcxoYKuHN1a29BNONitC0yf2JVu/1Oa2
	 oHdzwAYkeVBohrjza/hxI2Un8SVuFoTJmFZ+a9haE/YCIAwRpmjWMOCwoaBwqHfHv/
	 O0QPD9Ru1bEX1+3QwiVVrlROyeJxD6FC6mTrQrzukJP7dTT1f2S1wCRLkCqYe3NHzN
	 /orwFwvuSotKK+abwBSLaIdMOrEqHL3wZn8tcSRu/V3k+9nQesgmmliDJDmXcjoQ/s
	 DZRTnt9wEQ2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E3C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891419357.11939.7130304769748837629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78ebe8b6825246a6ca61fc581fa0bdfe5b5cee4d561715ab260175e8cb57b3f
Date: Tue, 03 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748914193
