Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C017552
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723417555; cv=none; b=JRci3LRRy9IFP3loKW7nMUrcvdLVw/6X0iJe41YLJqFdsJOr6ypXuNw9ZRzlb3KIEGKkEuic09Yoq5+x9WYWeBjJn7IWerSwDk6ntRaUeJNZYSAGXGndoYCvGjGxNlrvZBDXgaXxlZPIRdNcjDyqupR9JZQ8rRrURcWu7ZMP1vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723417555; c=relaxed/simple;
	bh=gCkAw6lO65udLp+MMiwXkPQcfrPAFMKBavHPdLjRwZQ=;
	h=To:Subject:From:Message-Id:Date; b=tC7tGWPpW/AvaiBv5GcGrcYxM/6jwakSAX+NioaQxSMVNUiOhJ8mEzCuXkQ0E1e1DcRAmq7chF6KmI2GLll+Q4JfaXIKogeyePyRLU7YTX/1/s/ztUZX7/rJS0TXvSiwiT5vOdB2THOhrm3R/azVhBGKB6fqTETjZweljP1tgLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuRB+yyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuRB+yyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C9C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723417554;
	bh=gCkAw6lO65udLp+MMiwXkPQcfrPAFMKBavHPdLjRwZQ=;
	h=To:Subject:From:Date:From;
	b=fuRB+yyRlssB7tF0H2SXYkPVqP1+UiDAQvIEh+vWc6yZ2xLrC236jlDl8+12RSqMI
	 ZiG5xIn+zLkJR/2UJRoC1aQhI9q2hXCf1JWTDYdcdO3XM3tQ0pnH3GN0ebs6RhPWj1
	 M2ZXf1pSHLJtdVsPOArut+XUGMzls4a08wItCNJUyU58jCJCGFdVY+GwyNxqwyBW/w
	 AuTEY6fZHc7+oWSVWHEuBWQTbAHY8Oc761JmFnVuhl3WimPrTVJF0nXy1bd8URlHgJ
	 vn+TLJaISfLI5Th5aqCx3JRFSL4wRxnIvd+QRk/1H8oDx45Fu+5QxbtJ9/t93HfqY7
	 vfHttl6+gREFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94801C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341755358.2400.15105085973514666012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cdbccaa0ab950d9be4929be3295f567fea3fe3538df9b73123acb6ed3579c7
Date: Sun, 11 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723417553
