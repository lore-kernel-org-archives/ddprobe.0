Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEFD3B7770
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790515234; cv=none; b=subxb0+4AbED8oJgDAJafrTHlEn1foeVuv8fdu7smI+R8h5LeYRJHibrhLVpwaPB2E7Bp0BkRrOYLH6Z1rYUucFYrOFQDzBHt33TSTIoMvLEWKPx1QXa67jJ6r/Oz84cbUSXXgHwwj9AOZAcsNU5ta7fAxb6h4Z1Skn8X339jD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790515234; c=relaxed/simple;
	bh=IFbaFqt0D5uVCvcHOhQziI0NEVZOcZldlqtIoEAt1Ck=;
	h=To:Subject:From:Message-Id:Date; b=mthvCHMbF0BX2yjqZ3U7pHGqpNdO1dAyWjrVBtWV4uK8jt1YXo2aJZUv0qy2qVOaUzk/LdzaMj1a6NjAVlrFIfE0TdSfe23gGDLL7st/ezMHzXH9mzwjAxpSwinRRow+MBdrwo/c3VmyZAtGpYoJQTgvo3G0UtiQqsx09vhhW00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDAEM4cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDAEM4cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFB2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790515233;
	bh=IFbaFqt0D5uVCvcHOhQziI0NEVZOcZldlqtIoEAt1Ck=;
	h=To:Subject:From:Date:From;
	b=RDAEM4cXHkGm1BvHohalXX2dUxwY2b9vCbLqAJjbr9wBPZLlUISTsjOS+9ZqNBtHt
	 5/6IxwRo2pwDoMBf1hP0loUiedfL8t/oyh6kWCW9deUAZ0mnXE1rWwN/A5xfYKCFu7
	 U3wXqY0T6EYJCkGb6Tp+jGV/gTOkPhl62GqEB4wZI6NbW1DHsvORFQqC7urqFggAJO
	 iIEAwpiclKEoVvk8iG4eVr7PRvpML2j5R4gxBPm2gFduI/DAPylEvjajXlfd+n8Lxi
	 /lqpw0TCP4nGVG4t5pH4be6gjP1CwDCNJfXVuSs7QU75s7DjRClbTAo+7QZBqBJ7hs
	 7WGSP5AqtWl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5FAC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051523368.9582.11318028177791584660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2c974814de0e67b02a44c2fe68a9da7a042227174095c0edfbfc9e77ab1124
Date: Sun, 27 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790515233
