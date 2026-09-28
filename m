Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE12359A66
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790559034; cv=none; b=lcdjcUYgUKApQDRlqNoKGMAgwpCzyc4bBZMQpBWZOJvEfW5Nwb00q/hmP6fD2SCvZqjwtVSIemkoHNnVZqHtYGe36WWNA8ZfgJQ/6/dqwasaGSOgh8CnUj5Plp39Qxfu/7Z0uXrzXmGosNvjmdherNdP9VKGjvTU/yCA1G6oZD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790559034; c=relaxed/simple;
	bh=X2rjmd35rqr3RsBd15WVVEk9m3rov884CwcBRU/4UxA=;
	h=To:Subject:From:Message-Id:Date; b=ozGM5qFOfRXVvFDWNeVp6/q2spYOfXADq4XwYcaRIVb2d6d/OB1fvUkn/gLH9rq5/kONCdihNNq+TFR9tinB6mvpfMIxAXK7bqJ7ZdISSXCRU4mdK+hsr8unt1duPLCOLqqMOP/ahFiQo+xB9CRtC4JE0tiuCJMP7uIXQC36CaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNaScW/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNaScW/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0CAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790559033;
	bh=X2rjmd35rqr3RsBd15WVVEk9m3rov884CwcBRU/4UxA=;
	h=To:Subject:From:Date:From;
	b=bNaScW/cgMYtbixWXxibudmGXZYfbG9zmdeTsFslGJetoYGxR6P2NhnUAGifE2KvG
	 LGJ2uYZK5FMqpxssLhGGAa9Uhieil7mDDPilGzE7p40kn1c7KQ+ZWzXCZfvycM1v5z
	 2i/sZsWge/w0JSLPSPbWUmEZmyFXRw5su5/j7J0P4wFWRbCFQSGw6HZxCQuNj1JXYK
	 5e/+MCfeajQMcNtl57/NhkgLPsl8gdpOlEUKazh8f0xkfLlq4B1enkdatMCEC14kd6
	 +UFsMwI2LyZbELDhVFIgCzPvRoaeb9bibixJbfvy2NV2mdf6K0T3b1Jlylv3LbfG1p
	 ZHFdrS1T17z5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA96ACA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055903375.4692.4222212970782882544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e428968075aa57bc769d8706bf03c49bd57acc69bc60f43e05c4224483d1ddba
Date: Mon, 28 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790559033
