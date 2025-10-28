Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36470814
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761682194; cv=none; b=jIU9/FOsA5S4YCcsEd/cFWm5LI1hiDv1xT00cP0YeAqBUhha8og4NLISsHVE8S2YodG4AWMZYZui1PL4D/eRAPZHGBmpx63WRvjh4MVKvSvsTX0Kk2ok5wwkf06R6qgP/9Co74cEPFmWu9oUPuHCSHcMVhf+1msjWCH4tNUSEMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761682194; c=relaxed/simple;
	bh=fEDASvd07PT/3rDA8KJSHrU1uNWiD+K+IBwqq/LVx8U=;
	h=To:Subject:From:Message-Id:Date; b=n99ytDZ2sQ742wyIzRy0aFsjvXcPpdmZEQh5BXs5LMwGyrAObDqzt0vuHQoYq57NBFIG8o5zgAjGCpqC/6BjyP8QelCv+1GI85Lq0cUD2uKYM1K3sF8+bgi1xb7ijhY8xpkjhc37MXSR0xi8E47WNFvdy7V7n8jqvc0aLXwHXHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sa7J6Akp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa7J6Akp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5546C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761682193;
	bh=fEDASvd07PT/3rDA8KJSHrU1uNWiD+K+IBwqq/LVx8U=;
	h=To:Subject:From:Date:From;
	b=Sa7J6Akp8co0ZvwN1maJ7QsxWpYxUWeGN8oTuToGZRIR/MBxQ88TT5kBgdhLSLN2c
	 y1w4kYcnc1E9wtG5QWWEH5q12zw4eEBwZ+YqrOqIGZrKHSH0l4Q3hqRUgYxKvrCstx
	 9EAlAt1G9Mf35ztg2MCfBYyKxN/WvSniJLNfwG5GKMmn31PUYRhcNwz9mnQGo3sXom
	 hpgsoMSeKpEWwWFEIYEUsxlL38XcqiXRZiFV3rHGF2f+fQJz9VX31m55y+SRp7ULby
	 OKCb7T4m65Cgtm9wHZBV4IYxboiCoOO60xK8D8ZCRfNU4QW9hNXkTdeNX+VnW7caln
	 q4kqtIH7ZMmcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F5CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168219358.19138.2417601394112851404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83aa3bff8bf1a67bc5790dca231f7a25299bd834c402fd56a3be057ddb369fcf
Date: Tue, 28 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761682193
