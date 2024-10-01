Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9984594C
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727777753; cv=none; b=JdQg9HYwygrnLtTb5rUa+utAOieYKq3fB3A8zWT897cZnIxeu4S6ZQVDXZ8CYH9oM97SAZ4orBlnJnRfd5a/0n2SIqaE0xsCJGyTaVp/QpQmxHgCNa1eXxmode7F852z4Ab4jurufJghhYxUckifw67QvlwEtAKsE9d2L7Xa9R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727777753; c=relaxed/simple;
	bh=iX9S3WJYe+03GohHOCwAeOwGtx5PJocLoXVUBDXmhM0=;
	h=To:Subject:From:Message-Id:Date; b=QgKQhlBW3Gssr0S1WqnKRiczVv3hsq8oXESpqzEsmSmLiPuUS+toDv6MosYUom7oZwBHt3vjXfYI2Bf7YSpV2Z6EZ0PjI003p15uDJDYP13V/moLzV2fS421BvtXT6/GLU2/InzsceVMOHxjneaLfQOBGEM7LRnCUFFzW32SgHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaDgODq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaDgODq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E77C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727777753;
	bh=iX9S3WJYe+03GohHOCwAeOwGtx5PJocLoXVUBDXmhM0=;
	h=To:Subject:From:Date:From;
	b=PaDgODq5acigJoh9IL4A1+rKtoAmdUaPNze0BWa+zlUy4PxIIiSmsKEboLToMYd0r
	 5LVg7bVAhZu/gR6HAzYRzLmal1vpjq7PVg1m4BdqP9dWhYHXgEt9aSFF9quPWS2oLr
	 oug2ADYuK0lHfORL78TPhDsq86TTvKDaJIss6uBkFRSwQK4d7IDQxp+vHeFinEQv47
	 dnQ9RyggY67DKx4XuwmB/GNzi8x3lVjGVUTyl6QUmsYXfgRxV3sSe/mCK0yBMzmZRj
	 yNiG/qK8bGYtby2oF2DruaJ+0nkXCrxKmO7asR7VdusMAvpCQC8eedbSZlAXdqUu/B
	 vTtQVDaJQx0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B2CE7D08
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777775360.20862.10816986919464788335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3738c700adff07ff259d42d62d6dfd36b405b2545aec879afabfe0bcad7ea472
Date: Tue, 01 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727777753
