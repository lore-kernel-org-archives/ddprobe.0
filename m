Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324E132B996
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761041995; cv=none; b=YZPMTOwFIBxosg1p7BBQSkx8edMlPzbakB1GTLVS7g8D8z6tXVh7BBLVy/Tv/f9yLr7pxdRAvgmtJuBvFvT1wkk6QzGc7Hex6j8xsXK6QGj2+JjecGfY4/uDEsvaxbcf0caQ/kkgf2cccN4DPYWAdMmgf0i6iWdlxBcMeAjLf0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761041995; c=relaxed/simple;
	bh=KUQN/aYqRNVIQDWeuTftkW3loUGCrpw24gngflk9a+U=;
	h=To:Subject:From:Message-Id:Date; b=Ki9L5xVvwgHIVZmazvBuIiSg+PuAhYHoX6aZn7sU21JsdvF8VlcvlR5hd4Is4ysJTQEjUBqTcn8z62zlBhrAnBQLfJpal85AViiuwpQgES4QvngygXRDPod9NQ9Rj8/S/FZQ0AW0nD3UucljXFvSANrFEhWXlUNWdb53+VQaEuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3Qxv3K+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Qxv3K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF287C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761041993;
	bh=KUQN/aYqRNVIQDWeuTftkW3loUGCrpw24gngflk9a+U=;
	h=To:Subject:From:Date:From;
	b=A3Qxv3K+kq0XTroKbcHU0wP7r2Y8fGCU8Lhs3P+Z1Fx8lKudVR4tBBduuQJWXib6m
	 xqaFkgznz03f19ftHHkuA4qPQ1t5ihcAgYYtidZmJ+sWKO26BcLSoAFgo9SDsEed78
	 7d1BZUOVL5k1JSEeW0npUwSAp25q3tJsrL9DorWuTFYZIflEkNHxBrka1AXJ0aVV4w
	 VORSa9T3SkA3rcPw3rGi9FeD0jiLKF913bD05LC8fJsQ8CiVVYB4VEfk+w2yEvU6FC
	 6YWl5gxd8nl9EZBycy9y2kGgkct+UPOAXpIoH32nVlukP74n73/91kXHAD8Hcp/Z83
	 HF6dykCbTck6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D225CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104199363.18209.10804244007157499777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d8f6c71dfd4aab39b35d026efe5059e4318c01508a6d00afc07704cb948309
Date: Tue, 21 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761041993
