Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E41581F0
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743324594; cv=none; b=lMNqj14IBQ1QfES6K8c33oi9vjfpz44Wt/dnpPMrixLlKIxnS0GcPfNdPJlcME5Wpd1Q9DN5XSLiiBwwvx/PqgIwGsFtwpbC+C1RoSnV1p5g5PdCoEQHPAMhh+Jw3wKsVwK/Igoxl6JNJGrTSLT4J1fK8SAbJm80h7CIBjPy4VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743324594; c=relaxed/simple;
	bh=vI0uP40c52bzmGvDUSFog3l6EQoECI+/4Y4LVKsAmy4=;
	h=To:Subject:From:Message-Id:Date; b=RxRUjA4ZGTBD3H46siQrJQh7rjMY0xaxadLqXZeNZb1Yea/ORdwlbtDnH7KMdz+vdHnInYtNnt0Jw1D0FDlwUdBjTm1rfp3YMvzWmHvgfl6pFPCGAoAifLQm1fC5Z8/w9nZSb9tZywbHBD4wMAqy+yd7dezg18sDuWrp49uba9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2rGNLCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2rGNLCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFDFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743324593;
	bh=vI0uP40c52bzmGvDUSFog3l6EQoECI+/4Y4LVKsAmy4=;
	h=To:Subject:From:Date:From;
	b=Y2rGNLCvgAUgaE3Q0VPlSehyLuJxVJnIi3Zm8Y+lYMQ45BnI/ccyr6bqEsWxSDYUI
	 0QnLHFQS6iOJ/Cu5wh9gbVlNhJpJ9lFBpUJOFt/E8GJjfRRrqz6vkBEHDdz7bfAyPR
	 ormaK8CaPMPSQor2iC2nnR+/YUiB+EHOlR8tGoHUuMInKtFOpD4nsRb1MoPiayzbrS
	 hG7vJ0quQB7vmecF2U3Kids55xqM1P+VtRT0i0h/rEJmpFnYay1IVGGCJEXOAq+CkH
	 gsZr2BOOLrNqauVg6aQkOPGlZw2x17q9HhKZr47vFmux6D7FlbHaDlutyiE4eQgQVv
	 O2pLqVGrXTP2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A465EC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332459366.393.13072357960561769965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee241f9402de814dfa46daa4dc52778d396714d100656efa4b88faf4ce0ad3c3
Date: Sun, 30 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743324593
