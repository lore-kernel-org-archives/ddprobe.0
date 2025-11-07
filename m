Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1650B30DEC8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762557594; cv=none; b=k9ns3gGXIpCEl0lP12fHdu1jXbXR4mGVNJzXCL6OQ8SpJbor2Tl1bH6BH8d5w7o6ixY2ET3bAqexm3zNF8K+bS0JsQqfu7b5bD+8X0DEVcQL7XbuK7RZeZ/6PQ+KiMK/RvqGsq7Bg/zYOB052Wj/MCA2MaGz4PtcnDPnsazWZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762557594; c=relaxed/simple;
	bh=mGTvHHuRC/quhoXbfO9T8+aRzarc75bsfRFnlqLIH88=;
	h=To:Subject:From:Message-Id:Date; b=UwI/9lhhYj6Awn+3I6mNmnM1eWiAAK5WtD3WgvfaztN4BvhVvZfL7Yxer8gwSGfOZ+niReyq73AKxQLWujrrQLSBGecaqnuDI68HvhxngcOOi5eUWEZjULT0gCAz++hA8gbjh7JbggAbKO5gT0qmcf3Oj9QdYn6dAxpj8cixziw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shBt40Rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shBt40Rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B1C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762557593;
	bh=mGTvHHuRC/quhoXbfO9T8+aRzarc75bsfRFnlqLIH88=;
	h=To:Subject:From:Date:From;
	b=shBt40Rhs88vn9ZQnMnCx8OHwSp3K0cAstgqzpJljGArcLX39kj0ol6afZiyEsHEP
	 CVmM3kGEiL36PqWaVeJvrTwk/VVHDCxzuGoXaryYKU0BtYP6gFZNNU0+7/jhQY8jPM
	 guLFOijxpOgKijXY9R3bEM5QINjmAiAOFPuY94VLF4pWj8kNRUb3ifoWCpGUrXi6UZ
	 Heyo3iLjznR+wr4zI4H/F2O14g0RSfyrfs3HZsWy7+Jf3QXdgZgmPqkf0eYZEPeKUk
	 EsA7ZIdvahHrq8sFpSE7qiIYvyaN0ge7dPkOjBPVSxQmS6eqbN2rZfxlybH4OfxYiz
	 D847foxLIzb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3BCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255759358.19668.11043168345740973328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b3f7d881c15f17b932e87e0da2eb84560c5e630765a5d5204c7177bb337c78
Date: Fri, 07 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762557593
