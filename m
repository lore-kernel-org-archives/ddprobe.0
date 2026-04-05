Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4149B2BF002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775420734; cv=none; b=dx+ee4jPMi+0H7YllV25m4aC22+N27TAEld9sjk/v11jO43ZEfIIcf5T/1N06FnQddEiB0TNQDZDZrE+gdZ4Xt1d9E9zwjCafRecMg02lo32I3Q6+8GFpKlM+ycF2qOrUFMKq36gSyPAN6Z73njqYqwn44CZRz17WY3Ekuli2LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775420734; c=relaxed/simple;
	bh=FRxHrQbB6lYhJfDV8WNfVHW/fC8L5RzMkJ3n7QmPu2Q=;
	h=To:Subject:From:Message-Id:Date; b=jYE7zsvA4az8dNa+G8U3BmhvJN4lkRzfdWRHzr1vNGEbNiRMSLnvnTBBT8r569nyGku0iwiiF3eLWSJeZXssGh4qUP0u0PjfL/CEwrs51bTRmLmDHbeHH0lfO4HuUACT7qwofcevYRuZuB9mdfSKyqDcA27ID0VgBkJaBA85Fbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnDxDj63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnDxDj63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32D0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775420733;
	bh=FRxHrQbB6lYhJfDV8WNfVHW/fC8L5RzMkJ3n7QmPu2Q=;
	h=To:Subject:From:Date:From;
	b=gnDxDj63krKUjE9Im5jWsR19Essj519pAZa3H7eN5S8EhtkzCg4Si4eNuvHdcMk5u
	 WGjnog6oslzjZsP0Zr6/6hOVAqd4r8iZAI18ULLYJhhZXS//E2fND5jUUbW2qPfv9u
	 GFenwj9p0LAPYDa2vRNq6kebZhWHilMjmg6b1cGlNQeyBu1eTpfBzgs6NSrCcuPxMT
	 uY7xSU56EyRzl25XaZ4KkhroXYN+EftvuFaVqr4oiawCHBbdgu7xA+STMMIzSc8IxV
	 EScl/6I1OjER6e2Tnj4hndRj4OwlTwzmLZKwlNOwo1I0pub0NneJMrx0dK8OE+LPC6
	 rm5j3OA0RQ/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0056E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542073369.11805.7263840325004512607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1c301bfd726bba997015f1952c1cca2f157d8de5818dc2150969e122558916
Date: Sun, 05 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775420733
