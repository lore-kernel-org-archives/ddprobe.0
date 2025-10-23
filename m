Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C72BD58A
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761216594; cv=none; b=eeBc0pNi6lOuZ6vFNZh3Stzp/splYAXKmiyuyb11yPhfRGyHDMa1nBHBsEImbCrcGxs7QOsHuSbAqRmpc86Xt7J/uv5LRWmVit8SeQyDdwUko582IMGwW12+wceWOSmMG6rsbB8f9yd5BP8Brgt4ilDruEapf9IWSailBoNV4Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761216594; c=relaxed/simple;
	bh=JfpSlKz0ZWYUmwNKe/1LZLFnMHfjYTKVcG6cfifLlqQ=;
	h=To:Subject:From:Message-Id:Date; b=aUuKMZKaBwh0VaVCeJjDQkgKlfSAavA2cG+8LdGznj1kaK8sMhPvfTwCVRUd+PeNcM/AyEQostmAj8mNAX3Kq5/wFTwiIRyHsgLJkdzypBPCFwejAKNZXjNE5u46wpmwnMM4Ege/504gL4rJWuojZuSIHWyQzc6RyMH6PA//wp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpWytRIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpWytRIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761216593;
	bh=JfpSlKz0ZWYUmwNKe/1LZLFnMHfjYTKVcG6cfifLlqQ=;
	h=To:Subject:From:Date:From;
	b=LpWytRIEk/ld+mcJ/9Fx/8tZZFc6cO9v4cLKrPjS6F6XZyC9yMG8mt+0sYZCu2C/J
	 zyxtygije9tgc6F0L/Fe185mR+N47/DvlpZYjue0FHmBtfqwjtbD8PuT5AmjTCRhN/
	 YfCuhEAnVKjWlpvln+qYUuNRyQoeD8aLK/UP00P9cfSmSjfiZQHkLYLAbAyaGmyk+w
	 nNVUg4qjMdUquC4a1Uxu8X2AjlHMCTqL+xyJ/njmq2YRJzkkhhM4O8NqK4VqhdxGR6
	 dBZoayUkV7tJmLDNe/MyTgLbEaGp7B1Q0JNALog4X47/GEzczr1qJzzSqqrCx6PwwX
	 ajTKWwKV1+qEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90619CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121659358.24251.958377659349777201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80939d6a5c83a27413df11f5b03f70003047ed4af91a6e61f55920b0018050a9
Date: Thu, 23 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761216593
