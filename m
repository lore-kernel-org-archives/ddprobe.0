Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1DD3264EB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780364674; cv=none; b=Z6Xk9L6EVjnRNeZRNDYscp28UJrEKoCnSwNbftx5xF0ro0tyd2cgw939be6JX3Y7aT87ecf9Sa+HtxpMc07Ss5V6NVVoLGyBkGa/0qxYEXeQ7d0i/fI1XvNiYTV3VxCRd7YOUPtWp7MnDX6M+ox1l9JZG6li6VCq1R5eXasvGHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780364674; c=relaxed/simple;
	bh=i6NB+SPgNL/0/Q9IQ66GGdiqTgD3aCndMHKaIjOWCBQ=;
	h=To:Subject:From:Message-Id:Date; b=ozKVfUDxfCFF1Bqpph60Pu3nG81NecKsHwP5L6ejSUA4/wnk6yoYoaoKRY+454DXNMBF58+LOHmK0O3765YXzld5KPzhs2oTFA5ZQvnNM1lHxnPLtsK2LcDEGbMrVVjOH5oI6gM2NTlEg587ms/47hirA475LEU6GiCsUsE16nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUBjUKoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUBjUKoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEFCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780364673;
	bh=i6NB+SPgNL/0/Q9IQ66GGdiqTgD3aCndMHKaIjOWCBQ=;
	h=To:Subject:From:Date:From;
	b=bUBjUKoFet1j0PDUsulZCGn47UrAYaOycq5ZIIxjHphOcszyhorg8nHup5Fjx4d7p
	 u1VZpclqiSV1pnM1cf/TWr+E3pufKGkCzpmwwkHQNCSTM+z2ePAmeO+aGFphHli0EW
	 ZekT9xGJSoDebYDx2D5N3dqoWSwqBFalqhxr4QxX7lbkN+B0cNgPBvs2+0mg95yJFF
	 HgBi7/cAiXMVZFc1MCb88l157iN4bhziyiGIffojRtln+6JJWPqX5+V+twDIqWrWxR
	 G3YUPQgn7ey6eGKbfhYiigWUaQFQVp/oVmMNRDkQxyOOUrHJfa14SYWyPXwIMaDvtq
	 NYUKQiq8suxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FDBCD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036467371.32295.18135969184557723246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ab4c7bd8787d185174e13c7ad5d9a89091a61f17149eac3bf70d40c5b87054
Date: Tue, 02 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780364673
