Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2A937649D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777415253; cv=none; b=FotYlroOPSH7Ut612+wfamKRlc0sLoilvWC1Vc9sPzjrz0sHBED9zm6Nh89nqYCBoaiwXJILvQEqnlhXr7N6jaUqTA4unjB8O9W9kC00shjz0LmZ6fyIFLkGrHH5o/n+lzXdftNzE50OiTdeRHEsIuUOBrr0PYrG49LKhtKRLSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777415253; c=relaxed/simple;
	bh=i7cECJzxN3zwe34Stgzx5dqxr0Wksl/AhVNG04Uj8YA=;
	h=To:Subject:From:Message-Id:Date; b=jhvLh8UTcp/EjwpmsMbw9TVwjxrAVIm5GORdi5WXfAzm3rgW/onHTA092FneHblXJWo43BdyLIUtzVeA6YP4MJ+Uk7kZ9xRX/MPZ+cUneu+yTGwhIA1ElGWhwOsWDirOsJUzbExooDdiZD5OvkxO+9bIj7y2kTAAwyA+QeYeQKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rApkmpWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rApkmpWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9FEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777415253;
	bh=i7cECJzxN3zwe34Stgzx5dqxr0Wksl/AhVNG04Uj8YA=;
	h=To:Subject:From:Date:From;
	b=rApkmpWZej4DtztBH9mSwBO+9ZQJ7P5rcL/hdPPnfwtS6xWyMUW4M94bAijE1b3yW
	 A6iQiW3qXqhve/bT7qmjuIZY/PjjDbJWcQFfelXu8jtkEuULT7oWH5rW/lG9F8rxf2
	 6hDINdqXM+rfG/59X7Eo9fTNGR/Q8rUfrgQwrrOF2AawSgysH+xiBYZLU3C264mKb6
	 D9JCZ+wrsuFOmfptLU/qld96C8LsGPH59tWwGA/ZyLP5/Fva3FJRWHUzMWj841oUmf
	 Z6tfaUhciO4nD0BLnTkdem6lHqBmptmJ18fMy0PtYGbz8U/m8jgDGU5Lbh/9rDdxQp
	 dxJafcREtbzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF868FF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741525370.4753.12429197521559808671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5bc7fe8afd8b3bb20b3e0b948a1236a40a34c83ef55dbb3d1131aa2df3aff5
Date: Tue, 28 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777415253
