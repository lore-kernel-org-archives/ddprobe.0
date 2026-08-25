Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE443E47B
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787673034; cv=none; b=eQMptmsDRlNq7u7Hff412IYoNMosXQKh9dVZqweguqAgxg9iaT836XTbohlv9dsVHcHhxJsVDpnrUn87Fxcu9rmZUL7tbNNGHk2SROPvmDWxXXpQA2yK6e7pcsbQmmnFOoRDcIUHYneUUJ1XN3Xj2qVRFPdnM4CA4MjbeuqvEu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787673034; c=relaxed/simple;
	bh=2LFBUd8NKmCXa86+UAJ2PneovmOGRzszK8Ol4PC4+74=;
	h=To:Subject:From:Message-Id:Date; b=fR1KbxKkvtDfHWEGuMSDfpDADObKj9SWX3HlLdDSTxgipYjmFE/mCQaGDyiXq/5tugQFC1qXVNht14XfK8rKTJoaPBYb1Wi6lTWWuEchEDOvdih0HofRAJcbxJiz4/TmCiTJcJsAJfkLKb7bSt6BhX3pX07mH56oYah528KoaIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5mUUV36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5mUUV36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD3BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787673033;
	bh=2LFBUd8NKmCXa86+UAJ2PneovmOGRzszK8Ol4PC4+74=;
	h=To:Subject:From:Date:From;
	b=Y5mUUV36hell4TAI+jsjvJjfaEuwZqkMiAgf/h7MRK22fY7fhim3Mm7B1Dg4fCIv4
	 K9Rur92DNLUrzW2c66Z3oc5ciJjj6Ie+/tPanSKSCbgM96g3suodBCAWloKavYQM5Y
	 +Us7EM6ruO0t/j5wUqCdxkuJnXtjBAOvQwuQufQFO6ITVBsJZ5vXC2RdzCPCZm5JHy
	 AaxHFUlN2WuBrXRPrzm0eOUk55F62q/Go5wMUrxl5rtepzj98jc9BrIlzCwzYWpzvF
	 +rs1x0NJvFdNk9XEQzXdQMQ8ARb2op7mFkeFm/U40ovTpNS+zwM3eFn129H1BGwZhH
	 cPhcAsZp6jKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB43C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767303368.10725.16680860560633292136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7585b2cb9090782889cea58ebc469208e8c9f6c21676db19abfd1554925a51d3
Date: Tue, 25 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787673033
