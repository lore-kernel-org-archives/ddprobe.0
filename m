Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964021255A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773575694; cv=none; b=Uv7JF9SAqXHTZL0KOlWnNYnMvGAIzhDlTzaMmKNj3t3c6EO36QWopZGgbkaCyTdliCBgk5fmmThXT2o2N7vI1LoQ/JlQtNxnfHh7HivEcenJl0+ACji38WQBUcLWd1FVxlnYU5WJl2QYaWnLEOg3drXu/WlRmBYbB22dPMJupJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773575694; c=relaxed/simple;
	bh=Q98+p7p5lkkSZvsCtj8R5VpXFGCofcP/6wRZK3SDdSc=;
	h=To:Subject:From:Message-Id:Date; b=ABon1GE9r7w+6Lja0GT7h9Pf3KFYc7WCtMyHJYaKZkHat7kuWWGEWWah9Q+4t8NNEnBwIRr9ne9dkytW3kyA5teNFWrxUBIa00Sav/hc1m6/oiJZ8s8ier8IXByHGBTgE9i2j0rkzvyS16MLPmJ9Rbdi/oCElv4FPZ7pVnlpypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3KhKg6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3KhKg6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A826FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773575693;
	bh=Q98+p7p5lkkSZvsCtj8R5VpXFGCofcP/6wRZK3SDdSc=;
	h=To:Subject:From:Date:From;
	b=L3KhKg6pwjld0dpvb8yYmWtXv8GkMSsUe+qbcSwCrZTCqfQoT7owDgcr9sjGleR0D
	 7WbfV4upQNkuf128YpSUQTWMNk5RNJ0Dit/iY+10IXRAzIOe5m0KmRnRJ3ob0qzgXf
	 RwCyLQsCpidNCFENuKoDqZynUwBHgAE+Ympae4px3mNKRBs5mUNRvICalpDSPhZN7n
	 WGL9NoeOsTg/w0DcFwNnErDpgWTtqMLO4apSh2tJ+Bk348QiNXoLHA8Z0ccpOH+1tf
	 27BS0YBc9EiWgKbQQwmo1Xz/7y+2/Hes3gB7MGmVREfGzy9tC+/AU4k42Pu1qwsffA
	 ypr6z4Eh2uZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C24D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357569357.22894.15729766717346321724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693b3aba12f1038f3959f377580aaadabb4fe6d10500c90525a288a2c16f7011
Date: Sun, 15 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773575693
