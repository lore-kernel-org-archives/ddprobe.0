Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3639D199385
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780553074; cv=none; b=UU0IySwHMkl0n70Oq+wXjv2BfEiWE4A1+kRkx9pBOLIVYnKt9q5rr19eEOByc1Ll4Iq20gjr2gYko0I11vwz/I0T/69+P5mAvOWFNEgfbghieReQRkggLA7Vra3nS/VgVPRLcDC4m3ywo6Gm06quE7vfY/vOWdyVKWB2ABIyN8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780553074; c=relaxed/simple;
	bh=8tsgFk5p26ozlYOYBfF+nEaAXx2uuJbvXDdRomWk7aU=;
	h=To:Subject:From:Message-Id:Date; b=Tfl5r/cy5cyHcIy4imw0gRhBE9Id8lxY/zLklr6oxrvTILl8f76m1HYMLY977hyrZZVD/x+e2IB2WvDra5ZSpUr0yyswt8rA9L84+3xbRR8BEOuaBpj2eOle9TYc9R98uXopw3LLt9BlTvfweOz/rSgGCyuieJqd7m2Q8XQVaew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ+O0/V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ+O0/V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780553073;
	bh=8tsgFk5p26ozlYOYBfF+nEaAXx2uuJbvXDdRomWk7aU=;
	h=To:Subject:From:Date:From;
	b=mJ+O0/V9eJBpHB8NlHO7TNX21GPkoU5Tis8UdH/rMb1N4EB+85QjCrQ5oOA3Ykk15
	 pWXpB51tALHVbBdPI5TjTjtdgKh187xcvmguQLvxOIp51WmJsudKKSNIXDNDA3tG/1
	 s/PFYdEJ2fOyJGmVifyY+A2BwkUoNWCZSbgMtr5ij3ZfNi/Dky7EqSbK3fPXYd0GKm
	 geozHQ2Za5VxDQXrNJpGcI927Gvu4CJB0ip7UiQWp/Hpkj9ZBpl6wAD3ck70Y6DF1M
	 SrLohXYE4KskXRulQlmwh6ecbmnWfFFfe1MJHBxR4ax1V8gMDWMs03aukTF5Lrr046
	 3SECJW0z5Hchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B435CCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055307370.6065.1182565272832579933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a269a65b8038b818ce1a3cdafe47a7fe9719e45cb997d95f0f2338ea60758f15
Date: Thu, 04 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780553073
