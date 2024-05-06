Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEEED512
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714956743; cv=none; b=O9X9Y9rSxQe0ANxzYQFNuexaSj/oUHg/P0h75YwBmec2WmltR9KyTQGxEzz9PjrsvN2i46EStCoxjd7DVJZekHTIgtyTY5ccgy6XIVAyztCCGpWZfMhwJHF8mLP9o78s+B5EI7O1Xgrop7wwbSUL8vSrAVTpVbfPyVNvegtE394=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714956743; c=relaxed/simple;
	bh=AoN6Z09yXsJG/t/7EeMyGiafORIwWDgDiJE77IDpswY=;
	h=To:Subject:From:Message-Id:Date; b=ETfE1qrui1al0smVfqhGkrTZeAqW6DHeb2fvmDkJLrj85ol+xIXGsUM77BltvRtRHoic5FPJhUXQqh3rgdO64s4GDNF3O0ll5iEmw43PERSkhdt42WL+EcjRCDfYfoOSLuSiF7SbcTTr/BBOmzoMr2Ywna5J450dpEIbbTYY4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB8UBfUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB8UBfUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEB1C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714956742;
	bh=AoN6Z09yXsJG/t/7EeMyGiafORIwWDgDiJE77IDpswY=;
	h=To:Subject:From:Date:From;
	b=SB8UBfUSnh8YRlO9n7RxmGR6CCvxksTx1+vfAX9XV4mNACwJ4+pMX8QlHJnsmHI/a
	 ZBIsYBM+DHstfxrUhl/BJLJ8ZfrGLQzb4i6TfHTzgNfWnW56oAxdCFl+gaK8N2Gbck
	 Tf0nWWoD9v6neo5GEbaqosm5bdoemPogMNqUzEtL9vF3auQNOc4H3/si2tHJx/p1lX
	 hXWTKDJCLsI0CT4eeXD4aAdLZK3KkrHcXHmbFB1tqaAsC/WnIl9Lkmq+r8TjMDBWre
	 kx7N5nJaLiRYQaIuHUpPylqEqM0ajw1t6gvfWqRYzcJxFkSuZrYjMce4tybeUpujIm
	 Qag95nS4OcjHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A78C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495674279.14724.9680931239501583252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a679c792197fde43abd53960a72c07cc38f9ca15b160d15688100071418c7f7
Date: Mon, 06 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714956742
