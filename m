Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0221CFFA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746034194; cv=none; b=Qmu4airg5cvVRHaIEKfCYN9suevL5FK+S1hex/NOtaOWWslayCRgOVL+4OfjK69lzs1vnH7Y2uPXRF9Ia7gK1yQBRNE3AtNqj83ygrvCH1cE7fsNfLzHPfaVRkPYGumwrp/qikBypGtOCzaAKnT4WU9/4kS+qPD2xYYHGXespxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746034194; c=relaxed/simple;
	bh=c+kw0uXUB0TieMUg7FNvOlKc4cXCc4wZTRQ+99M2iXk=;
	h=To:Subject:From:Message-Id:Date; b=fwIIOp5/Pteb2nNkbSTeUqLm/3zKNq+n/uQ9XrCAsKWo62p+pn1ECVCu4Ame4rgSlamTy54xUJIWl68H/ZSf95/WKUj6gH5wHjiKY/eYgEmAlBBbdttxpCYFVwjqdFZfRkJQFjkNhy+C6dFsalQJ9y//hBeRPsgq6n17O9+QlIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cu85Bj/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cu85Bj/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746034193;
	bh=c+kw0uXUB0TieMUg7FNvOlKc4cXCc4wZTRQ+99M2iXk=;
	h=To:Subject:From:Date:From;
	b=cu85Bj/XPLYVGZq/N1p474NHtfadK4w5CLDfpgfD/6LYawK32fmSdSZPR/B2e9vc2
	 AjHpbqlIzaBPFBIJlExF9Nnpo2EtvhUnu3sjNkA7EEBKVTV6lT6bCS9xLbbnhFU6/p
	 1xp78szHvl/LAmUyWA8y+dgmzHuWmLP+b9P4GOtgJFR/CDE7jl7EPPOlxVXxIfIE1h
	 AvdiRe4G1N3sCadTa2ZGVqXNWlJvdbSMYyRHFTny+5/fvv3Lo0VIrT6CUGS4EzqnrT
	 hUD+HyCSt6/9nqOPpY2WHGlV4FxroFmYvPR3mjtzHQXABaxw06BbEjqkPYF595fEtn
	 W+l9SG8cDQmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94327C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603419357.20637.3877888716230355779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8838ccde681bb8d90cdf5471ed053adc29a3d4d3bb532c13a2e6835cbc38164
Date: Wed, 30 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746034193
