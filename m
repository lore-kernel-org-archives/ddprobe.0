Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014D4175A9F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773887094; cv=none; b=gjcd5OxJ8aIdTV8PSS/FCO7xHqEuGHOonWEoCbybxngT3UnYPlCWxkBtikhim8Ht+XkHLT5VSkWKZmHUcuRNglAsuXJNlX+uNoNIPmbp6XBAmTQMPuP4oMmO/kKgWDf4ZO+mWDjnbZlik9FzGDqwRC3Il60FhMaPyw8JnG6blf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773887094; c=relaxed/simple;
	bh=aIQ7eg8ht/Jb9GFlYwfuAYkPW/b+guSsv0emn1bmNlg=;
	h=To:Subject:From:Message-Id:Date; b=oxBHzQDDx83Gf1EZHmK4K5Kp5Sbe3rJanElTWUcrOYi8pItakY70YDyt0Jx+pmGpCS6xsNOhGyQJNLa5bI1dYv4k7hIvDPicHtzH8D+KJbc8Fcfd/H5FsRq68viWFrNXoWLP1am7ufXBpPl0VPNql8fRciwHWzkmhUCGcVPE0iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLPuEtn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLPuEtn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1CC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773887093;
	bh=aIQ7eg8ht/Jb9GFlYwfuAYkPW/b+guSsv0emn1bmNlg=;
	h=To:Subject:From:Date:From;
	b=bLPuEtn2XTgBoS6Kl2zkjWN65PAJ8xIFV6c9+Aa6R/H5jD/OCIC+bupyuYAIhVNAe
	 TXyAhzWdHYgO+R2HwaTlGhgxmmb1h3Vcc+U819k7iua+gK3j93QIzZopKcdPAh3rPw
	 hjYj1+VbO1bZU4K8Lr+78HP35vUP2lCzCBo6g9JXbk8biNJrQJa4OCxNytq6Ayjhyk
	 EJ4rDUle2G7HRhhlV2rH8BBJo2tvCjrkFHvmO0bGKFWeMTMKjZRg10GN+HZ6phh5QW
	 OazfD4+QAUhi4xqLtrJF0+WseiFEXbP1MOwqt9yNhk1o6xwwfVTstd6qstVriS/v+y
	 5W3/8R67S3Apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C51088E65
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388709357.29813.7394188697396720352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64173cc4d200bb042b6aa96dda00ae3b4f7ffa4605d58cb03f5c5ecbcb1aea1
Date: Thu, 19 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773887093
