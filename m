Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE2C1B6CE9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775883454; cv=none; b=IWgYmi/SIh76oekP193d2ZJG6pXaXuDBzCchfrMjmeX46lxEkxJ10oW95dJOoscAL3Y8J5iUFYMesw90c+vB+nwkIuIGSyfMaG0/AbC7uuoEQarXZRJ0/Ux5c2yHCtRiBVXkfDsvmm4wU7/wh3UNXZSyIa6M6KlSqZhF/7gFFeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775883454; c=relaxed/simple;
	bh=HdCuXt103VtVezupDoLhNJo6H4Xj9DtYqBX8GwTnZAw=;
	h=To:Subject:From:Message-Id:Date; b=WAZJw06FYWqY/S43NSxNdKUU2vBXrDcAVFuVVlNbQ6PsRioh40HsiFlj+3rhfURzhsppa0RuTCN9Fm8Fo7Fq/JiMtAb2D8BhFUUENkbcQIn+jTfdniZLKWg23ssnc8SHjZmZbU9j+FYqRXOJdXHCCb7a7SNOWcawfbXeEZ3xybk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLj9dhvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLj9dhvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE50C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775883453;
	bh=HdCuXt103VtVezupDoLhNJo6H4Xj9DtYqBX8GwTnZAw=;
	h=To:Subject:From:Date:From;
	b=dLj9dhvp+pypNxQqfuEN95/hmgshY24X8TeUB9QCf9lx7l04jKhdZbjNtP+LVaHpG
	 Qhhid3akn8ckTobok/mRS1wzyt4ScmGxP36MqzY+vm7wFb5Gr2uD9HpeUq88ZOKWYW
	 44zYfLrREF/Ot3onwuD3nA9Z+t51H8KvI80eWfJeENC+8Ilnrve1FkXBGzL2m5riuw
	 ziZrrV5XeGlukjYxQl+AOdG5YKgzDYU5Q1QAb/EWAr1OTTy1m1z1eZpF1jagJrH7Yj
	 TzfPO+w/W5BqjSaEvuycs4V70CveOOQzkyjrEpBZc5CY+tRLqjtr+Ofttb+jQw+JsD
	 Esg21Za3Q1dgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB27F45A1E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588345368.29042.13729861629686909140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1fff7d67bda81224565ee9533a67d7e01967ab09235119ab5618f97188752d
Date: Sat, 11 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775883453
