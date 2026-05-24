Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9B4224AFA
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779617554; cv=none; b=GZedgxpHPMW9uAD/fTxi6K2Go2pkFRAd4j6Ywd11ANxPfkfNlnT9zKc7Dt9K3qFY9tM/jzXbrQSP6uBp55txQ1ill5vNgZtPqzbqA9szwPkqO1yrmf+ZFfAo0486/110t8szAT9BszK7JzWZb0Va/uKn1Q3AymC5XiEnyrIoXzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779617554; c=relaxed/simple;
	bh=Hot8+Ukj+zpsYWEKs3IvrV5qciwf5cikW5NgJUCkmbc=;
	h=To:Subject:From:Message-Id:Date; b=HPcBlgHYydpRVBroC/CHry4snE+uO8JrRtxGVsPd5XFEW9CNRlwVFnivI2fMTHWBqi6stK0qIi4pbX+zIKsW0GhG7ScUtovLX105HNSvAzMmXqKyoKTnjtxWZIKfYVeUd8jVeLZMjS2BP1d6f99bpmqFKYl8YwA3v9IJMxgtDIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W116LKur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W116LKur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C9CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779617553;
	bh=Hot8+Ukj+zpsYWEKs3IvrV5qciwf5cikW5NgJUCkmbc=;
	h=To:Subject:From:Date:From;
	b=W116LKurEOVAwSBhWa8ZSNFE4by1aoMGwD9kOxr6XJPz+C74dbxn2SLZcucLlFHwq
	 KMrd1gnWb8qyN5SuQxqPAhz8u3Bg+tCAak1rQZk3OH5CpiCOUt1z0omkoOR23ASfqk
	 vgPZS17Ans4yetoqMQrAV6Jq3w4b9taTkNhuT+FANLUiJNWyvFEmwErZDXLJBD9fKO
	 znRzX3VXcqvPsXc+VK5zhkf/pQCWeQpvyCGbKY6DwlYHwxuczcUpDv3zR27DF934uE
	 RvXfr/KD0G9VJnNYFhPUKQgigXMCeem7AGcY5olIAyvk4WSKKdnXyXJCxlfnB2ETGT
	 bQRBOgzF6Zr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9D0CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961755370.9120.4132262621013923550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de15fadadace94fa303f4f9f3f24f84de9c9d2136822d89ca8b39c9a820cc43
Date: Sun, 24 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779617553
