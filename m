Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3211D145348
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775322334; cv=none; b=eP1BQfonx1litw2qRR3hB8+yDyPwtP87UCD9XXegb/JYMjWQo9H/A2wu0h+sFWzvDIGlaRGAqeZW9fNk5kMAeJoMUmrx97TWYj9jf5aWMbnRT651ZWZLI4BlOhxN3szgnlyYI19ExsrRSpo/26FLUCIBCdkXKuTes1qhRQTrKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775322334; c=relaxed/simple;
	bh=c/zwkVtW/TOD/h3VTwwCQy3BdkjV3UGJmKH3bXTYNGY=;
	h=To:Subject:From:Message-Id:Date; b=lWZ8ax2sGA+Xu1ZFNzXnUsUsMIpY9fwJArlknA0TdZqpNS+yqiHlqxks64I5Ww+lEEHRW42FBzW7pVh8Rt3hF8WCG5A7jnJpetKMw8VS1cAZ0+4HIoUuCuVlVthPmb2tiMD9d+sx1E/C3xUiD5W4QolqbO8N7iNc/SFzkf2vD8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5426OXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5426OXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDADBC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775322333;
	bh=c/zwkVtW/TOD/h3VTwwCQy3BdkjV3UGJmKH3bXTYNGY=;
	h=To:Subject:From:Date:From;
	b=q5426OXeN1idANrwAKuZk/clJT4MGIgKvqjG1N/vbAdoIbhNcmyHaZgEUjyhCtoCh
	 mkGjqnztDr2PVbKJBemC7FwPvZuPGq4mzm5efFbSahg4zx0nRF2qZrPy5hUUswncLt
	 KWFzW0z5vP1k2QF3m/6vzIJX2znc3u4UensCx1wcrlstP8Bdk2SLZNE8KdYtRVTe7K
	 PSuykQ24f2WqBbd8JRGPkAe6y2fO04H7a1919u3K0i1T8AWHF6ybLvhcXFwlLe2Lg7
	 obptUVfle+g4BZR0CRZd2vTk3J39YPLvpf8rdUcjg91+xKLWvIxdcxspoaAuK0xp0H
	 pEokQUFiNTtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBEE63FE3
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532233370.2169.16483813844980175929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ffa5c692d3eb46c0ed69d4d13f925ada20ac162beb02bcbe8b2b6fd6fddf2f
Date: Sat, 04 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775322333
