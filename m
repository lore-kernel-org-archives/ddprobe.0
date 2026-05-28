Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2990D33D4FB
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780000954; cv=none; b=QJiIo/vU0dMNxiWUouYPDA2jEZLrK4Yul1fFnH1xvvY56AsZ1nJiwbywhWbQFpO853/CZ1hLtprL0+4MXBuoALWky+nRiZjPJvZwDE2wJOyFS0vlKG8NfMVrvEG2uQ2Dg75FY8J/UbUATuqMH3vFiahpG/muTuMlbJXxA5om7/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780000954; c=relaxed/simple;
	bh=MaXK/WChZoErr3EinSOOfL2to9tUIWoMqItQ3NAxy28=;
	h=To:Subject:From:Message-Id:Date; b=urEcBVHiSMrwihi7STLOnjegYdB2/lniO3zlUgpHcaK2dxJMZJZh1m7GVzsUWTfmXK+6x7oaJQZOydXWZe5AKBwyCD3vZlsuBnmbK1QwHo/UoNUSSpKi1OampYPrwRReCu0wN+Y2rbJdMrF4iLcbYgC/wvE6DUZ+pBf3gAb6d1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC464qgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC464qgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDF6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780000953;
	bh=MaXK/WChZoErr3EinSOOfL2to9tUIWoMqItQ3NAxy28=;
	h=To:Subject:From:Date:From;
	b=MC464qgu8ieOGGVzJFpwGSqLmopAY+vRLqQ52miavdhVSiQ5dauesGdzEY6d7bXUU
	 gc4ISCvjxb9Gl9EnFuxmocjGXbDINTwTKjF9eJU8Muq1Qqy0FwdN0W9hTCVssZnHuj
	 wOdpo9RWWcoeTQ/zPwa2S1WZAO1MzJ5gn5h2zB34XbJDlE4Xsil6HAmTNLl23T17lc
	 nBOPsJAm3+lsp438zLMbC0/6sKzmBhZli3yp6EwY06Mvi2/BfLSrcKCYbcHTnSpYRB
	 DK+/W2dS8KdAgnf+H2ytGCGWCRiWvaMUaqw72fO/yqPpUTOfHDugJBCzZrSeI54eEB
	 dSn9LqTV6fbmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC734CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000095368.16424.13019960767357361702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0880cdd0ca36fd2632a9b34c10784f40647235397576b64f753e9554bace0e9d
Date: Thu, 28 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780000953
