Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C98276041
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778314054; cv=none; b=DRU64ER0wEwY+NrKXyZmLnTEUAPYBLwZhXazFw9kQYRrEHlvPnzh5OHHgPnroqxn1QCeqD+/d/EyIeHL/n4kcyQme4tZKN4/e6McRRa8K0LAMJFhwWeHjZ2pcPPBhoZZmyS6I0kUcOMroHmsflq5VooYxTegF/yuOHdFWXNPmp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778314054; c=relaxed/simple;
	bh=RkNBPHC6MkJXZdFUrjJvc+aKzcCk6z3Bk5nsJg+3zw0=;
	h=To:Subject:From:Message-Id:Date; b=ExkdBGVqqH69DLmifpF7Vmp+OnvNLvyvtASfxFAcc0rWZHlgnBDVQ8arKzlKjpLfygzvPC5vxbOPhAofXnjJm+Hvv1Sk4lZ0DI9btvFsgEOra3nQ0fAkTSOFRyKPq2oxQjYj8Ng2/eQNobPb+/u4Q0X3dWzgRl6ueWGmfF1B8Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwUUQwsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwUUQwsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16DEC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778314053;
	bh=RkNBPHC6MkJXZdFUrjJvc+aKzcCk6z3Bk5nsJg+3zw0=;
	h=To:Subject:From:Date:From;
	b=rwUUQwsyJwmJ6ns9s0koJp7Dzwi3ZO7nBLFDu++rmqGdeW5ENIZ5tQaht6APeTCIH
	 rnItMtaRlcbGL/u31XhFhfBSE8L8D3Wes8UkKSVtnNEokUEF5iqHhQDrRpSbQ7v67c
	 r18vQrADsKG5vT4s81LwVxCJ7PmtPD6UkbPBn0y5ZaAEhLeO/W64/3h83v8r4h0e9/
	 jRRVfA29FyJ5htJ8/L2zLXS3PpOB5aJpww1h1AK3JiVzJUanKROkdHT8ypmySWfO/R
	 4+9qV+7J+ZhW56ixSwEuNIQvQWSDxCUlX+b1Ue2nwKRTQi8GjYytW7u7gb4oe8TUJS
	 otmNdzUVr4cog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF9CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831405369.31304.1612109375859969289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fc925667b914b693f1bcc14f006dad0a1f800644832c59e8ca2d50d998d07d
Date: Sat, 09 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778314053
