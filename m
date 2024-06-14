Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B75A14659F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718391503; cv=none; b=SD+IldBRLNoDjs/WT01nkNGQl3c2sP92WmqkpDlRHxh2Faiy9snXMcin/fXphXLmtzT5DH8ew0s3aftA7UzKpsaWgYAE3G0Iq3WOvMkLW4amwUBXoYBwkqTS0pwS+a9Sh4RVDEAkdSv8Af27MdmiHGyDlnDqte3fVcSlyjSifpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718391503; c=relaxed/simple;
	bh=G8EwlnMSVXQYwfQk3nAZm3dNdpOyLEJxsaQ1sU4Ax34=;
	h=To:Subject:From:Message-Id:Date; b=KJCosEKxW+mTJI2GZFjTY8+z4FIkTyNKzTMLW3vSfHqat87HTaEJ0dFiA0DQuiZm4aQXmiwDVpY4GmjbsFEmceAsUYS4ZxVcY4vJmTzUjaZXG4on2d8sUIdLKt351wMsrnM7xchz+JZJp9hx223TswRdkhNDgnvNl3JsTsrez6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBtZQBlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBtZQBlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB303C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718391502;
	bh=G8EwlnMSVXQYwfQk3nAZm3dNdpOyLEJxsaQ1sU4Ax34=;
	h=To:Subject:From:Date:From;
	b=QBtZQBlomYV40k81uFl4TCeCpk+L80BUFB3/nHR9mwR8rfDPi36nLc6uBcMwGn8pI
	 NtEIj6jwNI9R8UuZm4oKffn0DUmIs6dhd/Qv7e3TxuhLNubvEmNkbGhy9gq6NinDUi
	 e4dReWNG+cnlh+zwYtgtLaYoN/7+Z4nyhJZy/W4vY1rGzAa4Z2N+g6dywz9W4D9xJX
	 OIX14RR+3mitwbvQq7Jb5UTI3YlxzEM3L5B9+dKsTd9vBL7AKLurkPiYEcMpSudXDF
	 vUxmF8Qys6dxRFbaG6W0M9Mv9sxru+0xazD/0He4G5YfZg6aVm9C6tvbyEZNEk69vd
	 tYst1Sr1BXNgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6CCC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839150276.28856.11218636588370952909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7983cd0eec46b7e9639081086d478c7482d9f32448a6a91df03a4987ff8e3bcf
Date: Fri, 14 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718391502
