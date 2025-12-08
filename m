Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7B5246BCD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765170174; cv=none; b=FdkG7TOSIuqSzBvWOJFfFH/zC/FFQvCHBXCdSoJSVqA3wpW5hAaagzOpB1O8iHK5rkf2L+5s3PYwyUznIfFYVFVZ9n1G1UfBoxTj/Kr+Kjz+MV6VwYwo9Mt+TIJm66Q3fPqKCezgVY3rBhYjp3l6dTRV7dy4c6JwHSJF9nCkrRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765170174; c=relaxed/simple;
	bh=P56OsNz6eicIn+86cR0OjJW1yk9ApXl16ADbSo06gxM=;
	h=To:Subject:From:Message-Id:Date; b=LWJF/pK4RSboyk/OtTucPPXK2qupJg52WxnFhz2v+fPXUxa/aeWkyuOD7Aos35ZFaD4LvZrb6tabkK4Ko18ztmI1eT7r3wA/grQLYSf8ecMgA/tixlgMQWxHDk4wt/KlpETKaFf9SYJcSIfgxy1BPyoZt1xCNJx1YMhoGia+Nu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1vtT2ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1vtT2ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05A4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765170173;
	bh=P56OsNz6eicIn+86cR0OjJW1yk9ApXl16ADbSo06gxM=;
	h=To:Subject:From:Date:From;
	b=P1vtT2psFaTuvrHvlAlinpTcycqxDfH/RiL9S07YGv6U3MkJlKeNxh8Fz361W6QUG
	 4bOu3ZjbR6Ujy3V8qzwaq0NZbaili3kcO7BkezwyaYoL8Tqcf0H2YMDRSi7Nv5qia3
	 j9c8WLhpfdo1LpFxtJWlnXjLYucb5MOq7TpWvcBBopveLOkseIF+oll7f+G3aC6rBq
	 iluIgOMnLjqgEu9wN4x3zM0Q+OWkjBghp5iMuafSihq9H56xRGygCF/YOtlD1pkN+5
	 yv+dLnkVXgTUcbSHGRqoa3mo5h122oFDxR3uQeIGq4U2p1CQESLRlkVWEgDciT+jjh
	 gk0ToG6MtN9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90490D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517017358.27032.737033870576180012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b67306dbf01aa9a80802d1f09ebd0c2b82bb1d075d412b9fc62271c03a4c3f
Date: Mon, 08 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765170173
