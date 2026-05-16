Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA652EA749
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778960434; cv=none; b=VxRVW292RBOWRdDjEdl77wFSKC2NZqtI8esbtKD1CCbPr0xu2EJX1Ye+A8lTQod+23n+95pvayugWeS6/mev1/0KexNSl37gm+ahKdo34aW8zxCtUu0qPsaUKd1v9kuxO85MlqYg5qYF13uVGZpreWhLNURfghJqE8/KuX7AbMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778960434; c=relaxed/simple;
	bh=Ses8bJvEVe6hhq55jIzNTYRL/cCBvu0Fry8Gf0XvW2Y=;
	h=To:Subject:From:Message-Id:Date; b=o0fEE7oi2gfdqPMuXHH3h4cvhD580Z4fHy/UNDL2RYovgJERZ42pSnp639vjJsdyDr0k3Rzm0xVbAsTFJ+bNTWpv3NDWHotiE0RuoEe4jQBIq06tmmZfFnW05csVaCv+4wUU1pAvZwe5f6oM7dBa3Or6L7qRD1d62ufQcDUp3SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBe6SRkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBe6SRkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25D7C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778960433;
	bh=Ses8bJvEVe6hhq55jIzNTYRL/cCBvu0Fry8Gf0XvW2Y=;
	h=To:Subject:From:Date:From;
	b=GBe6SRkctmF9RFZRz9kUXUQrUWScCD1lCTjjr5LLtEMMphjAd1kpYZgvu6OdCqrVt
	 d4M7+yEZ50Dtx0b2yAqiZsaC6PwfhffBx5JUzRSwVBIcRb+j9WiyW0BUuFVSvhYSor
	 3YDR7ZYNN4lXRW6j7pswafev54AzY8Hzd6qYprGfoPUALV8A9Y/FnJbhyWQP1oAGc4
	 3OT8ViW8H7goGOlp7rPKI+GXMyVJoaOtI70/3jBMrk4+l9Iobkiv1PZkAcwUz9CpT5
	 Kph9pJFWmstHQvRKlyRyXd0JigrCbaxH7LjNxotRaVBM1wEN3coVkdWPlUlmR/9LKG
	 UjtFzuOnMs0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0BCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896043368.29365.4634282585767584017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9301e6fda14117dbbf8c287761160b1e4e24675e735b6713b9d0baa2e8af085f
Date: Sat, 16 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778960433
