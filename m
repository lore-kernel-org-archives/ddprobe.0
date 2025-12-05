Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09033656CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764961974; cv=none; b=Z+EaMOFIlkEFXb7iYTjMCs/Vn3zmgTKpnNWWK42QLPdcBVDQsnVuhFL6c/LAPtujECBglkg+1Tjl7MBH4zceuK89NaRtDl0486rQBjYQYvaY93z6K0GqTKerq559TO/pQpjtPvnC/l2NKWXAMcPH3bh0CtHo0lRfF6r6KmffsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764961974; c=relaxed/simple;
	bh=bo2wlhjfVlWXHEQwFBkEdlTaZmtLYVpvmQhZJO6L+Xo=;
	h=To:Subject:From:Message-Id:Date; b=rN7bvi5wXJIEZEZyKIhigj98Ycj47/aBc+1/yaMcdCx66yEBLP5yw14T79OGvcpOWuDsyy/0BXRXkaLx+zGESbRxFJxtmq15cb12RqSj0rQM7DQ/bZIWKD2mEY4G7OiRDV/wtGFvy6iIdpklfGjWfIMxLFtRHKnl98vwUUxzcX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3+GAUFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3+GAUFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AF6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764961973;
	bh=bo2wlhjfVlWXHEQwFBkEdlTaZmtLYVpvmQhZJO6L+Xo=;
	h=To:Subject:From:Date:From;
	b=s3+GAUFdpzO+Z1V1z6CXJGOL4eQpY2EMtCY8cfrYlYA+A7HKj9lc33St7UFqA1erg
	 yGG6kqHUyhUXBa8Ax6sIpTev5F+iI3r1WKAIxRgS5L7+V+GO/0WaEQu6eMMsr9lpDY
	 B2xCdKnFXeJEA0jlyuwTSs6nM7aD78Oe3Fz1xZJZchQK+M+FhDwcCoT21UII5+RXit
	 aslWLViaE4RC+1o0oKACX2f39yRXuxah3fHf1SyikOHot9JZ7kCmGIziWj19lFUpkZ
	 8oXa0Qe2pEoH+CSHtHKEUkFIjcLT74JMxsU9ue0pFTXUZwnvGNXxDZsPtKnRnTOj99
	 XSvWJC9lSbRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94452D37488
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496197359.10616.16757293340082366483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8ec18dd6ef0f41efc56cac37f643f9966458827eb3de1e1bbcb55b1cf2cb7e
Date: Fri, 05 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764961973
