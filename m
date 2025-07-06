Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3F19F41C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751837994; cv=none; b=H7kZR6b5+RM26AqlbCu3KAL7UkaqYvEqLPfJCSvcALLmDpWc6Li1GoemgmDl6qpDAlYmFmT3yNjfu3/qKHggGihx8Sl8cNNBacSHF4/c1H+t+N8t1qScUhTfSAnt6NZjPm8FASgFttO6EsaUFugeoZJ8dUJmt8tkKcs91J+hLSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751837994; c=relaxed/simple;
	bh=fKc4zCoMOtPJqprKHmbjeUi9f4GkyLc1ps9s3GgekNU=;
	h=To:Subject:From:Message-Id:Date; b=h/TikJrE43qZI71inpNj2srTpL1NrOzusRG8sHTRhrsC21eU7id35t/nyjRdOyhbUT/dzO1xXWQzvJFqHYSb2Es+uP1cDM4v1n/iq8fmGS+i6Aw1kUKjCjwb7UJ3Kpu83GcRflUD8ma+Own0i337leZOdtJr7d2HlIJjZjreM+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwW/eNkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwW/eNkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D5C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751837993;
	bh=fKc4zCoMOtPJqprKHmbjeUi9f4GkyLc1ps9s3GgekNU=;
	h=To:Subject:From:Date:From;
	b=HwW/eNkOoSENFeeiRu3ZFdM8dM/cDUxJgZVoB/pdO8DooXzihrU+Qas2vbN1dyLmM
	 b+UrepmHsmZFeQZA4u+QY2xDxHG5AOmrpcSpVe4PLLOHkyxlA2ul976l6CFeWXoivp
	 haJ3+t5rvEBkoYBUGvKLhOvP5EtTTC10/UL5qAfv4sNvjBvak4CAIWmNWESOPKWg9E
	 Q7vY+4qh4V/HRYFkEsDMvkSQ5UGAd9uW8FBF/Fg+381guKDTS35LYJIBIdlqHGTd2F
	 yrtpvQmgpeRNOVXEn3cQHtXFch7rVW58nobktE2mtrycH6PWEzgV9DVJP1whIYkp0u
	 PR8HTF4lPgpGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7BC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183799357.13482.6424599260616377168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4960e44e711d0cacc1f9473a1fe4371eae3b67836b1058d52308ea54ce3fdb1b
Date: Sun, 06 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751837993
