Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7A033D8
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740278934; cv=none; b=P7cTy2UlMHo7LcQagyRTvn/8sOxCxI/j6xfVUy25MeWza0ZMoV4QKWQaxUF1vR7tDc2PlDsfqk2sm3jbzEiUgMVFWrPkY5vPlfFGapGKbYhoyH1BhULT9jILOdMRvIp5VOLdrDT4kTsBVKFxALtsWmjg9uOnc5uAR6NdS9NabWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740278934; c=relaxed/simple;
	bh=oenNzdgmceqmIL1RKO9dlYYC5p59d2xhF4VoETVAMT0=;
	h=To:Subject:From:Message-Id:Date; b=hHqk7uqOvsupFe52kvxVhuggVfCVVu0acBoWTlEODWjbmIZKm36cObKTeNIg3o/mDGYGA81AJe6UzOelFSSbTtbY+Ruw2ljtbyfDCmxj/FAVz9qsOnBkf4E4qWdT0+dAggccGr7fXcvbi9j0aVenjNboh1Icik9UdTLybxzgoUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArqrgSXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArqrgSXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5B8C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740278933;
	bh=oenNzdgmceqmIL1RKO9dlYYC5p59d2xhF4VoETVAMT0=;
	h=To:Subject:From:Date:From;
	b=ArqrgSXk4kV9Tw3TK4YjYu3zKjt9cufhr/fu+fN2G4CTT83xcSzATHuvcdalWdj4Z
	 Cpr+b5ZCie1x8ntSAkQ2aWiX9k0oay+ti4Kqx6z35RLkJTHlfLbBrT3AI0mA9vbUZo
	 WKFXiIVTIW4zRHBsTzmMneWm+QsJ8ZbVKWCCG1VexqXb9p+RE+vXHmfdjICSuO5CTk
	 Ufe7BT2JYX/no+mcCh96IseYz2NupZ8cfOwf/n8hFIEncU7loC0iYA8Rf9HrQNncme
	 Frj/DUr9s6ES9WvtH6KWF6CA0xcxaIK76IwxXLG8jc6N1W5kFzO0DUB+ARxSXgaUZI
	 RhG6V+q841tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3B9C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174027893358.5878.7959933317415836305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f886d1e8e73f88f678076d66cc9a820e6c577866790d3320e8b85315e21c37
Date: Sun, 23 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740278933
