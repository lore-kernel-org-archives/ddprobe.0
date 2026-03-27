Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF53343D75
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774583694; cv=none; b=HiDCxUkwSQkmgnVH/qWjqoc9FsTt3x3fq4ewDAgNdQOPXqUhM8aEfUW8ddajcUYVkXUYFzakin76T+O1qAVVmpGD5/v8VjZ3SBoyqee5BxWVXsb8Cormen81wa41+L+oUABSy3juTWf2k13h04lXSEr4QvZ6dmzX4kxmwzv/Q64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774583694; c=relaxed/simple;
	bh=oQY6NWOnPriwgWHARquhOCt/e69Nr8Lvi2JEdP0aywc=;
	h=To:Subject:From:Message-Id:Date; b=swltM1FHs9lNILkPFxXxmL8XxZ2wzBfiL7AUEcnSDoHwOvvsCEdeV4Z7wgNPR/BeM5dSO2XS3tK9RBgMpp+83YlyfpPwysLz5w/ZbWLwEkO/j9w1eq1dnNU2OuDk48DjpwBKuoD67b6/YcLCzBRr6XEfIst6pmpq68fFd8/s58w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHzSs5H5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHzSs5H5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B3C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774583693;
	bh=oQY6NWOnPriwgWHARquhOCt/e69Nr8Lvi2JEdP0aywc=;
	h=To:Subject:From:Date:From;
	b=cHzSs5H5ijIbvbGOP4w36iyVODfL8sfzZaADUGtmFvJ4bI2459ec7ToaTn/HH9Go4
	 5vozQ7xucnc6BR7crhBa3UXRHSSlYf+ehI4XDld2QiSPI4MFjLcSPMjajMjJsLXScs
	 hPttsn2sJJbK0rX0M4L5E5oF6BvIINkTQdKDhxlks2MAzwekFH69XCFFfKvy+jY4gv
	 qsLdaVOWkyvGKYr/wnqxGiZezOxrBp/fmdMf2I++HB7VukselKYRKJI69B/9Lw81rY
	 soHtdVsu/xwDhJXbHnZ8Z78En/a00YwqYdu3wpfTab1q3IhtBAc80/+5Cf0yFSTfbO
	 GwBlmsAyhyOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99327F532CC
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458369358.30366.6854196399556589011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77015c218b5659683597643b8d05847ddd29bdabbf0a2c6588a0fff33ba0eb0
Date: Fri, 27 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774583693
