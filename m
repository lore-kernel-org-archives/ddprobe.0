Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994D33372A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770668634; cv=none; b=b0Lv9MpKz7hSwWkMcjadWon+Qdxk9EhxOI694AUgxmNFGKiORmpHwUPy9FAgyNYMhUU+maU6rXaSK1OGvbUT/sRWAcwS4cM00J0zJOk2j9YQfpGi6kPIq9AEunNdFFjq7YnXmUFxlHy3auNqhl1l2Ssg5VVBysSKKGGccZHu8Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770668634; c=relaxed/simple;
	bh=W8lpk16I3EbdgqUzN+gmIs1/zF/BVBNotdABju1Xf/o=;
	h=To:Subject:From:Message-Id:Date; b=Us7/0L1fIeFJ1AYv2jLiFK2wIg8k4T4HpB3DawS7AYyM/pVac1V65y1AgelvaJxxZWkPqDq7a3nxBVFai5I6/PCNN2AAmE3TkNJ5MtF49cxdQSFc+qKFTlaZ2Mrt6aMR63uNql6Uz+YK+WeYmxbNdiBbQ6EsALSRuZptp8LvIdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLcZ5F07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLcZ5F07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22F3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770668633;
	bh=W8lpk16I3EbdgqUzN+gmIs1/zF/BVBNotdABju1Xf/o=;
	h=To:Subject:From:Date:From;
	b=lLcZ5F07VKkgbyeVHZ1Ktlr7kvgXLlxmtEKTdzNqobdmJIDsYyTXMUsrpLTf0ApgN
	 to7XUW4fhyIGFCeNoYdYT+tP9mMkt/pIQ1ej4VfgPJkhzx/MSESNTqAO4YDFj6gL2M
	 o7S5CnJKUH/1t6PcbfMd2Sp0MlOWnql1mDDySycRloOCAY/XaSe5R5YwBUTTGk14hr
	 WrZwFsjofO5a0aqq76nJmMGFeNkDoQTGPbmUHU+XemZp0cHh3+OAAOiLhJQ75C2vHx
	 +2kIYUacjk5RL+r+/upyUEjQuRGGrKcQ468yA8vlSZxHjR1RLE7hLTCF3Z66eShjId
	 ADJa0HT4YDG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B757E94603
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066863362.11384.17360064606920593462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f6053bf99540b99eda9859164c0546a4c22117caac00b65209699fe9d42da0
Date: Mon, 09 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770668633
