Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F4A36495F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781205994; cv=none; b=hGze2Mv0JTGGVf3SomRkLnz5Pj2R2HRtPsSed001QcssVi4DY0GP9Lpx4efROVQV6SsKJvzaD1Apn3zODb0O+EZuGfkfpsuoZInrAV2hPmxjhIElDtn9HjfTbd/eKLhvyuPzHLT2SfsD4ifEwIjxCB+6bOUoBsXFhz0kL7MxRRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781205994; c=relaxed/simple;
	bh=/+DDoiZK3sfjTVEgnP5TasB5NQBwnO8RjVojp9qrMX8=;
	h=To:Subject:From:Message-Id:Date; b=P9qyBGYTbdsbI2uM29jv477AGaejLDLloBGjHaitpPYKRrB/LhsiYUZc1RcBkKAGiq3dH+fh2Pe2yUevehT7eeay6pPLKj100aaAm+ca1OMNe1EkYF7fOeWTyRkt6RhQGUr6GJOIh8JOal3wY8GvL8lXJT88dckfxpoZlJrGAgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKgtHetH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKgtHetH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D504CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781205993;
	bh=/+DDoiZK3sfjTVEgnP5TasB5NQBwnO8RjVojp9qrMX8=;
	h=To:Subject:From:Date:From;
	b=mKgtHetHVuRC21WLAZrkgsAMWqfyX8tbCv00hUHgPswAtB2uFAcGvi7cQRXRe9sB2
	 4k7QToNIK7C67dA2t+VL7PRWY7f9/twPTBcJBuoiuZbNHoNYOwrrjpitEM2CY21Ioj
	 b9VKAeDOlK3Ax9xadY1vxtLQ7V5YlMfDby3s9dX1NeSUtzM0II+BEuPYBI36OHLcw0
	 tOMBR1OVa+sFMTpCNpLHHo4ik2PI6lFaLZb8eTiN7iD1KwGNxOlSjDOaNNMNg8aX6e
	 RTNt673XpSi0QKXL6tjj3vsNqSapkCH6ydTRUg2iCm8IHLBcSIIwD5SmPlWd82Z0aO
	 VxBp9lwF5eG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55BFCD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120599373.9736.7801228208715942499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf6bd16a15950f09addb4ef075ed5f3cdcc4e711e86d039e0a8e89341a647ce
Date: Thu, 11 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781205993
