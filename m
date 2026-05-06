Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D70B3DB646
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778066854; cv=none; b=r/XotJEJSflzZOhi+bwE6WrtS+0IC805IEvsgZGvRYQjxWCK4PuqEQgfcVyWIptmxD8gDbd+GG2UyqXcUXEcMFszrEM9jW27/+1XN5qWEW1tLIz3q5u6uuh+LwqLJWmPmK50XvZXkPb6oB9hiby4cWcS0lMYXwYqz3QlUQvBFI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778066854; c=relaxed/simple;
	bh=817GQUzDIT5AHJAm2IWdnSPriiEeSA/c/E3Xqf1O9oQ=;
	h=To:Subject:From:Message-Id:Date; b=OSujb6X0X4ZhNwd6H+qS8pygXTa3puyPZk12fJ1q/x6Zj4/NxwR2qEaTieXelbfid1wTUxMFscH5ghczs1GX4GfbkkezG+di6Ne4An69mMNfxGcaM6R86ameIjY0rx47gpS4ktvcuj7Ii9+zeraKp06nsjZTHiJKOQ7yEHVu2Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJBhO3qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJBhO3qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BA8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778066853;
	bh=817GQUzDIT5AHJAm2IWdnSPriiEeSA/c/E3Xqf1O9oQ=;
	h=To:Subject:From:Date:From;
	b=oJBhO3qjuFRZEpX2W//IG4Il+1EldKPIgk39w3Yde2F6yODe/f6RD60v33mfXGEkT
	 WS6wVhXRwhQA25xjYOzCVMkEqnaMvwzhYIn/OtBB2kXv/Z4Pe69MMg76M27eObJ4pk
	 7qzzhDAbauyCnLEMyy7UXIAA59LWjqoNtds/tBUmLq30HW4NlAREMAdWL6aSOItOYj
	 QnkBcE5KwVQu8zClrNePScjotHScDfSldgUe6WE7r0myPw5jrWwvVDCcFcMVrMJphw
	 B0F1ep+Cj/cjXMWwIJTHsW30h72N83buP15nPrV4TpUhLKsbsv9WmxFDRTMoTGMY3h
	 DD9Lkg6dEr1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD4CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806685368.30054.11956129561333376182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123e87f4a2040a64051041440db7e57b95db8632ddb615b5d0254e2dce915b76
Date: Wed, 06 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778066853
