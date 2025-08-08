Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77B17AE11
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754636994; cv=none; b=sYQreLJyAp6Q0fCLFTRcToAxuUv01d4sTehm27a0L8mMqlP1+ULtA7hdOFC9GoeUTUp2tUojsaS275sr+hA0U9Be6uSs9OcRYIRGFCWdeACjhM4JEfw+67chXnBINjtD7OMRYg6/wTY/H43eU+Gs0JBTZ45ursyZ2lY5zamIZVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754636994; c=relaxed/simple;
	bh=gqM+dVDUUk+FjoZsbBo4Y7Vg6SgEek7Z4r6MN6u3o5o=;
	h=To:Subject:From:Message-Id:Date; b=i+lV05LDlQctUtwEEjeuG6Y74ex6chnlwDsTkz5XUCFd7MnYItk8lsnO55K8bs2Uv0GhQydoztMoQWpCG+7+9yKbETEwVlZxBN/9/6SCt6xlguHujLHJMRN3r27NmB/z39NwAUGYN5VVjOnnp+oZ9fCbW3iiUMoNRiqNWR1irHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV7tIymy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV7tIymy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD62C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754636993;
	bh=gqM+dVDUUk+FjoZsbBo4Y7Vg6SgEek7Z4r6MN6u3o5o=;
	h=To:Subject:From:Date:From;
	b=HV7tIymyyu1pdF/kEP2j5HaxLVPH+JpOFS2VuEwwCwvUBDbm5qygjwqz6mfMUWQ0B
	 Tzp4eX5fPU4gTU20HajPvTRePvj3REgH8V1F2Uz7zOfEeb0kRMeXf4X4Ej4cNNvWHs
	 NOG2hwCTdPeKnOxPFMuOtQymcqn5Fw76xIM4W1UMHaB5D1RNT2usKO/ArCZ59XByXU
	 MllPclb+VCzXXcX5W/tqhyGfY6BYtkVdmwit46pzgjOiIUo4SR6r3xaFBQ3kCe+anp
	 Yb9bFGxf3oTfqtrBO9s1iFMUhNjLe5lB453GI0iL7uOf1NAo8PftNfDRx7VIZbhBnF
	 xDA18VjA9SH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E350C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463699357.11882.9741958591031740398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db165562d549c991b47ec1fbebb1f39b484e47392dccd3be9d1e3a25632d8ec
Date: Fri, 08 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754636993
