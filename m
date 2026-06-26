Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31821225775
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782437254; cv=none; b=axo+036W4v8QCSGZbPmEGXmIOFh442t4t/DRRGTxCPCoUQjQdRaeTMfz5CBXZFY8zS3PhXGh+2bVC9ma+ubaV+2uOpHDaS2hmB5ztMwcZ/RIgB8EKwp877IT+c9ZECmEJf2ClXDNCUnwsAfT1NY7GB56TVzSXQDpIYsdHWRcr3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782437254; c=relaxed/simple;
	bh=spQlKHAVOgFrAIBCxsbcA+ci0UyGwRP75kvotqGAXHs=;
	h=To:Subject:From:Message-Id:Date; b=Wm1ruoFeMwws+mvEdrZZk4z7nG476SWXTXbBKYDQ36gpDi7mJx+B/OVNELY1V435aIqwvZBZnl4qK353+BnwVINlEYwayFQRafm6FkHucf9a9rsy/SpTbe1+qHmTxI9y0gpIb7soB2TImeu5E/Dve7/B7OfW6dprdEeGCw0FIT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j79fW3Mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j79fW3Mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C6DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782437253;
	bh=spQlKHAVOgFrAIBCxsbcA+ci0UyGwRP75kvotqGAXHs=;
	h=To:Subject:From:Date:From;
	b=j79fW3MtJoHAPTuE466t9a/XzhOE8WUoZHR0yLz9vL548NMEpVOJwnsQfQ7M1WBPx
	 aIFfVbQtnNNw12VIe6OGC7CZnPDNUk9v44CqGnlqVgn9opVxDdSwZum7ulZjBX56nS
	 ZbqvGrDOCi4PtgzkVdWd8mV/I7MCz/XEZxrY3UkrDilz9kWPdzbJ5mvKtlKmbhShkh
	 tMRw0T3EacQQHez+2KAKmOtDBMic8bTRrvbzqleMhcFDARoNq1Cr855/VOdpc0C6IV
	 f+RlCeT3TXg6swjq4T83K4l20iS2RtQijj4HAfQIBj/3ev/DPuSzoyMVu3Rq5ky+sQ
	 egJR2uBEr4gNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B41CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243725373.6931.3194116652595708113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290d354cecd9dfe4c32c15db546d6616122f296ddd7995425a58445f67736e98
Date: Fri, 26 Jun 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782437253
