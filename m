Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B261C6FF5
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778233654; cv=none; b=uIbI2zlU00wRCovFMIoEp1VI1uP6JaBM83FW+zeOEpEDmqE75kfMkeACY/8RSwMGNtoRa+xk1+mJWRT6cau38SZjQecl1xK/c0N6q9I9CbJ12j2ukET+HM97IjRqsTdAeSioXR8HgIMrD2lidsuaYvdVT2KnSjbI9lfijz0hrtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778233654; c=relaxed/simple;
	bh=E+62DTT7lt7WsZmCsfbTf9FXWM7iIEisVfOOBR+Caxg=;
	h=To:Subject:From:Message-Id:Date; b=s3fX6sz5N2QBIkPd0jxNv1kw8VYqeukjPmuhxo2t38Ijj2X3+bWWmSDn3vS+sQch3uzHiHheUd/bt1JrZT/ueVbbaYS0Xn4KnvsNaosjqLMU6MRLsAcv7S68CsBQDRjWa8ZgQsG9tBEHCBN14inPuA5pr+Eiz62W+vY/mQw40V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7HKUIwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7HKUIwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2E5C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778233653;
	bh=E+62DTT7lt7WsZmCsfbTf9FXWM7iIEisVfOOBR+Caxg=;
	h=To:Subject:From:Date:From;
	b=i7HKUIwl+Ai8J6NqFez311zTCefkg03egQ1qXOqqY5ASBrP22PnrQtjNYxlqYJV3T
	 kzeCrgPVAn/vbrLBOsUf8PsbvqvUI5ZfKzvdhfeVNR7zKeJoKPmJ/4FGqqhoqxzecY
	 AuUrmVGZRdIY4K2A5IdWFUkIdlQdd49KOaMXbHhqzD3AuTggvdijG2IX1o9ze4tVUd
	 G8kXno2Can8slxBSYEObCK8M2INuUHCx6URPmsL5u5CFrQHAjRohTjth0RWzTAgVDR
	 CFZI+KtVX3cqQL5dNYIo3mZH1PnThZvVUVqIRAZIdhvGWOY7XEgjCgzsr/islR//YK
	 FcfR2VRCNRRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA87BCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823365368.18511.14979878547612743287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a8e71a421fb30e415452cf8b4fe03d2b449c9e807748e684aad8caea412e59
Date: Fri, 08 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778233653
