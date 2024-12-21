Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D13FA59
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734746154; cv=none; b=MakvA+ePEZJ2/uykQPU6FAqxFyBMAuAJCMeMpLtzxm2RfTTlatYDNutWIur70w+X6hNYa6jJYhtzRBNqAhAWXhLSBkRSC1KIN1wsJDL+pMv8cRyBa+W56KV5fBU/vMiQHWRf28wx7E4/S9MEFw7SkxUVz53VZA2AE8QDPUORZZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734746154; c=relaxed/simple;
	bh=8+1IJ1WISUXQoUhiwSaQO2CqiZD7yRE1odfDrP/OEIg=;
	h=To:Subject:From:Message-Id:Date; b=qQcYQ9VSu4kWp9YlHk+XdkSoqRQz4WJXMDQFfZQchMQHlfynu4LCLRua+39WoCszb2VvnjA3vfFfgTeJubX07RmT8fubdjbR/o7xwRYraw3vOf21twu8+EDzClyvizUvsrfBAb9OQ91WgHRhX1EI0XKLo3zu4mkNNamt5k1HhY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUyKZ+P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUyKZ+P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF5BC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734746153;
	bh=8+1IJ1WISUXQoUhiwSaQO2CqiZD7yRE1odfDrP/OEIg=;
	h=To:Subject:From:Date:From;
	b=AUyKZ+P1IZ48ARE+/QjmanhP7Om0Iza5QBV/4Ev682BkrdTrPafC0WvjznY9xgb8a
	 RpPqEzWkn+OHxMCYWxp/8LzdO6FNDjTcXvtiNgZjM+jnEm3aT90EMK6L1kOutJT7Qs
	 irkih7t0LWXnWZJU659kbw2B/xt91vnQxEuoEQGjYl5/GNZ1SX2a7j7UFo61Bkpm5c
	 l61J9qye58iVTmpZxwGzdP8dBRMzp4PAuV5ZQ686KRuTkNpH2rhc0Lflkqx3lwjUDh
	 mN84jMifJAaPefru1DEa0bt3I/Pk1KUb9jSWeMf/M6lZObeUNGLpu4ZHqhpyqDm09b
	 aV71/aif7/psg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67C1E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474615365.32089.6230754732162506917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5e39ef50cddc84543507c32d2735191380205ee2b54536758c971943cdbe50
Date: Sat, 21 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734746153
