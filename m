Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9922F0C7E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771528494; cv=none; b=t25pDtg00KHyOpcqzRgAXzckoJt4kFpA26lsQ06Ru3LyliV61hV0tgcpIuQVzTlYMHX2GRJXsnVvYltichiSsZoxtQPPjcW68dFKLKTVDW6vZ4XQMxn7oAHixJBSdSyfzcKd62TY2hpfc8P3STKTNBMTEztGZm0pLd+bJPoVrTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771528494; c=relaxed/simple;
	bh=7xyTqqfCyxTNtnPWFsHIOpqZUp6oBy+YjfLmYZ8ebXA=;
	h=To:Subject:From:Message-Id:Date; b=fHQlzvLg+pGCIXjFv6302vy8vMv3r6wdkfod4QZxBMwitg1mkP3yIkUhIwTthuu3nIN06FnHA5Xm2toA1I45Zr4FPYrB9iCslyr/y4PYNhDPi961386u8YgKYnzO65d2YABKKkY/+kidQoXgXm+IquomxXtRFHKUPSXRRQ3JjAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzrrRBZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzrrRBZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771528493;
	bh=7xyTqqfCyxTNtnPWFsHIOpqZUp6oBy+YjfLmYZ8ebXA=;
	h=To:Subject:From:Date:From;
	b=mzrrRBZiacCPW59MoVDj/WPlzqhHYL6B+t+Xym2kAdIvAgCdOaCsuBS8HFciUH0mZ
	 07QBVNiZNpKNS+juQ3VFClKqOeuj61D72Qhr7va89jvaYeIgHjYmZqE06pbAtIdES2
	 7WKrvGSV88U/UMDXtYs15QzOB2YPaQg/eoRPHPxblHH/8pJq3Z9GTIAbFshx/ArA9l
	 g6PParKYvFefNkzDUITzHGVbasK5NFjqehW23xC4romJNPhj5Rnq+9itxcaSxZrxtH
	 RnU35TceHqqJA1fmJnBRDjmnaJOUs8cpkHAWRk23X6mJRAwBmNqIvLWnER0rxIen87
	 KgPwCcZ2LSZUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E63E9A05A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152849360.10336.2914110525479175600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42c123c3ac3b77ecfd1597841396e637ca9e5948211e7870c04e6e97cfd268d
Date: Thu, 19 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771528493
