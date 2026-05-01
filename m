Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389CD285072
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777641454; cv=none; b=d2mO/EIXQGjewGceexm3upET9oFKHaanA2KFL42MNkJEY254v1ifKZb0C5Zb+k1XEX2qUGvEb+P/8Q+bfNjEghersYlfxO/Ny30XykvBZ+je3rgx8DV9jfOoHiL+sXTEwgwmj1swxHae7noZebpkbm0y8lOLhWufeLgw7pm8Rek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777641454; c=relaxed/simple;
	bh=dJegBP2yJldQgcwon3KEC3egrejVIau3FrCgdqA7+nA=;
	h=To:Subject:From:Message-Id:Date; b=ahWV1AdSNK7SmFFI/HA5sv6LjfwlxL/0z8XvgoLntHXnZ0hCiAwGxs7raJUFVT5xclYXmVTRIrXp2h7NU3ZHVdPFHsN8iw3sQuQiLLgRWcqjmsieeIdJhUY/rLRi4vtqhLUENVrwM0Y9POU0mB7pMbABwc+OP6WkrkGo8FcG9HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lphtJ7k0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lphtJ7k0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B939AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777641453;
	bh=dJegBP2yJldQgcwon3KEC3egrejVIau3FrCgdqA7+nA=;
	h=To:Subject:From:Date:From;
	b=lphtJ7k07O8riZpI0B5GqWCNqUcvepEjWVJVa8EMqx6YKNMsmLqx/nhDMgNb8spqD
	 DwCYrlMIkrWGiF5jXZm7j/luj5AGF2WrPYys04k0Z45KHucphNdWpoKxq/V+mwkBiG
	 /g4Kd5XbucvofoQOdMA+t3yL6C6J8kV5ycuuil3i2xB8KHJpJWosrQ+Nx3R2ZiVgvf
	 O3KjbYpcmlL/njVS2lP4hpV5WIaHDkc0ojlviFlULj2hO1VWMouvnA8mmFpLYsjoWC
	 JRMiearSWfbeEqNrqV+Ox4H/kI3cASDQ1pJBu2lLOCK0hvAy5iJQDUN+6cg5Pox99+
	 6xTPcZmqtViww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8A8CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764145368.16339.12591578847892743232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6840c55dc173c411c827da6849b952b741807e7341f44928da8956eae6eba33d
Date: Fri, 01 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777641453
