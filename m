Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF12E3FE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776050854; cv=none; b=W3v+/5iXXS5yglAB4g5hxLUP9boSWlL1sEwIwQZAHli/h6tByRAg61oUfMXVq6KNXuKMyqMAyAbLBb9Zgu7vGPoCy92mfHl3fOZlCMsyOeVKSu75U8VrwQVjERlh9SVX/QpyegUeVE0i/TQn87u6OxpVf2sxAjqusqeNHhyKjWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776050854; c=relaxed/simple;
	bh=WJuTeIJFwHOG0l/PaRHh/MVvRLL3zrGAPLKY3LdCsS0=;
	h=To:Subject:From:Message-Id:Date; b=CYe6Tu08J4V1BmtiYgPR65XZUkUjscrc4Zc/9mTJjpVExefGk8sgyR6rB+eqRK03QDp3k0Dzyr/Xp3TfPSODbnhPCRpHDN/dBXVYmcblquv4t5eqExaydINAuyPpm5GxSY9qAKD0fnfBF8KPkCufz0LZeeV0hhEhSrxTNIWUxbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8j7HBM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8j7HBM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB249C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776050853;
	bh=WJuTeIJFwHOG0l/PaRHh/MVvRLL3zrGAPLKY3LdCsS0=;
	h=To:Subject:From:Date:From;
	b=h8j7HBM/hWXBoZ79Q6Sd811hmNNGNiS3Gbd0ch7B2VyPlH0lEbxHqp1EDV1rzhwXf
	 Gg4LzUFzcScJH4PvxkO9UUngBhx5RaR3VPPsbRk2IuPOWXE1sYYG7Tit0JkVgb1UvX
	 3gk3OwIeXLzCEDfKPoLjipr2u3SvEiW8Q/CQXckA7oLtfAnsbhccAEvikGXYN6+hDt
	 +j8Iq8/H3HY2bpho7E/YywTyMAONCghiRFFmXR5Y0JDSH+C4XP5S6f78Y6sI5zvhTN
	 RzB6IdpLGc1gm5KZqiL1rGRyAtZqXGCrYr3ENDCA8uZFMSMDFBc+pJzO3N+zQO/wJm
	 XHOUzX8eOiFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A8E9380E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605085368.19536.12968043809801001459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000f80809bf8fdf77527ec5ae4557329adcd9e9c0ff364711ecff5d055d33bdb
Date: Mon, 13 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776050853
