Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3125634
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735108554; cv=none; b=RCRZ5Um+NMQjrVUOA23zsa1l05qwXqYDAxsa8QaaOOqPHXZtyz755H2b1RmtwFKZNyH5RYMFyX9DtGX5O/dW468Qfly969eZ2l0kMzj1bKLRQxu56k8yL8QhocFLqyndCn/k+kLeoAiwHVS1YI6pOvGt2QEjNUHgIA4QHVEotcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735108554; c=relaxed/simple;
	bh=tUmgoHZGgQfW3R/GBjvgvTWxVCWnbRFFHbCjbYVzgOw=;
	h=To:Subject:From:Message-Id:Date; b=qn/L4xdzT4X9Z6r0bTrW+igEG2rCPSUiLQodEryB3jAg/pX/X27y1FpLvU400P4aXK/6GB1aVm/ZCWPRKN7mGbOejCQcFwPA3MOc8Z0NhHrzRlqfLtibI3Opro6hZhR6UdErTRqUs/i0LLHnZrrPLADntcv9ZI7U9AjHH4VX7z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N43H/ZOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N43H/ZOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE688C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735108553;
	bh=tUmgoHZGgQfW3R/GBjvgvTWxVCWnbRFFHbCjbYVzgOw=;
	h=To:Subject:From:Date:From;
	b=N43H/ZOAdDlwppoPteMuPoSG5/rtc+vAuSwMu46BoR75oKqL2/uCJNP9MUEhA93+2
	 rl1sJyTEs//Ld0CyeUWH+Xvpsxvx3FHvxIBGW3Y3PY9I5ICewRG8zzap4BggUlzmEm
	 Ydn7faln6byiFlGT+gUidp7ImhmKrUWLsqE/kygkhqQiAHKV1qg2FyyZQALaO2RcY7
	 tulw57N8zD0BXm6JuZmhZOmi24tPVe65QGUD6W+ld83ONLl0vS8IPBKFFiIKE7Hd2T
	 P4emwMW+8JLv1ZiY3ywQ7z4O+Zmx+U3tihFKYWY+XLnIyP1SoF43lPLL0biu3Da4JM
	 8TPxVQnx4TKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D0E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510855360.4367.14179433953038995187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9778928feb272bab87a2eb78f0dea53c6df2e78bbd091c8f705e2afd0cb125
Date: Wed, 25 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735108553
