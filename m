Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C7D37FF6F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789764034; cv=none; b=EdTGPhlFBQySRQIBXhmcXXaI5B2XHp0jRpLDB/LSHRDKRKGCokGnL6mqQRR/TSVFFoyvq+JhY3XYYdts27dfBpebNBBfznvHOlI1jm00Uq3r2bCn9I3W7sHrAGILp76BUrwU/xeuEO1CKwKIQlMLmjQEcBELUtWYPqtW9+94cuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789764034; c=relaxed/simple;
	bh=nYjgOvelzdOP7/udvlK3G6BVenaUwHFzu/bYCF1sv68=;
	h=To:Subject:From:Message-Id:Date; b=OU1+OE7fTZFWxHqv6wV8ChDtkwWgmq11ETprh2OfUxi9otQmFyNiuTf9mbeELF9CyiOQcFob0gLRHmvpaiJT6dzoRAnbAJtzjqLFKufSbQsw1E22GtTPCt+z+bcAaBK2a1mmMWMV/G/xjFK5wxYotNPADcwg9p1fLJMcqHS9MN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JH2LGmHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JH2LGmHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5709C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789764033;
	bh=nYjgOvelzdOP7/udvlK3G6BVenaUwHFzu/bYCF1sv68=;
	h=To:Subject:From:Date:From;
	b=JH2LGmHl+xZzBGNVJ+qwLNLDhyxj5HLF/JmUxB8kVJvMszNhfQNbPutckX0JMywWT
	 4c0AXFQrNMImA0HE7c40nguhFDttOs8gAkGI1VlqFakKQNLS4ExS5Ze3OrMEIM4QVM
	 8vHbts4mUZyfJUgr5+kLByflsv/K8qb3U03EPHlcte/B6JZXwPLTkVTiiBAIeE+rqU
	 2KkXVv688U4hJL1x7Nq8vMdbytMiQjSA0Qsfv5GnkGt3m3N1qwR5YVmI4mtS+11bxG
	 nPdFY9sdRBnYeeWI258Tb9hXIuO+BwxtwDrLapfOPJeSWYktNS1zVsXWdiGwPhpVEd
	 e8FNX7y0dYz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5AAC982DF
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976403370.15831.6072887497238750252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b19972936af42bee8f2a275c98ae8bab9ccbef795132ea82bfccab41a676571
Date: Fri, 18 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789764033
