Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ACA10957
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762387794; cv=none; b=GKcrzQII4k3asP/UPphrPAUPpDg6TKN+1ughdEhrZeWcZDxSjlCGn3mb4/+Rujh264UsiUUvrQxK8hxR6YhQ4+CrWauV+t6SmYf765BykxoIADsXrnQjWeHLoeS6gkFNpmDQQfv1nivQVgWHGtBLM03iyqdsfrY3ezUN73m23TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762387794; c=relaxed/simple;
	bh=Ckfz0rnGgqLHnL8OQURdRo3vcRAw59sQ+QLaZaPaMYg=;
	h=To:Subject:From:Message-Id:Date; b=SllnZpDMx/wgIh6oKhABN3ZgrFE93eh9HrB9sK64FjuMB+zb63dtZgnRJCD5idBjK44l90SkAST/87F/7fWzyUdjqZAZAfHu2TVU3eTu6jRXYAbBPxNl7O421QVbeEhEPt2TbhHC8Xns/19x9xdy6HoBxy844UiU3WvNlD2eQbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFmEkjqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFmEkjqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F67C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762387793;
	bh=Ckfz0rnGgqLHnL8OQURdRo3vcRAw59sQ+QLaZaPaMYg=;
	h=To:Subject:From:Date:From;
	b=qFmEkjqB40dJZpn4dllMOn9B6UBRwL5yoZE6zMwhs/wwoSUB8u0Jc0k/kTi0qiv+N
	 YPXmKb4QfCIjBhVAaZe+vkKvhl3b3k/4o0k7Kf2PrfhpZQJrX3x4cQkynIU7sEuOQ1
	 BA3pPMAxwemwPy/kQAQng4Gi+yO1fbAfwveAB+YE/q4hwug4HLoWcpF1y11m5TvpCj
	 Oqw5N2lFvJDQIinrY8yyQcaXpuKY4zrr2beDKJRwXxIKSTSs+5UfYhs9zrCYulfbpB
	 KKfFQafhHPfWqlHOFwkjlp/8L0n9rxlIfgNolcu1IP1hJlfw0mFOfMewcOcLy+IOIF
	 GYfdEjwy13J/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96923CCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238779358.19940.12135846765064046043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6dea714d66837cf3dcf8705348925f966afbafdb744d8a9626d193b5ae3c48
Date: Thu, 06 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762387793
