Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500E813BAF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713886823; cv=none; b=tzW/ckPswwvrpiGP0WwNR2k9/Wx4gjs/462e5Wuiv9lkiAD1hgybP+bUSDoQS/NU6/kbXSC5zjHXzfoFICC02gnZJg0fOsZD75JFbmix6SIhKF1xS8ED6zWLsN2+yUSnipW+Sw8HbE+nuLfilcVHsEIjk+cSgY5bGq1D+x+1Y18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713886823; c=relaxed/simple;
	bh=oKfnDszSvOdqx01cX0ctlbjcXrGpprAtTkxaMFmvWe4=;
	h=To:Subject:From:Message-Id:Date; b=OQ4GHj7K9eXr4s5g0wdcK5Lh5xCQiDsZWU7ocfWC68qN7HHD50+ucHXvsStDGBnyRz/JzjeyoPn8ivaZFJ3HOVbFNtb7qCUDcBfYamtCFaYkboBnjErfFAx3xXa0uQTgbErNyJnoJGqSulADYqqJWfX04CTqY9k97VFFuVGAAOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onxVK0Jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onxVK0Jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D23C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713886822;
	bh=oKfnDszSvOdqx01cX0ctlbjcXrGpprAtTkxaMFmvWe4=;
	h=To:Subject:From:Date:From;
	b=onxVK0JcVOVuPwGpXsfw9eOwIMjAxRG0Erbt7n0J0Ph7VlyScVdTuqMQCxsWt8c0G
	 x96MbaKe3EBR//8zzp+ncXiEXYEjNs2feJiqUjp1GGLxI9u6qIyy5oRPDfjcvILTE2
	 Maj1JFVIoh60bucPs3vrYoMkJ1xAc99HLX6MWMtmZwycj+GmYUkZCh2qGjOvAewAto
	 ve9l0VZWbcabsgm03wXNergoqsf0kIhJ4iVOdNrcMP38Ii80LtWrV5QnjhWSfEdSCj
	 /sUa/OFIS+fq2C6Si+D4MX0EwNADwkQS872xTQsTOqwh8n+yZTuj+67KKj8K52ScS4
	 nd4wdNMG76M8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4845C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388682278.17129.6057534305830074058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f68c641525a3079b15c1a43a9dd39a2000bca61e5748cbdd6b2af3a10b5c3ce
Date: Tue, 23 Apr 2024 15:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713886822
