Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C66EC4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754624994; cv=none; b=R+YVsTo871V1A4TerpIf9011vkacIOPw4npkY0WT0UWLV95l8YysWOKsaMVN20EsWSqVphEknludLw1zAPN/NdLd4FfwSN6CiCU8zGmENQ/a/emXLaiMFmNEsL3Wvhw4zFMiA6mj/QivAEwBCmidpf0EhdBnGDaf0dk5bDUyB4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754624994; c=relaxed/simple;
	bh=eByW3/8Gzp5xJ64QjxyFZbTEr/ixH2j5ZXln8w6J+ok=;
	h=To:Subject:From:Message-Id:Date; b=nHanblf16WZoUkk+jFfLhAyW4xdeATjnYT8Z+kexz2w3K+bMCVjD9++7CO0TIsuyYgniNBY87ipQbHj4GNe5v9XnjS5jaMtMfDxxYKvoHQd72OxcQh0ym2HzZh2oy/O0utYfC3oI3Nnmcb1rS0jTmfBlKZWTNtTuZj1MCL/bBv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7U/T3PN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7U/T3PN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754624993;
	bh=eByW3/8Gzp5xJ64QjxyFZbTEr/ixH2j5ZXln8w6J+ok=;
	h=To:Subject:From:Date:From;
	b=F7U/T3PNuH18iE/mxXE4aK+S0uVt4PJpssqCscJ2EWjYxVPlRWwBv3RkjD2oyYNQd
	 I47Mr/AaN7cAeo+aJeqePbO5zGzw2Ym2+atazz4nT3pJVQ+5BRGnz6mSYDWujToUNy
	 B+L7ReOrccVQu+k2QMzXIX+8rnOlRuT6s85/oy2nf/7/cfwWWUCuHumUd3lBVpA8LF
	 cw3sC5WHU9eI+YoHWB78eg3N/ijj3pyCCDu/MoBpSijylLv8Z6QhXjoKUBP7yo04e+
	 qm+y2La1xtArgT/GEFoCK9ES2/TiHH6+xjYZ4J2HtXS1LrcxulIg7j79mZsE6EHlGk
	 kaJreEEgfQvuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49AC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462499357.32737.4520173110529584079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91af808bebda3326a98baefc4dd1776f007edf80bc3f45d3500a5a22c49b1bc3
Date: Fri, 08 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754624993
