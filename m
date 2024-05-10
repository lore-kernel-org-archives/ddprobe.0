Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5189C1311B9
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715326343; cv=none; b=L6zeJuYeX1nV74c9Gf5biuWfZWdFGNwaZaJZsbSZvrIZX6Q68/h0e6dJFxJBm4bzN6dbvbpGp13Ohn0rcX3N7CqDOjgijaXbVEw83+mbAvOTFpUhbNVpdmsIMdf9tPPhaauEfbIQfgtldSk0MD3i4kQsouxo5UZ+MZTxwbt2eBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715326343; c=relaxed/simple;
	bh=sNujs8+kfACDIjaTupnBqFTK9uMlgH2Vxsfo12dInvk=;
	h=To:Subject:From:Message-Id:Date; b=oXwL0QwevdG7af4twbOQZMZAe8OnziHux02nBPDW8W1DjRQXFRv+/Axgny3f6fqwbKz4GIPLLamJzKSc2nYoXkiSP+5+XhdkfgopKRMtwSTlXzL/4bYcRgQTJr8iuXcM+EwRqKXAVq4gYgxKfFx5TqUUm9L/pJNM0EG2C+Gpa9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmhNme9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmhNme9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7282C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715326342;
	bh=sNujs8+kfACDIjaTupnBqFTK9uMlgH2Vxsfo12dInvk=;
	h=To:Subject:From:Date:From;
	b=SmhNme9moq61EEkqDVNg0k1Qpwnn1CLlOre6XzhOrW6Ntfpq2Jzar99ZRMCDH3lAd
	 LtDv6BzbvA/wYY5TI2fOkJ1IF05t2kI0TNYAwzZtCixD3Du1zXxIANB0XcNZPs1pc3
	 mIgUJ9jMtCtriobQsLuQ4dHMv2GSLLypyFziMAEtXigt7/HdRukUXc1PZotLsAnizA
	 canC8SAbvxNvVjqz5KHm08/Df7lT9jKa1QSVLv831W21Ba558x/8G0wfuKWMsws2If
	 SZPDe7SxPlzSlkxtKfRCCESlJxiZPXtlTtc2ZrLMLSzXZJL7Z508KJbbKaDb91vZpb
	 sHe8+PAo7hs2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE41C25B4F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532634277.14806.17946731053260901205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e641ce3f6da018a58ffb9b84d0a6965b7aedd85977b85e8dedf7216541ef107
Date: Fri, 10 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715326342
