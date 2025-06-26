Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC7F272804
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750943994; cv=none; b=R2yBkejLfQ2UD+tTJr/mv3Gau/2A9VA+irruuAp/kGY9e2dBOifxxfNr+ZXn2Ht7mgkN+5ywMjifyuaLqEaQOZtXDkAvjlwuyEbTI7RujSyIQkdmZl2Snf8nBu3pvm4MtIBrPQVoeyMuTzibp9+bC0jnVyKS1LZoe9bO56ePqMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750943994; c=relaxed/simple;
	bh=hJtXkkSp46DhoVSr2RbjnuUdkCUdHLm13GTJlcxiAHQ=;
	h=To:Subject:From:Message-Id:Date; b=cFsltknxyel38gyOOtuc8dHRSIk52xtTfNh4bRfU56pcx6ml/uWhJSlSbQ9ADs5AZueVcRb4Dn6toesgkitl2A+moRvKqLqvRh4AQWmcNfxvelOonMQ7iZgVKtUFf6vqnqliNfBbJ7jAoOXgij5z7DQou7SoYoOGLEO3UQwqw6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwix8ANh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwix8ANh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750943993;
	bh=hJtXkkSp46DhoVSr2RbjnuUdkCUdHLm13GTJlcxiAHQ=;
	h=To:Subject:From:Date:From;
	b=cwix8ANhu2j7fjq/r3JNqf/ceA+jLQzEKWvUMWn1m+Ysr07hs5LDwTqD543OEPVSw
	 NsN1GGEQgXXvmq9Epj4a8ci1I38won/3I85FIMA5IMzJhnZegqNMKsF20bsN7JVZT/
	 1tn4O58uQv4WyUy6GmSaCd/5kAiCPFVOtvxzHQlLoC9yPOX03Pq9Bdg2KI7d6drfv3
	 MuDISzg4HPKDJJiF5JCBqneSuWNEYSnYxZn0fDfNysfMQRFA+Thxy5SS79LWKGRhri
	 k2Kp4htrIjd0m972Sf1RVsrs2p0m4Mu+a9AZg1BmWwq3YtPVMf/w0IyuKGI4q/QhQy
	 7kd8/BFyl10xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADBC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094399357.1278.9660003272056994298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64de1376c15a75fcfd4c8eed10238d6c09dd441f56588cf3510464bc8ce056ef
Date: Thu, 26 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750943993
