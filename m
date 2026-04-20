Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E291BC08F
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776728854; cv=none; b=XN3NEx62D1W5bSHzVbcGQp7z8ZWhFWDRWQSkJqJbr3PxiPobOPwwHlLKbbNpPc/Ju4S96sFrfXI9JvKMBPZfZu30ah3eGxSYVn7Wj4LDw+ofkMc7pkpg5gCKPqgnu+y7tKUZ8N2pl5G7N7C/jEYluNny/LBxEPs0XYReGXmVh0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776728854; c=relaxed/simple;
	bh=9Q6gc9wusm837tVwhI2HURybr+bHHqx49iWlKNCyt/o=;
	h=To:Subject:From:Message-Id:Date; b=oUuI+ehQakq4vR/j7Y+dpRZC3SV2qsBlukcnu3Ghdx17c6/b+J82eBB6kQuqS5lmoLmfnBqc1pwLaEnFyJjAPsbWpD51a27cNB9MfMqwLBwwz/Kdt/iRFCEQf4fyR/gbm0A2kxL4g5frLtQBGgOqFSvZNhxBOKO9fX6K+3uuie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9bA/el6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9bA/el6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB909C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776728853;
	bh=9Q6gc9wusm837tVwhI2HURybr+bHHqx49iWlKNCyt/o=;
	h=To:Subject:From:Date:From;
	b=I9bA/el6Ou3JQ9JSOpaQEnY+lOSWe6WCXKiwgrRuN2k/eDLVhfnIZXk0vHkqZcFtt
	 OFqva2A3BGEWaqkq98uT+AGPsF4/9j64cGd7QOPNjG2cBBB2jnbknQXg8cquKQcapc
	 MNG2gID7GCnD9cC0WPx51G1tiJf3ChSgou4dRygeVKrnTa75pAfydYSxKy0MG4WKUq
	 J4S898wkDyT2BEyPvBZBjHtr/sGfUpLNsKq2HCm1XZU/vRS0CoGDoWCam8bhbgdiIg
	 BChrAVg5HDXn1y+4Rr8nM2N1WqmMfsMEU57uIDf8q5zwsrVHj1HpCuTBg6nNhxPcJ4
	 PxuKIXdkdg2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C2F5A8CA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672885369.15710.9722290800180605401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d388ef23b653c246c68d74316012e253818d8b924fd901740e8d26b54285b4
Date: Mon, 20 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776728853
