Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473B219E971
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741337934; cv=none; b=uOJ2Jg1bO3clSJhH4g9zaCEnN2R/COUIePgD54cNzlJixrsIuuQg3N0l0pzpKGzfjmKT4Z3O1fOsd4GwRQEbm0PomrIbvI2IHXNl6pjq9HvZ5LZ7QwM4P5lT/qe4WVSJColTHxFxlQwfHJ7He+TOMpQbaOMZP6U7tfV9Ny9V4VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741337934; c=relaxed/simple;
	bh=DbMNnznBksw9KHWcQZXLxfsGyfwpgYsw4BUOzOeVehg=;
	h=To:Subject:From:Message-Id:Date; b=W3gCsxVUc0pHs02qKuJZsz0MYtHVo1+QTcPTDiWCNGL38HkCsbO4qdWsZtNfI63VEGQKYljJVppknmUDtHX+akjrXBNfk+hy0Vkg/qymmy8e+MxINgDimoqdxGXC2gTTSdfRQ9SsDVzwcxS9EmGWXqsVU46Yw4F+5lHW+D0PdnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVpM002h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVpM002h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2726C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741337933;
	bh=DbMNnznBksw9KHWcQZXLxfsGyfwpgYsw4BUOzOeVehg=;
	h=To:Subject:From:Date:From;
	b=UVpM002hTSou6FOTjBPHUOVem66v+HXD3YKCNTOtrehucXP3+kJC8aqrmE7KztkcS
	 jR/hB7GOuRnUH1B17QiNoG+TvpAx0CZYwdqKDeAe6VxrFf9IsOCMRwPtXF+K4y/Bmv
	 g8uMny+QCXmuCcspQBzEcMU3ORCHcg/4kRXuGB64mstvHesW4hOQkcNoXeQJaCUJL1
	 /wa2ofOHU1ZuCckSZafVdz3zSU0dMgEb04GuHyiAQwZEkaVszlqTB4b4DmT+iT6XPK
	 rxlXkS/P+KaRTao4GDnZ3Agaqj5sv2B4vAsFbdCxaqarBa0NJSKHFNCY1e6ZaQNfWv
	 SPnhweddwsy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94059C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133793359.32095.553906280828831835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d232d183aec749fe37d71d9087c7baa27d82880e0d50daa808aee74b62315c
Date: Fri, 07 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741337933
