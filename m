Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5C8224F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713897023; cv=none; b=r6dMRKI/MK50NXYsoAlpAwQqXUV3fjFwNaJKcoCcKbPizVfX56T3lhycx2o+NeYYz9E0fmR06ioGazk7MbqBTiUC3JeKTaHbL1ke4jn/blb7RsFF/0S3/jgVl9EeMjtvTsVSSIqQGP1U5BAj5XuKnpN04oTselE9Bj+XMJ/W36M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713897023; c=relaxed/simple;
	bh=df8R9g2cb739g0woR52dVMkYnQ1zLfXHyBkY/YA9WnQ=;
	h=To:Subject:From:Message-Id:Date; b=BLPXEeJIKs2jg3LMjTwx/OKuB6scZ2MeB8PgGOciPvC1DlUELF7+6NJ+ocxWGuWCyj1VAH+CAszM3TETZyBAPHwb0+PJPUuiL+/hr05f3Y1S0WDpINFlYVAsLunV7YzBm5HC/JkzTnaoEqP8PEGBlE0Q8bll4bdHcVOp4qPpSvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6xYNeWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6xYNeWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFACDC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713897022;
	bh=df8R9g2cb739g0woR52dVMkYnQ1zLfXHyBkY/YA9WnQ=;
	h=To:Subject:From:Date:From;
	b=Q6xYNeWLTf9fHtgghe6OGVqDEq6HlfOeziWIXKOfst78XEeAM+N0nLeanTzH9XqEV
	 CmWoDD21OSQMY2FI07tKJ3XFZLLG/qtRp5RSKhDOG7wvQmuzUSJ/f9WBeluH9JRkP6
	 kCrHAmvXyxFGq7rQZzafpuByhGRUh55nBkE4GZogDiIS/PmqRMDwLM2gPdz4PvMGip
	 Bf/6+tFPu3cEObIEWbnraiMF+Z2DBKRzZ3BSbqjr5lK8JGkABqXyT9Vur3xVttWMhB
	 pnN5Ix2zXqApZkIJa9eHX2bF6B5JWNlW4YGbA8J07/RazswR6e4IaI2vJ5yX7f9UZa
	 darw2eGFi8oTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9107C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389702278.8357.569246021574669979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d4361c250fe302b514e0bc2ae0493a7e52d71502512bfa792d219d379636da
Date: Tue, 23 Apr 2024 18:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713897022
