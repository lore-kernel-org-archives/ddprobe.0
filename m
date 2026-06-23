Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC336404D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782218194; cv=none; b=LZcO836dqouHVOcx/RPdRa7LcruqYeZeAFMliDgEZQkgLj6mQ7J5lBdCgfd3rBmFwKq48JE4xfRScAw53ur1upX5A0LZNpsxAyT/6If257XYxSVFG2yA4AIyReZy/hOWWsnu9R6bFvFtzexwHVSVizpqOWGVShD9XfZiLxJQA+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782218194; c=relaxed/simple;
	bh=oLKgjUZk32zUw19mGnKDehNGi9VXpzWB8NFyQGICNj4=;
	h=To:Subject:From:Message-Id:Date; b=FEKsOfk75viiI5CW03xI8k2ILVzyUjdJ4Cn8/p1vhVmWbvU6vOobPlAjsvbSkT27h4ATdIM6/aufoO8RF7hmFTV/SPS56pF0BardN9GX2CdHxwGmQLz/qGV4xjuLAWtTKa9rNtgJ3ZTxQ6u+pTqTIQnGE0N9vXd23TWhDVHyod4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsJBpYRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsJBpYRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85E7C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782218193;
	bh=oLKgjUZk32zUw19mGnKDehNGi9VXpzWB8NFyQGICNj4=;
	h=To:Subject:From:Date:From;
	b=CsJBpYRG/5lrJUx77JF3gKVdcT0kcyWYCNMJox5H/2lIu76jsGxBMJ9mJeaJwoxVE
	 9bNjvzc87jzzynziTJRLs2f0UdYv2BiwX04/O1bZ0PvvZXFDPKUMAhM3fpLBqWq9No
	 Odl9JmsqCUSu47bvUqjt8n05tqi0K/T52KDI+ASebhP3IdAczvGVet72aeeS2aq2hq
	 nSX6eLTTcbIUiRi+fq2MRs6NBEjwAPaQKvas9VAJepS8mOwMPxGeMIlEG/9vgWCKAk
	 1U8nTLk2MiQYzbmzhlfuqsBB6Oz8+dgjrNus0CWAmYbcbVL/gD/6BY+lncWkFcOj8t
	 Bfx/NBCAkGQjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4ACCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221819369.2722.4989846199775589081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2048c16150846f665528dbcd8506a372399941ff95a940ba81f265918e67c7
Date: Tue, 23 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782218193
