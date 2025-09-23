Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4126C2FFDF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758652194; cv=none; b=eyFdCAW/tLPpz/z48Lggopq1oz2WRCh3mPOxd1KckkV2XYP3XDfoWscuD4EZPZCRsHKblLFFt1G8xThZhnPrSIFwy0FIYQmK6msqG2/iBjGJwpbD9jxt7EMgFQOyiKXEXp2JSnheUl47YfVeWtbFzzOYrBuTJX9ZvWTcYoKNKaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758652194; c=relaxed/simple;
	bh=RcT5AtFsPKv/nY9vRxTNyAhMAP1qsAVMkpdUH2E7Fso=;
	h=To:Subject:From:Message-Id:Date; b=on7l4NxcLXO3d+zp6P9f7OI1TFnSwwXK0kAIsSSEJzWKVz/QJ9XhK9DH77h8NTAsvIkIplaCGUkURtlWRihnXLE3qcwUF9ms1pT+h5vsCUMgUAFrMIjfLzheOa67hFvc669+XnJWQQq0iIV7XgA+sMlqrw2sjud0ak+eBJ4+s8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ7O1xK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ7O1xK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C43C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758652193;
	bh=RcT5AtFsPKv/nY9vRxTNyAhMAP1qsAVMkpdUH2E7Fso=;
	h=To:Subject:From:Date:From;
	b=fQ7O1xK7D3vxEHyBVIBPU9Jp47QP/wZjy1xmeOmIRgO+tblyxnUjHEQVnpit9XdlD
	 MNWab2uHg3+GEhdWi5bOaDHi5EFHzYYtAhTHYhLhike617y6bYf9I23qrOZ+0oy1WD
	 lCmBO6c+9hdkmfR7WXPkCNmVuUCn8D8PwHip6iJPjKixvjHbLv9vu8Y75BqwLNoLug
	 iOdjfYGX65P8KdDd9vYjGrKeviLOJalcJWVJePv3SvFaWnDJQ02jHLjR3/DrRwYDyt
	 Cpd0h2BgB3tNLiy3dqpFuw8lRFCfb0OFH7uKkM8dM8dagtV8OZnnmde+Xw586dXCpj
	 tKpUnB/XSOk/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9734FCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865219360.22747.16956076514512195067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8b2514686f49ec62fa860b11acdf79b24ac3973bee16c7b0f9752a20e9256b
Date: Tue, 23 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758652193
