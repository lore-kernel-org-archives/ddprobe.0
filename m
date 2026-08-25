Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535943FF8B0
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787662234; cv=none; b=WkeiA3XHMEm0VVsK/0niEggqlEO+zd68ldB1gD7C/xbylMnLwpoYqTRL+EcfOQqgGoDYmJDPeTF8CUYr+5EAxpSTVXsyG3suPjU17Fdswi+BS3NXOzNJQCjKPRIfYNgD9uKdjiloy8HjRp5VijJ3EiVwbMnm7EEHfBzSTfsAL5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787662234; c=relaxed/simple;
	bh=7urFmMmeLNkmTNHeWaoQi33ZG+3dvSMLQWkS3pUegZ0=;
	h=To:Subject:From:Message-Id:Date; b=I8wT/2kTVqKbWvCYkFQ8qO9z726JoxRn9EIfz4n6Y5DKKutyhmIl5ER0Jui5/ja5VTquB874q0JOx2DS4jkiUJwuEqZqZ15QCAZ3LrwC2dnDuF2s020eKpnrUwyDTvzeNFNGPTiBGspsEny1bMoSXY1x16KHmkHmo/LzdXkOF0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRtcwsCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRtcwsCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56ADC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787662233;
	bh=7urFmMmeLNkmTNHeWaoQi33ZG+3dvSMLQWkS3pUegZ0=;
	h=To:Subject:From:Date:From;
	b=ZRtcwsCh8XbJ+kkCvbNhBJL4yYkJOGiqYzQz2aXG5CDxrjIkM1Mkc1ow64Z+uqJng
	 cspnGwMv4sIECsimODPt4Is2sFL1KVESS1EeZeECJzOc2Xv1+bfqcZ9UXMJ3vU7gPE
	 K+CixV4RDCh6uy7WsfpxPh7DS2XwHhpgnLfs3pbUh94WirIM0DiVWVRzrs6CH99mDN
	 qnDHTOvCPJCLhSbNUUpiSTQ88g8i7WH1fJ1XOSLbHprpEA7LjNwIxzGbrpyaE4zBUz
	 wF67gJ16HAg/zP72aqbeIhx2VYpRlMlkYxd7lpI8MtGY1XVYno+9aQAEICG2vJPo1+
	 QtJxKYqJZUhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6B3C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766223375.14838.18232619539526004125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2d4f20a3ae3f98e645a17ad1734c3937c3a3463b25a1787fe8c731555063d0
Date: Tue, 25 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787662233
