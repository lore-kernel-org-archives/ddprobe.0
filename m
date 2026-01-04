Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE232797B5
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767551034; cv=none; b=oSNb8CElKclMFcjlBl4U7hWfKErRprvgONCWhYJDicm95HsP1Iu1nszetYsi06Ns5v9Ln5O9RcCxtGMk7e+6Pyr+bEXeqezOZwWg21hWXeDWGkZ9Nq8ueHmlVLC5Y02RtVJu4Wa4r7ZPcJ1hbNOtIho2eHQCTJX/tkdB1cZoAbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767551034; c=relaxed/simple;
	bh=so13tT+o3g79YJrU9kSlhkmz3oTIjz5mFzpqFrFXs8Q=;
	h=To:Subject:From:Message-Id:Date; b=gOaK5yGQ9QKlY/qBueoRaMGNBqt784m3pzCyp2eAxfWjj8i0A3nPOY5v0vxTOySiAvcSiHnibvoez0s6goBqsJGel3jBYxvMyE/h6fHPtmcrYwCdFkITDfmBr2xaH8W37PJb5d/YixOfzNNXdEJeTSMMHCWxYDTNk+5izwIygrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz9dJBVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz9dJBVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767551033;
	bh=so13tT+o3g79YJrU9kSlhkmz3oTIjz5mFzpqFrFXs8Q=;
	h=To:Subject:From:Date:From;
	b=Kz9dJBVUT/zOQTuaNhC1jijtmBuSFFSVktiM9ZCbj5yT823SdvEYsaV+8KCY4Fbgx
	 ogYRNsI3w/bK9ZD5JqWtbPNID5Mupykb3E2c0JqZ0/+pqTqWYeyJXzCPtfV9z0ZhbA
	 7fMY2OUUkwsAJI8Zbg/Cr9APcRSsY8JzPaUESwVSR538xU152qpC1nL+DXwUrZQoiV
	 vBoZpPxrbu9cfWvA5GQk6Tu6IrdYxbNEGxbxadAxcKzYiTA5BLBrrFmznW6+TgduJx
	 KQ7OInz9OWtwRh2b5TdhKx1waOItIrOtLVxZUATpW5xL+dX+J+9EBC2VVpy9bXJvvd
	 kzWjwToNYsH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC4C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755103357.10001.8264204549129896880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae4ac6bdb4360205ef6a8ba35ee9f34040585d574ba63ee3aee2a5b2ce4f7a8
Date: Sun, 04 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767551033
