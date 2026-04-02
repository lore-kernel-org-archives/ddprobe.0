Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18053921CE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775126134; cv=none; b=uKYmm5aCLRk03iEAVsDaTJt2k7CNqwtQgHcHSPoeIywqjs+BUg1JHG+XubO1/eruWRsGblWf7p/3cK547w6SvLM+PEKkwzgdD7ClkX6fbZkDCpXIuSdRch5OMc4OJWKExuQTUKjCeS9rzO2aBwp4VqETt7+li7FUakFm+FNSXNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775126134; c=relaxed/simple;
	bh=fehrIoH82k8oXRu8Zp4TDzklK3l+4bMIjjH5qVXdwjQ=;
	h=To:Subject:From:Message-Id:Date; b=P8vvZm+4pEWO3WcbJ5kJos8COG16VhrYIc8yCRkt2bHdghlwkqQxOqNRFVKG2nLM5B3FLq4P1jT8qOAgjdyaXw59df/w4jOd2dzKgvP0CZKbWu2HtAvYWPbhO5n4ApXxIt7zwJ/XlXGB3CyyAlDgfd25l4IB9Zpt2YBPLxzm5/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdKA1w0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdKA1w0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84C7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775126133;
	bh=fehrIoH82k8oXRu8Zp4TDzklK3l+4bMIjjH5qVXdwjQ=;
	h=To:Subject:From:Date:From;
	b=HdKA1w0hiaHAFODhaSHx+MlV1LpydEQ3BUgbWDdOZlvz98ajexvayVvUli7XwohfT
	 dznguBJbansDCkf2XlIb9hGedBatSUzol2tW8TWi13UlChlIoJotMELGo/uHcFFrPm
	 sLeLUp93ENTw6yK4OLTdlP5EvxZ/5GDxQ+DfKHNoBkzsf0b2LZ0dnHn8nPdoI/zbT5
	 zMzyNiALq48pJC5Zf+6vvAkWoup22q6nz7RB+9HMXqMp995qLZGvS/j0qcjhjuQRLh
	 3zK5lsngpRgBAvIQn8SJ65P/lMzkJWRSzaoF5deBRwLKbm8QGW7tNBBiuDInzEUDm2
	 LRZP2dx+XnK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB48BD3940E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512613369.8908.18013804416544917739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e23ee4fc4c183547e7a3c776943141a473910c451e33a93159f15dc095875f0
Date: Thu, 02 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775126133
