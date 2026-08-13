Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E28443ABA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786614634; cv=none; b=k2wh45SYdvDYxS1JrWnsv6YSMWdd/P33CymvX1CvRmkYJ8fxraqH/c6YPzrTocvY8Wbjoxp+VmPShgf7MAi2AUJHtgC7glCh50JI4JzQC3Q3DbWHu/KkFbSKnLgpg583O4+ZkEo0TJH5Mj+RUbK9C9Z+P/QdlqsQ3Wbw66NDMlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786614634; c=relaxed/simple;
	bh=NHoIjqx1NBFILwVuYyP16aU58fzdmtkKzWGOssXkU9E=;
	h=To:Subject:From:Message-Id:Date; b=G12UuzyVelpxY0xiWWDWhZjrJXknrg1QZu5265lSLD5Hc6vEBqZWYD/OUF0Ajm7ss0UZWDWElF+Ub9jhVZ/ij76O5M94vUy4v9DYJwOKU08ZLWqdNgaV4MzHTfwz4HRBBrBqMcnVax8JgnLol6kLz+mGA9YEB+XFbIP+ArVcsZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SabGWJVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SabGWJVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10B7C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786614633;
	bh=NHoIjqx1NBFILwVuYyP16aU58fzdmtkKzWGOssXkU9E=;
	h=To:Subject:From:Date:From;
	b=SabGWJVoD0P9KA4gwQe/vFMHNjwHTzXhOIFWhBE41pa39PQpH+bXN1bgKkG6gz+eZ
	 7Jo15TNHFmrFRJ0ZxjQNTLT+UKGqdBCMG9IH0JUo+c6G1od5TJiJOoGvwC0EQ/q7qZ
	 4yQBhwfJDccNF/wQdl0sew2s25zmITzIhQelNGLajGwNSvBstH01xz6VJMHOe6JKh3
	 MruccrW/nFYUowl17c3d9fjEcsBcZhVwal9zbyjNJCCZO5uRcKZ/oHRCeaSQsMuCzP
	 FxZngEvRjBSKgmoM14aRDzFJeChypG6NkGnYv2ikonHV3hB8ojaptt8sxuLwrWno5e
	 RVW/I9cZRRAWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A7C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661463368.12900.5545321872337311990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612cb255c5c71e75967db50f1f079d3fe4e8330209241a45f7c14119a6506748
Date: Thu, 13 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786614633
