Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A60E573
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775911054; cv=none; b=PfMuDMhU/ZTwz11tSFD6caydSR5oym6f70OVxamwQRIUnzaDeSF+cRihdnQeP84isH5CZR1DELlE2BurstXUoV5ZQC3V92XW3Y0QP9GD5b43mxe1oJMCRzXUag9l70gCK25y9nXKvTLgNKeOV2aQeKQ2cJvvfYTFLzS0RWzhkmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775911054; c=relaxed/simple;
	bh=mBJiT0N3ZocLEzj0BDFWpknIwr25sHMox03CYgz59lg=;
	h=To:Subject:From:Message-Id:Date; b=fdDfuNmyJsoexV8ZA2WwztUn52HfO9wEXQ31VUNNI3Bqu5DqmXJ/6Te7yKs2Z57075LLyLCwcbG07RA6ii2Zb5kIi1XZgWsDvcGshUl58kcqrODXb6xLJKv4d8xOqL14gtoon7PHweuw2xX36oE71viIsbbgIUBSO1Xgp4skk98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkz+6Qbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkz+6Qbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CFBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775911053;
	bh=mBJiT0N3ZocLEzj0BDFWpknIwr25sHMox03CYgz59lg=;
	h=To:Subject:From:Date:From;
	b=qkz+6Qbo/XISb6IqdFcWrhy2SkkyePloNV7GQgjPp5IAYCMLyrsRTZLHFv+Pgvwux
	 oZR7hzazaptmt5xRgt4NIp59PuxAVKL6kEfoaLOjT8i6FGtF3Nnx5O5ePNXPqsdwYC
	 gdMt8ZLlHAr+l0PdOuxeIJG0p4AAKUyZ7IOwd7vVd28R1ku/Os3umEJf9cq7/gHjFF
	 kWpbrL7prFQlfEMAkblWxK1Tav8La4CFNgOo4L4RnU7+Fna2Wzff7YgV8IxN4L/PKE
	 uEi2kAOEOGGQ0hIzdeG8iFpvlPgX8NjMa2VXml9tg7ZUVxXTukfu19sKnifEoJ7JhQ
	 zTDiCfn2xG7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A5BF3ED4C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591105369.3527.15131720907406956300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615238a131466d0739d32070689a1e7bfc9dc64badae8b84cb5030dc40acafd5
Date: Sat, 11 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775911053
