Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74199182
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717459523; cv=none; b=nIAslpFUtPsw2Zb14zPkOcovFDa3KB4FZNnXSZF5JtzkHnDFnsO/Di6Ak5O3YKkG6MsIWn1E7f/i9peJ9nB2Ksn8epcoe72vWNAqnfRqMi05om/mDUzqTWydn3fukGSxYSFprVTm8uVcqGWBlY89siQe3LvRE22cVEDWZERrHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717459523; c=relaxed/simple;
	bh=VeJRtC5bqP68hRlOQmCuo2AelfX0u2Qk+o29tl90Hvc=;
	h=To:Subject:From:Message-Id:Date; b=hIKh/ICrYOLH/DSqqU7Y5sUc/64LARUSPFr8KWk9K528dV1rAFNJMaYLyRUkgOi2pNPKzumar1m0rITI178ZKg3wfvdiFzjfXY6SvgCTJb8uPTls+EQejQy9/RMJ9aD81mw0hyakFgVErtRSSRNo5K/iuTt5hJ2sgwvOpRfIjyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5E8mFxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5E8mFxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 038BDC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717459523;
	bh=VeJRtC5bqP68hRlOQmCuo2AelfX0u2Qk+o29tl90Hvc=;
	h=To:Subject:From:Date:From;
	b=b5E8mFxo5xd7e7AFl3XH88F6dwygc4Tt+rBNFd2utE1cxmqgf1CJEa/CQ1C9AnYi4
	 uQUjk2XUSoUE7haPKcwN2b1Cj8sBDGMEFevu5FQPieqPL/VhEdFXe+r9wfRevNNqBi
	 s3VaEDtV9iz7i85B1Q+BvIMV/wurBLQHqIJ6/4EQVKothO35LSQuS98iBEsHrl8ziY
	 iP63fWTAdV9ck4YXOPs97lPClUcu/gdA1P4naPKXuIQ2FKHDlIfVlDgwZT+8Q1ptEm
	 5BPdG+hPfblztHRraSSo6Kct1jcO3QXixlPrUVSIHmg8w1pm8VKyLTp3Truw9hN38E
	 l87xBRjyH3rgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBC5C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745952281.25304.3551100229454061636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30f89d987875405638266210aaaf68086cdfde496df41dc86b7e3bd757c5f9c
Date: Tue, 04 Jun 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717459522
