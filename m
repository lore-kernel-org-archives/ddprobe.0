Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378807482
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752192594; cv=none; b=o9QE11yBLnOXt3xeP6gmSdoc35ap+h5KJ3QTl0nzvLehgdbgOAFydFv3mNWp69V+qUoHFCNqrfkNpySkGGBPd8wrquzj8rCfIRo81FdW+SMKvZ9ODXRmSnekYMkjsoY7Ss20svrwwdVns0z1GbdENXxvkzMB+149rVrVj1HHjjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752192594; c=relaxed/simple;
	bh=CW230/EhFPqCPoAiTPxpaM8lUlxX4SVplZEtzz/s5Oo=;
	h=To:Subject:From:Message-Id:Date; b=dHFLUgFuRsEWshoeLDxsBWfKl4EEiyaGnOo3oM5Q+7R67o8DuHWxhgaRk/9d75qEVwle2MyLL+KXmkjsooIiBosgJJIbd/KtNF6pVPFt8tRDYl+eed9Vd0aE1Et+3xCUWCuSXMK73fG67UoLSWjO+8hShgt8ReqL8Y+EB2Sj4QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRpVZl/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRpVZl/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D58C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752192593;
	bh=CW230/EhFPqCPoAiTPxpaM8lUlxX4SVplZEtzz/s5Oo=;
	h=To:Subject:From:Date:From;
	b=WRpVZl/0GA/ZcrHfiDgQ6kjzLBT84IsedcaKCKqyh467sQFDqDuGkFydfAvw9SJoJ
	 gVR5oBq/SlnScwoLmizlpNpyoGy2Cxprj9V09cEoaPVaSFJLmPtTpW9ak5KfIReJaP
	 RRGlbMisKlnguHdCVL67sLWWdFeOg1XU+qfR7ERKYOM/zd7p3uVA0zTeeoCHXKx4oS
	 WYV9L0fZBHB3IFVZPDEeqCKr8ignc2A1/37aGRq4KF2mMjfQh5cE84tpsvPklP5J7L
	 ZzTuphWwxI5sanq4IAiQR8EEVPZw7Z5zKDPeLJrtt1rrG9AQeftTqtGEur7rwePpQ1
	 ZERgA45VoDuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4BC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219259357.26910.13229481852367337631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9736bfe21946faa68a0ca2e1431d87a9d29ae5bd80cc26b212e3ca473643e9
Date: Fri, 11 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752192593
