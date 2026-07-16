Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DC3859F3
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784227114; cv=none; b=TKqw8CBqZ5XI36svKxzw6jsYGJgcb06JDb4cWMTFP6UMW1B/zIjU6MVUGZT/kzxQZVzGOqh7ItuP6R6k8iF/Z8Dc8gLlSqPcNVoNi2H3jy2grXfLQs/9XfPXNtd53bJW98IcHn3PPrrUcTCq2uK3OMYzGHS1xMkMwTB8HqB+t/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784227114; c=relaxed/simple;
	bh=ZebFpEl8aabBegNJyzDCCq1yUeROfqCQdnvZVoq67Qs=;
	h=To:Subject:From:Message-Id:Date; b=kPg0CnYRxyiDzh3A51X1NoP7Bhv46UqERMiJOS3KcrH9ZZSIF6Q33o0V0cS6iZvXVpQ/mh1j2gPrtcEWr9sUDaNH+ILQka8+vyiYaLZsqB3BPobOP99foYscHQmHeuxupdHEsc4l7q7vjD4lCc9Mg2vl1I507D05B1/SqATUFss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItXrZJ3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItXrZJ3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE262C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784227113;
	bh=ZebFpEl8aabBegNJyzDCCq1yUeROfqCQdnvZVoq67Qs=;
	h=To:Subject:From:Date:From;
	b=ItXrZJ3qFJcnRRNbVQr0si7qK6mzGCB//zaL38Bg/Rp1rWwYO+8xIOdSyu7TCji8d
	 Xhw/4GKQpNC5+pp9vgxiNuwqhrz0xMS2Tfls0bq/paYHTEEK6eNg6XhWqdxJO0Jw3h
	 yLIv1hmkPHdqom4xkOhmr6BJ/BWZkHFcLO803TVcw4azKz57SIF/KZPnIZgIqYC5y2
	 a3seUWaOlDpRgVQLD6xt3K9jnTQN2bft1oNR/lBdJQUdvtLVbJjg8Ix7IUiNb71fzS
	 b+4SThMVxpAoBomF/ErBPNm8/TEG88e7gY7xgsnRNKZtduIIaqZ8rUmBMa3AxZazRJ
	 t/NSEVSjoxWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946FC44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422711368.30386.4022752268413110434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8f1b8426375fdceee2e770c4821db6637029366bcf6e4f54205fb738e83c00
Date: Thu, 16 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784227113
