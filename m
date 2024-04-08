Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2D579C0
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712553496; cv=none; b=DftQqp6VSEmPG+sk8Izotat01V8aGToeZfAMaKh7l8VbJ3BxqUGf1RNF2Ok0uKaMavnL4NLMn2xH9YpPPJKuS1JnzYCNgpAhgOFEoPtxpaN4lvzEwkPWeqpKj4WuNoyZeFb3eDBv6pj8nUvGEySa70Ta2ZmivwEPst3JBjmDrqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712553496; c=relaxed/simple;
	bh=FiDP5xydaz1MiRgKMzmWKJu4tplNS/CfsPvDpGU3EzI=;
	h=To:Subject:From:Message-Id:Date; b=aulaw/y5FCsZ3ovRG491T8DeiouMsJ+Gd7rBjkToBokxhZ86AiCqt8DWNDsCLtTmEmRd1ohqg5RfrJsxntZvt/HZc6k6gYuFfFiVyiZVKvm7psT/zV1zeAn21DgCfYAPh/n04oHnyoM/7K3WtnsLUMCpjs4RPzmkhOHY9wYn4gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cc9BCBIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cc9BCBIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E09C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712553496;
	bh=FiDP5xydaz1MiRgKMzmWKJu4tplNS/CfsPvDpGU3EzI=;
	h=To:Subject:From:Date:From;
	b=cc9BCBIHUpGrZx2TmAqqf34Z/z6Ym0eJoVlJY1VrSTpe/6l7A3RFfzjA09fjSmdY9
	 KT7w9N7wQD1zwvtXKIFTXZjaAR96Ayg5DzoiRJYmcahleQ++OPk5yQM3OwqUOHiurG
	 xb5RQ8lsIxeaz+R3EptCgIgpJwbevcA0nrCkJ1zke38eNqULheFsB7kzynZhIqedN5
	 Xnt0opi6m06yZu+hD2yR58tmzPa2khRPG+/Vqj15poSsTuEvVT8ahT7C5I5sSC8Itd
	 OnelnpMh+8avWR+pfNHpom15ycWg/tOpHwYdSwVx1xbCQUMpgxLFaT/3DoXIg8rzQX
	 NDVy0EGWLBwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B424CD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171255349641.20188.8354356230434530506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80386bf8ed8b44deff078723a383f5ee326af776fe18a5b0e0dda649a04c4834
Date: Mon, 08 Apr 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712553496
