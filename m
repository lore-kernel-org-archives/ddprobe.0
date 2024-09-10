Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214771552FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725967554; cv=none; b=kxcNDoVU8Cv0oDhMFjls53lfTgWdrgsPA07k0efEzIzVDpHxAnwlNplmfVni9006Su4HpNzMxj3KFVHhjmqIQDRYkTkcRj5sIit+47l8FpXpaBkXnSz3a0g4Y3fpk45wCSfvS8T6OkKqZXh/OWdsrqGqyMQMyfN57E2urZGTl8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725967554; c=relaxed/simple;
	bh=UFIQQEjDIA9gyDsrCa8UmG0WMWaL5/beueQk5EJ58Q0=;
	h=To:Subject:From:Message-Id:Date; b=KtYLLtw9uhgoUPhKnkp0FO26JtiM0pyVczwk54sI1OW2CXpTP7+FqA004vI/bQxUbTT3tvEFH+FI4iFvZ8yFW6DkZ6i9y7slK9pTztZLuSFCo6FqQb06AMG1qW3n6MkM9sy2DDD6uanN/vL0/263W7ZVzx+erWdQxEGJy0BEKp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4sBVyFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4sBVyFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3119C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725967553;
	bh=UFIQQEjDIA9gyDsrCa8UmG0WMWaL5/beueQk5EJ58Q0=;
	h=To:Subject:From:Date:From;
	b=O4sBVyFFeseY4W3M0Lw5+lIajc8VDo5dVveMoyEuCt/0EnOcyzpUihwuKL+3t1x/X
	 +ubkS5XdoU7m2wEgalMurPtAMsp2z+Btn3IMfrXagL3CWQoWX8nsiXrJz8rvykiMjG
	 01DEtJQogm/tTFhy3Ssrn9SAhQ5g9xjw9I6b9dLJWe6xWyk1kEinShb9r6lGZa3Cb9
	 GZQnZxXV2I/LwZCt5y3R82Qn8xVSs3if6eHQC1MXRoecfY1slt3nX3i6qVRGFIihBq
	 t5oavDUeFwxRiwTg/lVJ27nFsU4WeEwGuQ3zPwEmF3ZsN5VZVIQ3q+0F0424IBS34M
	 TPcI09zvLE/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E17EB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596755362.13248.2012400709105743945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd67a805c61174570e6f31a9c5b43448c8ecd0ee238b117360d928ee08b4ed0a
Date: Tue, 10 Sep 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725967553
