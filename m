Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E4B3368B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781481394; cv=none; b=UOQl5a+IOoyY/0IDeujUXvmxmEFQuzOJFlHOXPxsRm+QMa45C4x2WBtMiM/t3ColLVe7MOl/XVwF6XHjWj+xbcgFyQ+M2VcDzH66lApy0YRVlIYQEzRQRjTM3N/LAu38NgLyGAJswO/AkOwVtKvyTNsQFUdwGH00e691sYMbiKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781481394; c=relaxed/simple;
	bh=jQQ/YDjyFXuWQHaZyOIivTKzSpVoVAp+ze+HNp/EZ10=;
	h=To:Subject:From:Message-Id:Date; b=OdhCp+OsikLq5n1RqnwbgjTmDA6CcX+L5ttOYl3QMDBiRdtS74pX8S7fUpyJliUKPhIs8uUE0OpTFiIOl7GVk83JeJvsREXyfy07FwvqBEEEZhfgY8nP99ANYPGk/Q9wX7VgnCKiuJy1WJhVsPdKsyXeo0Gp7RgVYsQS5lRyJDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8zGfzZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8zGfzZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E0C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781481393;
	bh=jQQ/YDjyFXuWQHaZyOIivTKzSpVoVAp+ze+HNp/EZ10=;
	h=To:Subject:From:Date:From;
	b=s8zGfzZggjbm26oWHXMetcS/isJrQY+nDcEtAOmJsl7Z9xj5xpaR/7I4QCRcar+yt
	 ZjQvbhP+68sUnmJTm942ds8d2rNPU3opFAiUuNNfxXkGDNyqXqXT8nyStmYTP05CFq
	 Ss+1wqzI6VFb3t5irVPjtrKOc2U92SJU74vaMtRS60EO5/hb91U8DhjH/EgrHV+md6
	 xUPGEzAoL71y0puLeKVcopo+EvmiP1fPa/fU/rIiqzqm0pt/P7yp/axuDU9uVK1ifY
	 B/M/i9g+UXIw2MJGcL4EF8sF4vx4qlnpRHDCUGNX2SFmk3PmAI+YzYH4qYF+Zzq/CY
	 xWPw+T8F0DWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2820CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148139370.8624.5431613567008119105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019c06735ab9d189241e36eea796f754429752e93540e081ac37821394247ea3
Date: Sun, 14 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781481393
