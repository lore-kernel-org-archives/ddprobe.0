Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8823A641D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783340314; cv=none; b=HnIUrBaPyThH2tsVeKHwJoz6G3S0S6d/JFs7zG5AiNCNVMDmHMHrp9RmXI41d4zs3MSoDuxUwJ6KuNFOpT6fqj1ZtKMVfja18OxB5j4cCW/Ta94vDkIWub8WVcSBDm+PCXyKryjHn7Vs4u8nVUblWGixG5XDRrhSHdJNnfzuFdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783340314; c=relaxed/simple;
	bh=1V4CUEQok/ZPnYJApg8xFCyyzvOfkYksYjO4WBq7Myg=;
	h=To:Subject:From:Message-Id:Date; b=HBVdMAIq5Wm7E1hBxLFwWTbqeT/M7CbdUoXOm1ITEpnFZumgXeVXsJoOx2aBtdTQLvZVV9ceoZLRh5oG7Pks3fhIEp7e+cUwCPfbF6t4gg3B7pJ5UYjTV+fZdAZGJSz+ymH/DJZQ7KLQWampKNiR39TtVwIC+XeT67nmStBVapE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTclu9Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTclu9Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB6AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783340313;
	bh=1V4CUEQok/ZPnYJApg8xFCyyzvOfkYksYjO4WBq7Myg=;
	h=To:Subject:From:Date:From;
	b=JTclu9KsF9oQauT9nLn28ThfAsp2ZLtYRXC2bdmhYmmMoNXyrumGb0IgFofuh9wPf
	 Tk40nYv12I46zTzkm/AXjUaQaFj2QZIpGvSQLzXQMxboe44RFcgklvo4qvJowIgPuZ
	 tnm9RBcaHl2l24grSB+RDUZW6Q8MQvaz/FQ/tRxNo/sKuIqCLP+ijGTcPq98wCnz0k
	 QjDQA5OkGT8GS4hMzMAJuVfUqcpff6uCPwHuhAU5Sy8PJYpJPSTHeykQe88eURkjaI
	 zOdYopH0iPckhqIX8X702pGdkdJSlfmLy04caf54ArZnrYyQ4US4gdrTx8DDqzD+ja
	 dnVLdO8+b5oOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86AC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334031368.28910.3225719242673960470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb91fabd49203cdda8f034cf2df40c5fd1a85951a629869901a322fe73cfa02e
Date: Mon, 06 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783340313
