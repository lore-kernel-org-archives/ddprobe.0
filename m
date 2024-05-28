Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6DA23C9
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716870263; cv=none; b=cMBsD6/oqTuuJRPzzECs8cSTK6jHnNHN/u5B/S+IUEqFF5nIz95wv3ftch0Mje4g3p1UB5uf1rZxcGVQmhiksI/+op6HmfDAIr01abfcR1IGBVNSyDhCiFCEwvFvBgGeOWewR4uPlQ8+SCBqfhycbFoJojClFpikHGM/Hac4b6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716870263; c=relaxed/simple;
	bh=UAT+vO32yHZBV0MKEjLTZ0G7ldSKzWvMzdiZlI4slX8=;
	h=To:Subject:From:Message-Id:Date; b=qA1Pe6CCYHnoPAuzR47sibbFzK+i9kwN5htaxZdmVsmsLD8wkpXw/bLSaccHmVwwcHvOBcHwPfpYNdb2sWQ0oO3v1PWEH8bkXi7+apSXK2zvbmWQNYfFjUUib1Wft9rnFZ8REqxBeNAce9MHRzBOqnK8oNWT8HcN8bU5qECVJbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLTrq2Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLTrq2Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 195C4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716870263;
	bh=UAT+vO32yHZBV0MKEjLTZ0G7ldSKzWvMzdiZlI4slX8=;
	h=To:Subject:From:Date:From;
	b=dLTrq2ZfoZT5JZuEUHsVfN4oFU6KZXqmF1t42rTgSw7sseJpSf9HeuwbIUIVBw7Hz
	 MLUragp0i2A0JCsx9uFK9R09IZPuXNnpOceVdOPS8SZmqNrmEaX9IDwlljaMcwFLUO
	 Bz50XyZXiban8NwWQc224lNEoTh/DIZR6kdeogPBFBS099pVR7Hl8TE9ltYI7HxlBA
	 k/rUa3zDxgfgWZyY9b3H+msG8kJuAiU2N+sikfgRHkTSkvyc7niaUzD1yAnwbNlTC7
	 lyK7ibxYC2pnJMobyo/ysy3399PhDh4zsP1jBXQUjOI4QTMaN+yfXgbHI9Iqwbg70d
	 H+qq9nPINvPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE1CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687026281.26340.870567544622169725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903454426a50953139905a2aaf23a97df4ac8a2bc7c7a19061c6c5db5b6adfb4
Date: Tue, 28 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716870262
