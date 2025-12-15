Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FD2D7384
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765811574; cv=none; b=er5Xi+j6Wg+b7lyQPYeWS7/mtYV+0lXEmzPxkp5TST78lJVt+YdafR6KfWekfoCPLWCysvwvLDQHORNU+62k9/7qf4t3pmTozIMivxJHpdSCmde3t4NCqmehRaEIIkvI/knPFKmwkBo3+koxnX6LFfwXaKrrGT4nk6lL2iXVLks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765811574; c=relaxed/simple;
	bh=i9HV9PZh6wwG2O7VD3DQKb9EwCReeZ8Jx3yIsSusONY=;
	h=To:Subject:From:Message-Id:Date; b=REeva5vOumpNduj8uXgnT/K6nAZLX2wzt2xWC2yuO0TiiNmNt/z63LJ2xI1a5WKUBgKoz60hOaMSGvxCI6/A1kXxN6bVR96rKv0wSwlQGTtBTCO0hvLgnLoXFC2b5yVgDGnfzVWBmj8Uiqyo3DuDXj6+HI0iappBVUCOe+vKXe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skKe61w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skKe61w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A371FC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765811573;
	bh=i9HV9PZh6wwG2O7VD3DQKb9EwCReeZ8Jx3yIsSusONY=;
	h=To:Subject:From:Date:From;
	b=skKe61w++5+jLjNufKTKxhsL6SWLNjgzhGIeZpYek+IqOLs2t1FXg80KFLNa2PmWz
	 MB56j0AlW3jSK7I+PcjdAQG2NTq8/ZKAGQNbDIVlIMwiEq/zS5BQUK8sURGbvd4+Hx
	 CkeiF3B4pAn1RAQ/SgFuEYzJsSU55QDvbG4ZiGy7qi01qvk1AvGE6bDhrGwo3GHaOk
	 iCB65TC9VDFIewd93Ib6pUNRveR8crw39RRX4iAVEU5iG08AWgTk3lByxbKzArfbgl
	 h/dYZH4rmtEY1cxkCmmvsVgo7Vx77Cnd1AV7Srnk49txBN780gJ7EMost9FBhNtVH5
	 oCmTVIWbYSVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABCD5B17D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581157359.12456.14868733528907028458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350242d52c19006e5f17ecd4e1837dbb25c9e50e27e33e7b2ba8bf3a9d3e2853
Date: Mon, 15 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765811573
