Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CF333E37A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784784574; cv=none; b=Xxp5fHD8mTfqI69kmGW9YsS6w6xCQvMOH1u/EFEro/vrE4iD7EUtmAin4hbj2pyAFCEhX9WJo/8X6+Vb+J/wj8XmIlP0UStVVAmUNAYDWTZ9x1c1BiipQF1xFh0106oisX/hLNppESbaxB1bZfL52hAq3LOhds0arL4s+deDjIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784784574; c=relaxed/simple;
	bh=ubQBkzXsBfGu9mAXjpSRgY0m9ixoVQ0fZefYQmKCUbo=;
	h=To:Subject:From:Message-Id:Date; b=ll75MRrdC4s89j0HhkYaLIzq4EM4EngMJ9ql5B1lRuxUaHjBfT6oy5qIC0NY7pouNHK3GwVWj7XgYddSAiJ3EEBrOwvAOHO1e40kwIwjGHQq3IHLIPG9m4vToQTJLvSMVpOcg+4qF8GLGOjKpNws9iCN/y87XbtI+bUkrg1eJcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCGXa7rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCGXa7rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04E86C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784784574;
	bh=ubQBkzXsBfGu9mAXjpSRgY0m9ixoVQ0fZefYQmKCUbo=;
	h=To:Subject:From:Date:From;
	b=mCGXa7rmhWQFY9Lx8C6NbTkKTSZdelH6mEhREZ6vLa88SV1SMGybUm+qM3x+V4+NV
	 WdT4eFeUyEz6hg81kWlQ+nefj8bBDkybNXmQSBTad1NyNtEU6NvdTqL/+fFrGG8Yla
	 Y2x+jAnEPJimLsj98rcAuvvn78vBPxNAmkNB+1wwNeo/apu9LtaP9of2/3pNCPoh7C
	 ewRatzuHJBj/0xzmYnval53higjyuHDNY9K6PYvYDi09x/IBqMYYgNzcaD+NVyRwYn
	 0h4I1aeIwuQK8whuOrlBzra2l7jDpT9gQyrXRhvAPH08ujI80uf+2OuMp5guBgCDvY
	 +Z4hL5sVQA5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9996C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478457370.18974.10460609377411962611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56b7d0811ed1d7aa73a7de1d7fa76923f7f8f906850c5032f87d920e682d5dd
Date: Thu, 23 Jul 2026 05:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784784573
