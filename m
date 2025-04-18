Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0AF22F160
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745008194; cv=none; b=MwlV7HAnU1UXawn6jg0TweALXaTm3sYEmbwvaaxA06SLZJHQx5jyrheKNpMhWO4InUa7IEdaWXuSWfmNfUarUQ8gXRl0bWES/ucurVktZSIfzpC+xBsKdyva2FBaESXyaeKiB+vDSP07wVWtPPOAPtqvUSbh4WyUaZu34coV1kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745008194; c=relaxed/simple;
	bh=xcoo+6QYM+alWECNRjDIoCKgjPcKh4D5dnh8eTts72Q=;
	h=To:Subject:From:Message-Id:Date; b=Zx2bSH0oVw2mJby9Uu8lHexyQn0rZIsGgnCBusLC6MA0w9onQMj+fWS9tczhPRVLoNNqF1XcG6ElQ388pSTesRngqc0e3Emu3p16Mg5Xy3g6DOdoTSDtcLNM37BuLdynHU0jj3VPUsqxItRid9IiNJV1bNHmQZJNauMYl/2rPfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL0GUAyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL0GUAyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C0C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745008193;
	bh=xcoo+6QYM+alWECNRjDIoCKgjPcKh4D5dnh8eTts72Q=;
	h=To:Subject:From:Date:From;
	b=iL0GUAyusxA80AQk/VHvBe97SmLycRVBCWX9f2JMF7yTgDir9A5C3ILQ/qLcrgrGn
	 9JruPqZnanIwrmKkVd67O5UAl4bqAu7PMqn9dXTzf+G1aXX/R1jay2f9Xjv/Hot2is
	 bEecGxE2FavsKeMFrN5YUWwUDMDXd5L+HpdswtgJluDoAtdKi97HXqsBQUEPgsWI+n
	 lPm2qloJAgwYlr1tl4K9VPuTryEL/vKxfPiy82G6IJ0py36hzHNE2x0/bATUgaTlPA
	 P62ZzwjyXts0te3YoHwbn9qVh6bTajx4yUVsiU1VpA/tcF+09RnFc/st01sw+vmBjm
	 AY80z1XWDIWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C89C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500819358.31165.11681810280644325294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f9ac0d3d91e6c8beb33a729e5e232a43c733341516244d005f363f02bffe40
Date: Fri, 18 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745008193
