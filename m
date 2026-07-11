Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ABF3A4505
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783771114; cv=none; b=SSjNWROplAspA2lvuQ9mM+8SoDiwDCkXmYFa7CR/7l17+j11v0sVgh/O4RxWXGRjh65Y4awJvVOACUkZBF27vClzNfEQ4/44OFs2a8mqoZqVPJKUh8riE87JVqa6Ki1Q69A3n3t1PIvbGdAnCmCZ/K1Y0u8/IIl165z4MIzkx0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783771114; c=relaxed/simple;
	bh=4yOipwPF6XPT897Ka5WRJ6XI57xCEs5OkYX7Wycnb+0=;
	h=To:Subject:From:Message-Id:Date; b=qVj/+Xv/nkkQ+4qemufSdXEoipY3uftNrevEdj3T9Qq9bT3e3wrTVubvYlzkcaFTGjUc2iiH6EOWczhiHZhVICUgGvaOzMlbBqc3guFAcM6206kLAK6TOL6qwRF8TrM2JqpU2cNpOm+xGfYP8wY5AGwxjHlj8rrjKQis1yBJQng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWp0FSaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWp0FSaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE26CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783771113;
	bh=4yOipwPF6XPT897Ka5WRJ6XI57xCEs5OkYX7Wycnb+0=;
	h=To:Subject:From:Date:From;
	b=CWp0FSaPEEa10ooYE/mICwfQe7GL659kwAr+VTXbmxMUd8nWQBHubKHarW/b0VJex
	 cOuA1bjOgH9AvCRRVR8k7W2yZHLcm61bjE3zmy65yiz8L9eoPZX+9/EPLmSjsgDXAb
	 PuEXnyMdFOVFwH2OHBEmTuTPIv5WDHFOkVzEtEdSN0ioutTBaf6HYOgj8WIpDdLIlF
	 D8U2BAArvnVLLABydlQerv2qKCC0+ca+nV2NBGFDKddsIxRYDWOW2FBW5nFKuAboPL
	 zVkSm2Pg+dkPeLnKkYr5325UtPsubVhh5XhG8pI2YPhc09jgRSPHWbBTiIQNH+2dmr
	 gDCBUQ5L2Gt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A894CC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377111368.4571.2540470532403593819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e036b578a3205ed2b405e1d93dc2a002cf134820a16f489e67e1f691ff7cd46f
Date: Sat, 11 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783771113
