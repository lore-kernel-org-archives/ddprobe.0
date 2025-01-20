Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385FC10F9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737389154; cv=none; b=m6GPxmP+NQ2UT3t94Q2lgBFEPVjEYpON2UkQOnpabFJZV7tMh0z0UvN8wpc1pHzU/5vOVfazAnbSiKnI/T5TzD1WbcgGbm2/QF+qhCvqQjQOmDqpNNxxTZrnarUvoNYuxAq+SM/jrddctcdFa9L7iWVIpL4GMcU8ry7JPiS6tBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737389154; c=relaxed/simple;
	bh=57Kz4GzannvdUBaOUP6Ovj9rIHvwkN3pQ+jGAphT3H0=;
	h=To:Subject:From:Message-Id:Date; b=a847vIvB5qlSJnAiT+B81AfTg6CPnXt+GwwnryhLIldGEbIIsrtQAXUp9jqCXu8HYN+JkUKJvdgXX9ogxRaQb/p4rj3lvzxBd/ZhVTBRLihXAF+zZ2whGDsrz41qecplBx0d5zddrLDUwHuepQNjsB9JAkwP7zq4wp3SE51iqOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0z1KaRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0z1KaRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ACC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737389153;
	bh=57Kz4GzannvdUBaOUP6Ovj9rIHvwkN3pQ+jGAphT3H0=;
	h=To:Subject:From:Date:From;
	b=R0z1KaRs3FrUejNJSHf1HQnaltNiGwUt4HUOfJgqjG0Se5b+1mcBzQ+mxDNWGK60s
	 Nq5tZlFY6M3BrF0KG4SlRQblZsO9xyy4R2Koold3x+g7ogThZuoACSlA4Wg9IKyIX+
	 mLUge8C2S5tyLPoSU9rAGosU/SMQ9FjqFkqjZLUTU+pKDFeQYQjkDJ0VwynVp886iZ
	 J4pl3FlEPcs1XuOAxUt1aqQEF5CBqHmtx+Qn8cHmFZ/gNWMSMR2GGIA5tuTKxHmPIQ
	 4LxSJJ/ECQk3KTmDRDTzEFsytWp6+e7jnJQQg1pRQ3Ys7RFeiOm/1Wii02SsB7HWOJ
	 R7FABADIgdO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92168C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738915359.6098.9336165133289977510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11deba418797d5afe58eb55b0cccea71e001cbe7d94849f75f57fb50768dd4b
Date: Mon, 20 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737389153
