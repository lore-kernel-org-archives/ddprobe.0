Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DAF33D6EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654694; cv=none; b=XILDOwo8DKu5wkuLB34Qrmf2JiDfxvuS2U0QLWg0SIi4aIhPscl2a3xMKdBJagiPLnLfE2KAnRv6ITCJnUXEacmACmS4z2YYQLG36tV9JZ2iHe7ozG9vDfYTX5y4o2Rc+W2u0M0VBUmNZbCps5G79wwgaPApN7IJhYp7bZTJf7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654694; c=relaxed/simple;
	bh=rp/TO5ciC8+P0wvGbIt440ExFWt975h8tZ7vsBGx9dU=;
	h=To:Subject:From:Message-Id:Date; b=lCI00oduGLRejlF4wkJb3FWA1BAjdfLL6RAeOoJ+KUC1q/s5NunkfwF6nYMLVUlBR/3xogyZwuy0hDyiXErU7X1e6A/O8rheg+urhtb8Oqr4ysEihCf71K2gSnwcq21en/P+djx42KijmKdC9u2eQ+MOg+aUGR7tU2nLJTuopQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/lojkMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/lojkMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDE9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772654693;
	bh=rp/TO5ciC8+P0wvGbIt440ExFWt975h8tZ7vsBGx9dU=;
	h=To:Subject:From:Date:From;
	b=A/lojkMiah0s+ieQOE60Uni0ZIujcKJYz+SrqAFgCdkAcaX/bX8rHadNV+r6lINj4
	 I9FQKTVYGdWk4NQIDvDpQin5ei1FiqZkAEMit8HT6KPLUq9r0d8FfDqmc94Q2Djnh1
	 cLSJxJ3OKvtlIucIqvoCPHU/sZ4K10co6XPl40KWgdCRkZqrbwCUH77GXWdvqO6ViN
	 I7xMr1K8IRrN6F+2M3ZQMKsAmmQD32QGuUzGPbG8vLEIaRXWUkLmYx/jpgol+w75i0
	 lrwxs5aUY8Xb5dTtEIdZDl1eOepc9Y4rmeH3X8ZUfK2r3yLpugCqTRGRTz5acXz3yu
	 Y+Ri6JgSHfw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1BEFCE37
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265469359.24347.4300632587622211606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951c6145d486c53d5b72772a31e5c679b4a34fef171788638f6af0b16a4ba15d
Date: Wed, 04 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772654693
