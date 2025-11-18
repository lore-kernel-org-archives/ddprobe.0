Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EBD321434
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763476314; cv=none; b=cSPR3ipZrhYr5+WTlaHMqRAJ15AXfKFmg7iyz24sS9Nl+oQunGVhXvlT/Iqy0j9j58rQui61GEZURmcwfKvdGpa4FW0B9z7hpXZ/nuQfpE2/rBda18rnVFXsWSE09n7WkrgGxw8EgA8kNn0gRA/6ChEyGfNqFaAcYCWW0LIc/8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763476314; c=relaxed/simple;
	bh=HQH1pQstl5aEbyhig0gpVuRp8jZR+9CLz1jcJ3TQerk=;
	h=To:Subject:From:Message-Id:Date; b=nXHTX1RYWDlY1/8nBjIS5DiCKanS4cnPgcv3bmTLxhBHSmNXJUdDjABOJ01YymNEyl9rfKIlfMedrd0OW5tN5fG2Um269VgCcSeWGreYjbCkbaUdb3xi5OMhe+tmRVWn5seVc19HimOVz/WMqe413dKbFhPNx++C+r0MGtm8bSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbJsXpWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbJsXpWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B17BC2BC87
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763476313;
	bh=HQH1pQstl5aEbyhig0gpVuRp8jZR+9CLz1jcJ3TQerk=;
	h=To:Subject:From:Date:From;
	b=CbJsXpWFur4tzmC52DS0jrIad3ort4ZER4IaXRSmcKYmcvRubRlv5U0FOBnk09Uqj
	 kUBA6wu1nAOerf30hYvK/yLbIcmZBIBq/Y3WrrSiXto+9PqgUXgsxgeuXtrjsYKMxX
	 HwzTsMqh49Sh9R/5zwIQbuQLLG515qeQgQPCqUijYa4QSd7WiXwoH3ln7LRtHmlB98
	 Mc6PFKn8og4ZOd8VCdaLxSnVsrw0VN2qdwC5n+yBWOCe1bxel9urLdISWb1pAWtlFC
	 nToUfukgs7nHHe6x8KSx4U15R2bPkXQtVkixVGd2ddlFWlibNq6NZFO2ivtzR/KSSy
	 3xE8TRUQudZXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90164CEDD97
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347631358.14492.16715513168297139738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82903ef958217614b73c39679ebfd44b177107287330d285e90c7d26dd2aa4bd
Date: Tue, 18 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763476313
