Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBA3311979
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763508714; cv=none; b=tQBiiJs1HV02JaUuHAIVIPY+0wma8pAJ8afFBxNz16l7mybfi6J/L+ObmpGUj8hPaQSv1FOdebwYvEz47SRpi8LkJTmQzUqgKCv7nI94WxaZNsQdI7OXM/MAADn4D0ZxV7ECJ0ILmTuid8AY3vRG3khaU8JwOqiK2O+mo0PKM3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763508714; c=relaxed/simple;
	bh=kJvZVME1Z986tVT75ljbsSBlbxkerRSagX2U4g5eEY4=;
	h=To:Subject:From:Message-Id:Date; b=Qr+z8pLcnEGl4a+HjHxCE71jefLZLugabc0LUNm8OZ3uO+rjKETnhxQeU3Ng8raoyi5ju3/tH6PFLnHRFmmPv5A3AMCEhpkS4HFpOldhPaPMvgk37ir8WTRpeMI9eRyvHy3KRP92kVHp/JBBY0vzt8UKlzcePZzzlCuhF0eWFfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIsMMxJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIsMMxJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9770C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763508713;
	bh=kJvZVME1Z986tVT75ljbsSBlbxkerRSagX2U4g5eEY4=;
	h=To:Subject:From:Date:From;
	b=bIsMMxJvetNoSsjFlhk7NsCevg7Opymwz3yVe52BKDolyPcsk20TFQOg0JBfgfDz4
	 ltZaFGOt+TYSD9XMSeQvbtxBTk7K+ubnQQKCdylbgJpHa4mcMcWmfALrf8YWyy+cVs
	 23hQjPtEKIv/ZdR6vBIab6e5lyNofjZ3kTa5Fa4fA6Ancc+MAzEnX5IRPt9/IR7L0r
	 d12i31AYf88qLWmoUi6JBnRcHKx4H4UrN6lkim5X9NOBtoYaqzmO6vY790H3fTQPMk
	 Cv2zVYF1lhEak5uu6ruyQSmH4oUJIXYTkLRFnoOxITCGwpvddQdSK6nW5sWLVnrVtd
	 YsTqLp4A3XhLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCACF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350871358.19173.17852551066380879776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70aeb0d1637dd03d24472a48f920b4d154ffeb9c413ccf402d0112d1cb45e28d
Date: Tue, 18 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763508713
