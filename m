Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E30D290F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748712594; cv=none; b=dpZU7llbWhTGCXpcSI7T6+g9ZIg1O/UCzOAS8U/PbEbAFg5igJ14H1REQuQqpoEOb9ZJPAm6tdRdps5Ql6SPt5cKReSg465mV5TpXszhyowS+RNTQnWAjyGwqQoyaSqLjG91gfBAVipT6xtuV3SrmwWMlHipm1DJr/ZevrE3NUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748712594; c=relaxed/simple;
	bh=GpZFojZ5vJGBhLPhEdOPOt38AbM1Vt0dKp03Gv2meeY=;
	h=To:Subject:From:Message-Id:Date; b=pg8yxERt09KbZHYRvpoyRVVPlhMykRRadC7TinjQ9q5ISIs+1NJl2Ns3IDI4+DiiW22yoVDpxDji+vt4L5pVpl7ppDMr3V88aVrC0+UJL4ViBoBjilD7v0KKmOq6VlbZ9VzATOTaEb6Vd2VuDHOYO5PKFB/aqVkk/2iuoKJ7g70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5+qCV+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5+qCV+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF42C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748712593;
	bh=GpZFojZ5vJGBhLPhEdOPOt38AbM1Vt0dKp03Gv2meeY=;
	h=To:Subject:From:Date:From;
	b=Q5+qCV+XJBhXZ1urbRRdIUOY571uC6hueuapWpuMiYzlmccfwh9MHYWHtMnVArK0+
	 PARfuYsFC2ePrsQmcRY3slQbLIau965pc54qbKk9UB3lDun5SBbyUOpadQfbDmOLr+
	 9yr7TQWuswYhTveRTJWRIdORqgj0+GzsiqWmmSCr2S7Li5/W9Kan1a1+nflw8vFSOB
	 +hwQfSGXYDV5CFT1nntoyecbpqzDWjfMQAaVjksQHrEwI//1cOSAnEyjZskOMspvcz
	 nGYVTIjGVWwNcFkR2g0nu5BusYyn77DGIUvh16ajLfal/RGg5DfUnvYbOTOXW5KPYc
	 AZtE16/Pp8/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB8C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871259359.17602.13688162028152184201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fce62f20682c40eecd341bdde127b7799ed1a7e93e5bf43fe413855b1c30a2
Date: Sat, 31 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748712593
