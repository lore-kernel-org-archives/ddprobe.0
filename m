Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FF418622
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717391723; cv=none; b=uxH8fYybmeYE8FELa1ctpOPyJ46oRMUNgld680ZhEC0E29JP0ul7e75kbvzOppEp8gKyWmjtYjXNe1WB7JTZpo3q9+hzkU034iGljge1toq+MHqfKZGJI4Bo9eHeH+f6I/eWtox33s88KIjEne+FXt9Ds8JAxZ+uciclCNiWIJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717391723; c=relaxed/simple;
	bh=A14DbyDX6OyqLhLJyY1jFQ5yCkCjkjLKKadAg3adVSw=;
	h=To:Subject:From:Message-Id:Date; b=SK0ftfA61/qwjmWa2sU+i3LzLTovcYEYGVDNPCdYYAZO5N+8HacCJcgrEJY28L25L6FCr54PG2MMASkTBRPh8gI+j4VbOt0WB3f4yZZlNaj3bTFSWD9d3T6q8vmC6GbKTwM7SpnScH3mGvgnHMutwjmg9v21MsrLEfrAyXUSrUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUqlKIMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUqlKIMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2DDC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717391722;
	bh=A14DbyDX6OyqLhLJyY1jFQ5yCkCjkjLKKadAg3adVSw=;
	h=To:Subject:From:Date:From;
	b=LUqlKIMRKX52xB9P7xEDNYlt9kIVrLG2xAHrilT/P4Pt2OiQ9We4aD8DZZIKj8vhD
	 03Gy78cQQzzpRrRiKch0H1z2XHb5l4ozQ/PWOIDtNsmxj3rfT0oz9ypqNJ4j0pvv/R
	 U3xa2EZTElFL/PFe1vITKJROkVCXOesk1X9k9ogEm24UpRh+WT/m67vlrK25t1f70D
	 EMm4n9cYJsYmaeTbQ16OUvK0RBIzjuwQMHZuzV5xyZ+5M/VfJa97rw/WshRY829056
	 Fg/wTJSL1SR3jby7zxSBsDLcIKjb930S4VnSWYUnaxyvPGHavos79XFbJ2SdFl6gCV
	 I7p7GV5Vevddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B92C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739172279.9004.14586234721375662845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b4fc6f491dea59ea5ddc56deb5d0debc18d8fbd4843d75ae0275b9654bb970
Date: Mon, 03 Jun 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717391722
