Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357C52C9D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722584754; cv=none; b=s9xycyUXy4hI8CqTME1p6GLiPCoQlV6W3MGL0n/GKquPq7oawEllPo71NAN8PwouIGM3CSaJhTsgN1Hg7N0/NCd8kciv+Pbwa61/Bs5+JsoKbEDFzQ8TzenWuVvJjCAwY86bjUYkfTAFfDYMQokV15/uRXIyAFN9EUFwRORRZRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722584754; c=relaxed/simple;
	bh=1j7sBOHKdmOxXCpL0t/mDx0/XhOgxgcqudPXu/pZZVg=;
	h=To:Subject:From:Message-Id:Date; b=q85NsI7XfR78rum82G7a8/i5JwgXArQWY2oPg3qzYJDrUNxlI/NTHJ0Nf4WEtA1PHhyjoWRdhK3qQ7xi1a6u/a+PAmwiUL2NAoJSkzAha4PZeYhom7VBulG/oRVGYPjgNVHwNrKABn/sR6U4h+wijEs09XXW6uaa9aO20z8812U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8gQop24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8gQop24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33F3C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722584753;
	bh=1j7sBOHKdmOxXCpL0t/mDx0/XhOgxgcqudPXu/pZZVg=;
	h=To:Subject:From:Date:From;
	b=p8gQop24DBPEDlgLE+QNZtF+fNNGtjX0ZpqVoRkcv6xbIkM393Tmc5qcV41AUx//5
	 gy3EL4mYamrOHCJI+XGNA2JHqg/i8QWZfqymLmi+jd1qJzHCAHLCGuyUPKXNFTJzwF
	 zF7vXyDf8JU7Ykj9DunOT97hfUGzqd87WTk0oAk8hr7Ol6sdbmQIxqLVIuzdtmsIu9
	 jzJiwKIJtkLBj0P/4paTRrK4MHyVjFfLsoijKl5v1OA1TScoq6ftlHx7qL9uQLS4uG
	 DYLt4H4Pe8nXZxO8asXur7NfwWfGYjDdxJrUMGIDNqXTGlvnrXo9KL9ZJlBqypoiG1
	 y0u7OZJrLrsIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C47C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258475362.19202.6331855936106026353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49af5fa4c261a694b51590390083f73e49199f8c53e26fe18b67154a41b0a237
Date: Fri, 02 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722584753
