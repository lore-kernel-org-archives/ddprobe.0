Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D930B50A
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778803234; cv=none; b=QB9yXVQZw/iYmATt/VNRzjzK6x1DgrfN+qJYuqI9Cam3NzTWh9sl7sl2vtc2cSfeW59avkPdXzJvYQ+q8GCZyzktc/snoD5caN2SE6sr0N19ajLZAH/+Yn1QIGZ0TieV5qF8ZoVDW3liQScJkhDlcmyFOETifpdNgCTPfdaf1kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778803234; c=relaxed/simple;
	bh=kPusEqK8Cmli9uTDxQ9JVndUDAVZFGXKR0ClblQNvDk=;
	h=To:Subject:From:Message-Id:Date; b=SExs38je0rq2IFxrXwbn9nCSXWqwVVQ+LczO+n4kJNhx8/FfXB72IZvGlrKItZ9xMKutiLhWxAInZZQ86wW2qaiAIdALeBzqFR1wLe4HGlL7/vU3snYBS9pBel9fhq877ispdX4Zssqy8Kq8wHBJcuVdnGKKWfI74UAlEBEPXAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWlBFjvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWlBFjvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0130C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778803233;
	bh=kPusEqK8Cmli9uTDxQ9JVndUDAVZFGXKR0ClblQNvDk=;
	h=To:Subject:From:Date:From;
	b=WWlBFjvP9cYqCOOWAMzXsA1fDkhWjmTW+7dC4Fp3VXyYr+gkjthYKdtTDzNYwi16/
	 7pDKRoMVkiII4aaVGgTij73lbqlJZ/0kSbSkq1fQ+YsCtwRECTqHD+I23V/gM3lLaD
	 LPwTUT6Z41BdhUDWdYFrn8TSgU/uiFsOkTXu2JUHZ/LY6hoKRWcUC6s75HgVqc2JEj
	 9alyHucGaLOkbW1y7+VREyYR886R6zN6qhF/emGg8T1llV1tZdtTW4BbhQF4gc/XzU
	 myKJ8jdGw2JhJY8ORtbya5iI9+b6VCCtGW+6xWdCsIixnWbnkq9yBzm8Ookhl9AiCq
	 aw26mCAv2eBJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD417CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880323368.13266.9391557200609863823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07da12ac88b854c25f77ce000ddaf9a56ee2674b2b5c1dd5ed315a14ca65a7e2
Date: Fri, 15 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778803233
