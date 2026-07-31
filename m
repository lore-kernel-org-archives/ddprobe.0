Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CE537C0EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785530434; cv=none; b=IWUIaOXSyyjbl8/IHgO7GZFoVe5X6ILR1TNV5U+FTdIr1SkyWDiS4bvPQ125K1IaMYe5HntZElABcjK0XJfT741OzH/GpMBkcNh+2dqlDaQl22aHMurs2NuIwXfkgEITblerFQ9yCmGBjcnWy9EF7IHybovOcUo8QFI5LYgYslE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785530434; c=relaxed/simple;
	bh=3L65JUoAnVW06BGs6mHRgcnj65ZgzXNMFu96dsXbcIk=;
	h=To:Subject:From:Message-Id:Date; b=p+E9eHzRvrZQ29cJTsw/Oh564D95+fNPLu1AR6OgxF//zpipcSUyO2HHAvXquIDGQGEcejwksHdYOAaXTuevd3s99AGL6sRkUdStmb3PzZVQsIV/tgPy8CEOmF5B0TdfI2TQmCqdE+a3/nq+vf2GRnJ1JgXc3vstKoEF4MHeZcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJvEfAMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJvEfAMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09FFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785530433;
	bh=3L65JUoAnVW06BGs6mHRgcnj65ZgzXNMFu96dsXbcIk=;
	h=To:Subject:From:Date:From;
	b=VJvEfAMtbvipBD5XDo0YYauYwo+puOSI+72n79x/8IUbGnPMEme6BSZRvhmTYEgu4
	 a1BTJquWj0k9GHIrW5uFcsq1J8xP2S2AEAjxUoIBBM46Pfgaf7S1JxffV1q2I3/j5c
	 ZWEyDoIbhAE1PMZ82NKyxeJw6XM6mcm4kbGP5jH+NXbKZSpc2og4FbTTVqxg7oezR6
	 LHeh+u54KXx8vHIjCcttXvf3SN3/NK5HcLw6O30wy5rN46I6FABhuo6VUXwerZaoFl
	 ZmrnAQ0QHHbjLaje8+BNtE0DQUpIqOLcU5c5KlcW0lNDC26xq0AURduVU204Ed6CjG
	 hPRlQuT1I3QrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB59C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553043368.12838.6426773145942809183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07d331061fb32dfb5e24ebc4b017bff399d6481c200eae24678125d8946b097
Date: Fri, 31 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785530433
