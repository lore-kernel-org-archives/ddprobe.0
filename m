Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6B6145B10
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711354097; cv=none; b=TX4G73HJsNn43EMQzlIdvALht7YIyLUxfKrWYcg5Nv3OdOUbzv0O14GylwUqsJdVXANVuJIsTIR8UhyLjL9Kk/BeqCqpfblrRssVsGdPqVPSpDCfJmmCYXwi+nc+FMCbM1AZqCyfVJmJLYSewNoERKLyakxfrX/hNNAys8BCvWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711354097; c=relaxed/simple;
	bh=Oo7rlUjs0b8flx3buwsF1W8nc6wpkU79kcGowDx15gw=;
	h=To:Subject:From:Message-Id:Date; b=tMqHqL4zTTaXSEGCpJDOs13EXTRlY1bP95KcEt75oetCGim9rnyaxIrh9ETy5xcTRVaO3uEo/v1gCuM1wGGZyB+UFkVeQdH8Y6yGYkPFttTfuXA5heOCgTzvr+1fvMwCE74snc8GTB4/C2JKTz8X7x9CRoFO7l6SYIBZq0R+yaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV2J7T15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV2J7T15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E60CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711354096;
	bh=Oo7rlUjs0b8flx3buwsF1W8nc6wpkU79kcGowDx15gw=;
	h=To:Subject:From:Date:From;
	b=aV2J7T15Yr3+pSnTTEGsReSp525/29jSpsYDTZJ4e8uODb0fRtOgNUI4PBXdQ6vXL
	 RnXyCXM1StqaIwPvTriSAJuPXqS+8jJuE+EhuRMKOEGn7PQF+I9WN7Y5qbFgaSOkMC
	 9xkpzePrO7HnWDW1Fq1mJx1Bjtg+Ftl6NxEnAidArOuV2eej7mNVcdGyzG8hCvs1T/
	 YWI/VKQ9CLDIZp1GzwA5xWkG+Q2xagjN1oc+PUuARsI6u3DyYaLwUuuokRsBgvWoyN
	 SphCoAVQmWV0HSSRG+0GOLwB9fM9Nm5hA/Rsw+Ivh028Gwfpoat0C2rUbTTdFNY1XF
	 57/2/xXIMvQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6E0C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171135409642.14639.10562724635765661135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e36ef77a9dc55b87c1df99bd714ac49c572e0b66027f590aaf71edd4b41e3b0
Date: Mon, 25 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711354096
