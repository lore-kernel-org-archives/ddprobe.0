Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1153128642B
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774217094; cv=none; b=bcgrUZQ3jfJNi+hjIOw5mRwoJinDUURNCUhYb1KJ+cE2l23HmNglsW2U6E9bWOwaFBQ9tg0rY+nUbg955uth225n9bzu7XgLBbe558nWr6nFc/kx+lEoK/ZWybhv4OYdIhFcJ7lnopCP+bp0a+DWmxIJ+GMOD13hyNUfGfAHrWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774217094; c=relaxed/simple;
	bh=wSpBZqHtN/mKiUo9mcNUI09zDI0rXqBijt8VjB4r3Xw=;
	h=To:Subject:From:Message-Id:Date; b=FsCISDopW1IjC5xkkFGSF4GJbwb2NdAG8NxNkXdLoXL/bdK2dB7bmM4kRn3m1Ez0t6marmg7C8RY3xuDNnr/SIUlmzEYZZ5iBOqmQ3+zqKbTsilevLF0iYA2uzDXXs+cdKEMCqyqF/WYOp0psVt/AwuZbzcN3aqf2RxJzEdEPNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4YZ3BsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4YZ3BsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD0EC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774217093;
	bh=wSpBZqHtN/mKiUo9mcNUI09zDI0rXqBijt8VjB4r3Xw=;
	h=To:Subject:From:Date:From;
	b=Q4YZ3BsCzI1nHTPJkXiMZGEIVhDXddAKfmgv7aezdaXR9tuhJVY9NiG9y9/EnerMr
	 ++enDkT7emRnE2yKvQBNgPE1FpJ1zBOmWAJPQmugPC+yQa5F1R1kX3Qpf7yYQMnFvd
	 F396Tb0cT5UYOMyQ+4/zNq2P+YFNyzZRBuT7K//XG9dagoAfjADKy2SOuLymQeorkr
	 Q6gF15cZhGW76oii9+lTMfZT+kyKeG0vHjjaQmIL3wHdA91I3rb16WoYFHgIM/fy8B
	 KLS8GSPh258kfAVPFs3bc928btR6zJtxF11dLTxei6E/cZjUGU8f3hZpzmOws700Nj
	 Ik2zW9YS8JSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB7BD58CAA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421709363.27269.5899635548364669671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f066d99ae92ef0b549e4175bca8a1c7b02c0d8465a977811e087725134599aa7
Date: Sun, 22 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774217093
