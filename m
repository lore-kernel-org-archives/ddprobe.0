Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5515C4C62
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753879194; cv=none; b=aJkhlRpnImXqG4eiSjCG0w4BjGapWbsTNxBT7D3qKTNVCbT28BQ59tWJsE+OuZawGFgFOzUF1BLu6ImD6124OzrunV94d1xUkhCCBp5ALmyyfj6LeDAVuDPzJCWQYTHhbHdyTsRiG+DNwwgfRHr58kijZMes9olNbVZPt1mUKZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753879194; c=relaxed/simple;
	bh=Zj0TsD00piCqnH3H5HryaXUJXtzJqXTNJH29Ht4L/hA=;
	h=To:Subject:From:Message-Id:Date; b=BlSiYVKAOgKeV1q7tbylMtcDS/6DQS22Asnb8kdW1bxJokAiPXVbVya9LRG6fU/UfXilSRSgMb9hi587tMkNPTkQFUSHyASs0BxkrMYbvBMK+wWLXjrW2Il9ZlaMp+HzZH0vHIs/mQLLKtMJCQrAsjeoYJb6JWKZMIYF9a1wTIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtPAb4Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtPAb4Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753879193;
	bh=Zj0TsD00piCqnH3H5HryaXUJXtzJqXTNJH29Ht4L/hA=;
	h=To:Subject:From:Date:From;
	b=BtPAb4Tp3UCuqcDvIgHlOR7zZoNGXj04ZV2n1rKtLhE+vQCy+y0Rh6vQzM2MDF3xV
	 IASjMDZjNnT9yStM1A3grVNKC5uVBmumJDy8zl9qrhYJ37SQyBS+XE9sR6jSnAF7JZ
	 0zt7mU16T0UIZwoX6FTMyETqES41piGwEq572Wideo7C2Z7U3f+9C54iv3Na+DGL+w
	 0IgOUVngYnoubvcVcgcFo2BtqD1sMxqvKso1oEFhVNL5cdWRnZ/KpuLatbaZ67JBj4
	 9T4yIQEXYOhAFj2ZEFvh8moBWiDzRP2hYssTPRe5dSFTT7kD1KHi9a6rjRJz+Gyma2
	 /KSFISMGM5OWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E8C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387919357.10126.9003080671537442537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a2fb736bd832122733329481bf52f450f4fc22e7efa1f71be4c4a9c760080f
Date: Wed, 30 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753879193
