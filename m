Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEED346FA9
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765990434; cv=none; b=pKd+kQjBVZ5s3LhUp8e8TQ4hMHeAjHcJsyrPanO3sju56m0FykVbatfL4PTCfc5gaKHDEPBviCMnrhDsGVKe/7B3IeOPg/2d97fx1q20p+jcoQ76Pn9ma8cOOZNpVnGe2ACbY6yAbUoZj0KgbhkIyBnmlDpVpGspuNem/PCPdrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765990434; c=relaxed/simple;
	bh=X18IzBVgWsE2MOjPC0F1nSm3zRwAhOMTdaY51n5wkAk=;
	h=To:Subject:From:Message-Id:Date; b=Rm3TC4jANBre4o9K2+dnlZY77djCYqZyfzjuxYboUNy20ZdNI3IGjkinMSTRAYk7UHfIUM2ZkO1aOpPFttEwlGGwGxwnTQ8BaQYygPTX3PHjsZLaRLc/5Sd+N7wRlZNmRc/M1w4bSbZao8d8cPy1UYHFCeorMOTcFtP9YTMKLlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koXsAsCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koXsAsCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DA1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765990433;
	bh=X18IzBVgWsE2MOjPC0F1nSm3zRwAhOMTdaY51n5wkAk=;
	h=To:Subject:From:Date:From;
	b=koXsAsCOHodBwht06FDui0aMTtNZohOdtj1RYG08N0Y5KyohUJ6eEmurQd7Sh+f1q
	 lC9pC1JpPlI5D57AjwFnLh1MJF81k9LeZmCXzuReSEEhZtfbWepR8YeBhZ35q3A1FX
	 mHS0pq4xBW88C+EYYN1+1syNQormnL3HfRmUom++l0C/vM1Bi8dYBduCYYOORx2kr2
	 GVTyqd5PsTRuEwuXaCOVoQiBOU8z4WUunwZxcnqTwKq8oNbK+OIHu3urpqFSCPJXAB
	 sFlksMg5AZMOg/+pihS0kXcPVSzS1c0b9XMRNLgkwSyqutDLGvY3UbuE3EFdZ1d+3e
	 +YXa0o8tS5QHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F773D65C7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599043361.18054.2029912647046522556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f826d39d06bd51a691ed49cf3f0bfc50becfa428b494c78752a8aef76d95b36a
Date: Wed, 17 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765990433
