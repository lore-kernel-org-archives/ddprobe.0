Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8382A4E430B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791473434; cv=none; b=jbnKmk3KGJkV/pWb6f804WaTd6j9XqaU6olED/bAG/uBTR2+sGE90H1UGWJOlxVTUcZS3oafz84al7yO0RX1arInpaXpGXQ3KY7WklV72hQEEeDxFQ9+9GCkeQI/23I0Lxmd2vq78pSNuNQHA6O9YzT05JOhLkIHkLqasdcieWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791473434; c=relaxed/simple;
	bh=IKd5o3uj6HG71CGGXfhXOKUEUYwDxgzwN+cdLQbvin8=;
	h=To:Subject:From:Message-Id:Date; b=PTDFkt5P1cNNacomAg+DDevs1PDjtPpQ6rGZ12NM+z9lOdXtzbcG+WZ/DIx+/C4PnrxXMIPVqe9KId7Jq7T0o+JRhPEeoYsK9tehuSEPDngd1m5gmnDivFWsNLbtPNlFunzbjbcSLIwKZGZIH2zafiPBas/RE1KC5YfSDlR78rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ou2k+YqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ou2k+YqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7724C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791473433;
	bh=IKd5o3uj6HG71CGGXfhXOKUEUYwDxgzwN+cdLQbvin8=;
	h=To:Subject:From:Date:From;
	b=ou2k+YqLAQzqKin4JesgCS07bjlfw9RqBfOBpPeyBUMsvXIs55Ngz9cyOYILHQGoT
	 uA1lAvihaE2csgpbW4Oyovud31ebGjJv3V/f8mb9YARuDIiMT2rrYSAzhMlhfNGTft
	 NB6StT24zulB5OTgMMLAI1J4Si3k2y8xAgYx90b6B53z3rlOxGfuFnDmA5dtFEgTuQ
	 jsbHtH8uvs3L8OwIgoteE/fCNJkhqEHRTLOIzG4jIx9Y3CP2olmoIiviUnBb3LqnnM
	 2ywglMrBU3JTrksWLJQR9EuYfK0kIzMPjLmxWA27ZiYJTQrsA/tv3+jATzAYkz0Pax
	 2+WEfS0WXVu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECECCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147343369.31727.14774178189487863975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78af6c1bcd88509b1f7268721ddf204f5d1d6ebc7042f74cbeb2f7a12117fbad
Date: Thu, 08 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791473433
