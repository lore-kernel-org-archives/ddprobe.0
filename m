Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D01E87B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746835794; cv=none; b=nJM9g3VTaX9zFsvA11L+ajx/L937hoWrFy9pFfxw2uB8+F6/H4a0B0z1fFkSyHL3tTaW7AgSEQHlm8nutU9Eav9pMqCzHpRcJPCmTNMI+e/DOr0y4SbjrxmS/yzcNUILrCjYv42+zOHrRClY6Ib0j4swhvkrtKdOQHyZCaGpHAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746835794; c=relaxed/simple;
	bh=9/8NRoCnwRhIL9dZ/MmBe36QxkrAxUi75M1VgIok/7M=;
	h=To:Subject:From:Message-Id:Date; b=fvTmCMO0TxPZPZ+0MlXFUM5cJweETKT2o+4YfxYEHnMoEr4z8gkVk/q/tdCotLha0lwsa9E3rgxOzl2rC/oRbDHvJZpEb3cvhi8pgr2yvAJaWzczlvwF75rZ25XodlEfpVf8JAbO0l4t5juAeg+fZHEi+EXcXgciQgwi8fhrt84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIP0R/M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIP0R/M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D84C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746835793;
	bh=9/8NRoCnwRhIL9dZ/MmBe36QxkrAxUi75M1VgIok/7M=;
	h=To:Subject:From:Date:From;
	b=eIP0R/M063rLMaCyIKRFWIe8jbuUOM4yJfVLv0QJX5uPjjj6PwXIV1LkF2MZiSUS1
	 rVt58hTEoD4cn3nouPD9jlRcWUjDs0jxNItpbqDjvEJI1dQp3ZdxpBQ+ba9bwkw6RI
	 gMchYIzaY/lRHdMdnsWnT/nEPXjxSYlkzXCXwiVXQ7YXZYk/0Ew865g+SHHrQujLIn
	 Yi9kQPx6aVep0lZMeBIfXryXR5UxKt6qw+7EsJtqq5U4Gmtt2Ms9ccEuAV5p/+HTTR
	 YUjQ6k1Kq6AKwRab7Oxj2wjQ1Ix8T+Iilrx+XgCzMj5YXDUsGHhkqU0LIj4DzBLaMj
	 OZNoxaJl33S7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E69C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683579357.3230.10864305206684574881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e2ccdb416c12b16e4a48c3bef8ab43f2aa45090e41692aa086d1b45a82dcc9
Date: Sat, 10 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746835793
