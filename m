Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794CC424679
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784553514; cv=none; b=FJoe3+Do1aWDyazEZNoVXWsSR2EhuvwJMzXMGyInidMrVcWzQscZAPkCFz/pmbH6agx9UOm3Yq7qIRGIzf6XvWLHz1u7FERCEiVjELurp3zPKvRoTIQmgDgPvdU706zQKxJ4bMAT7EY32hcanEpp1cO1tnWWTgFPnV6+/Ep9qA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784553514; c=relaxed/simple;
	bh=CyhBYo9+FUoIB2vzC5Mt7hw721j1Xk0Cc+n24mCf+Ik=;
	h=To:Subject:From:Message-Id:Date; b=DT8xH+zp/bgaeuwekVqpuwuYF+oat5sRweC19wtR5n5ak8rJp0NMpJuT/06ufBFxW9n+2srNdit2BX0QlIk7myO2XsYjfortMuooztSEokV57I5PZW8MDG3L0ffbD5bLy5fY2Tta5uQSHMNcrpraxE3UVJP98NxJTBg6TL8q/dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWr6g6wW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWr6g6wW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A5EC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784553514;
	bh=CyhBYo9+FUoIB2vzC5Mt7hw721j1Xk0Cc+n24mCf+Ik=;
	h=To:Subject:From:Date:From;
	b=PWr6g6wWh9WIZoLVANWstHf41qFkjhdDu2iJI+prvAiu6MR05AtHUf4+n6cPNJhHv
	 4AX/aaGWpYdF/Tadi8POTKH+7bnDUE/HybZmYVI3COnbQxtU7GxS8hO5X7uc9L46l3
	 LhxLNxb+PIs/suIrrOT3m9V7MqAqyM6M+ugBmK+VK7WrdGFzyGdEKSSCEwczJ153k1
	 /LNZRdV+bcjixuJ0CBHSTQ2VvNRAENU9QZDKFubqaN4OBYsOPLoYwuwxAn6+7KDKoF
	 zR0K4xQ6SOjiEvSkT9s4ty+Fd1dQJT4mS7iuIbr/xwEGzwk1AIsfCSe744S2BXSQKm
	 250dOlWa82ASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AC2C4452B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455351380.628.883326189620033029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed162719e7e3326d28db78716ea8cc768f476b30f398b0ed9952e0388fc32fa0
Date: Mon, 20 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784553513
