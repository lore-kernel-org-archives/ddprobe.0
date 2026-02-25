Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809C1E8836
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771995294; cv=none; b=MShtImJMPf+YgpDt4cw07YH5DFRNbyi8/tgqBQXbMC2Eta0k6OsYpFvIh1kr3z4CS2W9rbyJJTpb+SmbcOMDgQfm30LITmWypw0wutSAb+dH2WS+uEwBDIaqTpEumxr5Yi1SuYpuYZGY0BoGvjv9m+NOULA2SOpNEpcc31QGryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771995294; c=relaxed/simple;
	bh=JLhZL+40Mh2BmLIBDrC52FrTGN2TtzrA/ur1bW/agdM=;
	h=To:Subject:From:Message-Id:Date; b=r8dJCHDtiowVUB59QtENkSgEJfRifudp+TJ8QzMcnk9M/5LYXyuu7wY7JzygvShtnjtCsqVLoTmqHQjF3zq2atg3e3+JCjzw11CmFQd0tmrYMW3n/MNH3/MyCffm0UPuckWifbW54NSpzEj6Uvt7HBueKY+0TyrYh23tppXLJQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SljfBZnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SljfBZnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A997BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771995293;
	bh=JLhZL+40Mh2BmLIBDrC52FrTGN2TtzrA/ur1bW/agdM=;
	h=To:Subject:From:Date:From;
	b=SljfBZnQdxw/jRg9el+rQNWVlol+dIzefIXc9RRc45aRnSC6xm71L+LN2Ew8EfF0Z
	 EMsXa5QxV4JRQabNPmTLhdm+AYlg3LHwI6B6+WfddQ3/eyNov/zILwRvDYGkLgtqEB
	 6ZctX0XQJ7TJbnBBcCrzfo7nQAYjpCNp4BIbW3qaweUL81rwfpOjqq6lew8BmzAlK6
	 U3P4FT99GrsrHnZcmv7z1vJAI+sXTu84RNAplktEeH/6gz3eubIurUB84w5vcxWTaI
	 DuTAGGtyC6Hvr7dVTlj7sLe0TuMcFv3k/P4nJr26zIgCFgnCLukSeL/HVJ8x3DpQgc
	 4TbOZD1GQBoQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D1F55454
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199529358.22622.13306498255026721573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a852cb1949296b8f5b253b21b458d8e27e4a1b2ee03c9310b51cb9c7cc348258
Date: Wed, 25 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771995293
