Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C061DF994
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751195995; cv=none; b=OfZDvtomYG2cfp/I6rxGec6Dj1ErhXhYAaBP8oQEskdaxRdLM3PbOLkVa7TBhjRPcNTGDtD63Tux2bOiGNWL0XBMT+h3v1Mkn/QKwqK2HN7fDnfDvQ5ucVh3xKRNRYaG3QsIz43uZLjNapaFf5qsl6eurd2gCkQgYQv33mp2wag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751195995; c=relaxed/simple;
	bh=n8grL9nChwXzjmpv+YXK+tr5B+P8z6cjmjEstNg9Ijc=;
	h=To:Subject:From:Message-Id:Date; b=SWNXsSnkbUQBZJOFaCRHecDwgdKCe9o1gIz2Ne/HN+P8HKlSWdXoM8/Syf+FO/8LYJrjnyOQwAN6n+I6y15Tbus5OoU4mSZ4mcNosgJXtKdmcb2oSRj6j+6OY1S77Z3aBPuGav8fNAEzGjSXrOb2afGC82BgPKx4bJQRshIQza0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFZt3njC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFZt3njC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A248DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751195993;
	bh=n8grL9nChwXzjmpv+YXK+tr5B+P8z6cjmjEstNg9Ijc=;
	h=To:Subject:From:Date:From;
	b=jFZt3njCiPDTD3DYk4bonXsKO2vt2hbmO5kKveyYnxjcQ9PR/fLOtsDF+RD6knuJB
	 i1thF1JtNYx3Bk3baFpvqb+0uflHn/0co1G/Nt0XrCtCQ853H/QGjrnl5fZU6M7wpF
	 zDVl5IotDtEJ4nTnGpZpEBp/xnIOdBR49jbdIjNbCpta9a7fJQmJq550DAqbjScZCz
	 PbFZ+6TGF2m9uAs/puF3vLoG1bVjmQX6DY9tRvHFY8TyZ46OwxtobSUKt288WP36bt
	 OgCHvUuqypNA/8GuKtjr7wPeFBlzaxYOB6tIr7WWhMC/Mp1XaGwkFl0AzInj3cSuTX
	 jjd1HOqpG59uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B63C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119599357.17030.9087895512615090465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501da986a021543a26458d5d314dec0319f348a1b8f4ca83a6708c179764fe62
Date: Sun, 29 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751195993
