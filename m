Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF63306499
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678995; cv=none; b=mdeaTXERUiw938hshBFPOWXWcMmetH26z2ruq3kquikphsS0EtxIK0/W4h32vNnEKZ9ds/Y7RkXj3t63rRlnZroQyI0M/R0zqLk0N4h4iLysvRzE9BlfD549CqbxliRYxo01KWOQfAU3sjBVxGAgL0Jj4a9VmUeY0ej6uoTMJoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678995; c=relaxed/simple;
	bh=KzeVdYTQJP7qIdYVnxdF44dkxUKtLB3to1zhbEu5VdQ=;
	h=To:Subject:From:Message-Id:Date; b=DxKPeBhD93I4BxzzY6SP2EhGQTT4ua7+vPa2GaomZut85hKeCqqyn4JyhGP2bwpSrC8vWLZra4kr6TjsOkqJIAEz5wIvGsOVohaxXIU0B8YbLkCj68o+jGgm6c/lL22H2qeU2kifdAYzXrEFy/+/8mujZ2QONcCY5C2Avhxod8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpubZ59x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpubZ59x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFCFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757678993;
	bh=KzeVdYTQJP7qIdYVnxdF44dkxUKtLB3to1zhbEu5VdQ=;
	h=To:Subject:From:Date:From;
	b=IpubZ59xJrG+hfOCO97ZYilk2wgY46HWx/TM+ef+rrGebXjf8Yn4ZqoubkeeO0EUP
	 QiGM0dZcPtxXfG7GlWB5AQyoI2N3eJHyPHXlNEaxdKpjuT7CZtzY45/4JnfGMwVpry
	 aENzoF6YGRPsZwDE22PwoH51Q4IHLHWsKEqNW3Zf3l7tPJQaGptb4pixFEVm2Awno0
	 1IIdOVu9qlcUbL1oaDLISqJdZAxax9sFITNipWd40cCTSwPNdB5nolwznHhIJ845GO
	 gP7TS57YtgQtAW4ofqItDCLtpbZy1+LZ04/WID4OQs24PuQm5cQOrBm6fJ2FJwclTh
	 4K6DKbgUKQGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90156CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767899358.21564.13439920159946689653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257f78ea2ac0139db562271fdcdd1577e7f1dfe575970f5b2bf84c4ba585393c
Date: Fri, 12 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757678993
