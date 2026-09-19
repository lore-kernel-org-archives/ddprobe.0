Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB19321420
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789785034; cv=none; b=H08pxwrLLEoexCLORGdx8caBgODPEJgU4zfiqOqUsqHuc32UYoyu9frDAC8BkqzqKWTBAmKd3E/hBkJHes+v1eA15b3FSS+XysqAkyPMcsIrdbqYQHPcI81k5GY+RyIYdgLbnbMw84u/ejlh5CBfelQ9iAgvKB87B3JgDE2xXhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789785034; c=relaxed/simple;
	bh=geIgHbd74LSVguzmkN0IO3kGtzWnRWmuvVw9h//kVxE=;
	h=To:Subject:From:Message-Id:Date; b=tn6LtdvacQPi1DE5VQVhkAW1BomBuLq7tX0vU6lKTMH5K0b7GwjboyTjj5J9seQWV795VlPzpAl/wPPPAZyDmhekViVmPO/s5lupW+ScvA8RZWgj9O5EVsB6KRVd0j8RJF+TfMMFj8oomyD8uu7y0mQLEJ/+NqIGkxdr3x3q7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh2aKi3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh2aKi3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F8FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789785033;
	bh=geIgHbd74LSVguzmkN0IO3kGtzWnRWmuvVw9h//kVxE=;
	h=To:Subject:From:Date:From;
	b=nh2aKi3EjA2GyJRT99bmkNym3tyY30rlIeKo8T6bR2lENhofLQ8iryi9z/eNpdbuc
	 b8Mp77P/e3U4IpVVojxCs6r6Yo/i9+790LdkRitW5Oso+xVgwQ98zrD6e/X9LIHMlC
	 bKqMUi+eBMa0uTbbUGXJlhoaOZTTtzXzQQJ60ClYjubkxcPVvSCg53SXXeqfEUHqfh
	 AniFTFFdiyu1Kker3nPGorkZIYyV1EXLKzhptxFCtLPD3L0SELAWvSX99BkoGjq6jp
	 QzoEJ6EPLCQJf7CLq+hwBqkvqHfGRru3T1UwXEwDXwOV4RFxLwISEY38wKYnQKNpTn
	 tJjO3XSmlrEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14EDC982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978503369.1992.12985000817675215083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5433cba8f575a8a66f37e0851a2b4eeeb496023c6601b34f26a6f8019c12725a
Date: Sat, 19 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789785033
