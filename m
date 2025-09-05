Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7263469E0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757072394; cv=none; b=rYL870fmnfQjLOG+sgDZ5E/rl5eL9l/DlzS+zayHhlP123G+inYdlrXXfYLVXP6/kaDhPWhnWDSPer6iou8fINdsrNWRERW3skfcOpxyQL+77wVVVZyrboGa8a84j5U5QiNaJG/AE17o8iIQVBtd4KteB9X4KiXR1y7SvvFEzeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757072394; c=relaxed/simple;
	bh=j4g78oDxfU1BK78PK9E6QyOEOfRxtz9rsw16X5iJb8Q=;
	h=To:Subject:From:Message-Id:Date; b=DXqriycdnWvRVz96EtwtHbeXe9YfcH/l0CU6BnsdU0karLnYiNoCvM3RSvs445OLbkF3FWgyKotNYFpIrNldUvXTFooa6+nKttwXjM/fzw+6NKFXcco8tlC+TsqQN+aJ9G8RBY33Wq5YeE4aBx22Up9MKnOwZF/bg2eUGPxqKr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUumOM/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUumOM/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BE5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757072393;
	bh=j4g78oDxfU1BK78PK9E6QyOEOfRxtz9rsw16X5iJb8Q=;
	h=To:Subject:From:Date:From;
	b=mUumOM/SqAFOZau+pY58sXDea/rs7DkboqqJszglRX3pNS9K4WUOl7PzZPdwtNcYN
	 gcr2OlYMk5bOOmaD64RBMCYp2N0NQhHadVaIkV5HTb/x5+Vg4EDzE1po/gEZnAcr42
	 59z0vmgPbigMYLpFLyUXRZ2TRY6wd9TVWCJwBGFCfCaiPVBa1shx30CcXNrvhsYkUZ
	 qPH9w7jrHRznDs+dhrvyK7I8IMkBimlM6sSjpR0Agb3XYGKTPlvhLeR/IDgTAZTDNY
	 as3lmh9PsRrlBJB7nOMQKBfGSCA+hiFV9nDL6wacbAsg/lbDEZK3bjJkwl0dsemPmW
	 d3Dqawt3G+Ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAAECA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707239358.25672.4790013708782791192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580a67b1458ed0f56c5fed75f9fd26961142879b35979ddb72adc4b1eb59f159
Date: Fri, 05 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757072393
