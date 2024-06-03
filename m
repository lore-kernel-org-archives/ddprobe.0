Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F855374C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717456523; cv=none; b=Zezg59GE3HIaD8k3tjJYz6kC/HnrP0JAZCEfUD4jtXtW/Q5+QxSwEfkd+o46WDFKbgrV2wNHDa6xVLG9jaK98W2fnwNn8RzdQEVRje5I7TUrqlw4kc+AmSSDEGlsbK/9hYFV3kJqsE33CpM7WYlPaHIyMxs6MQM/iWk9b43IygY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717456523; c=relaxed/simple;
	bh=t/DTAnKpxgruF4Gj6Ofp7U60XeXKwreSfbc+B85Rh/4=;
	h=To:Subject:From:Message-Id:Date; b=D0oOSRwPRGjvL/2RkIMQ+ib4KU2YokduhaRe4KkZU+jZgOJgW3UkLCWIlGBx2FB2hcY4xlhFaxMVozwqj2gJa2OjdAIuidzQ8mdMs5hlEPy/vRqREEsV7i2ZhhaSkANiArZmGJdY2A+UbpCOW7tEiO6YvqHbbBzqM2YQmNodQ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib0IhkuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib0IhkuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA01CC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717456522;
	bh=t/DTAnKpxgruF4Gj6Ofp7U60XeXKwreSfbc+B85Rh/4=;
	h=To:Subject:From:Date:From;
	b=ib0IhkuAwj20WK1nQEf0XOonv/FQQn5bf4kf+sUQWP6jhECnc/d1ttQyxRDshBS/H
	 JX9dZgGi587MChFk3ed6RCAflNGdfR1lhbaZejVCaSwVReRTRRJFtuF+IVmmLheW9K
	 0L/k2uWunGbE7voHJgz+wvuykMf+5QlDMOrPzIyLuAwmPOdURwP1EiERgOg29lJUJb
	 E+apcZ7LISYJ7ZvHS6W/5ECfNkMANPz+UewFRP5fFPDlgrcN2Z2OVq/zdH6vjXgGuG
	 5WN6No8nz5brKaINO/TIktXifb+Kr3xgLBOPPhNN0rzhXAJbVbNzScOF78LntmJ3ZI
	 FvgskBBirLxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A17C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 23:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745652282.3278.3631619647057886360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d9281f06a73f1b4428fbe8804ab3f0fd1f53e8bb5374cefda17426617b7914
Date: Mon, 03 Jun 2024 23:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717456522
