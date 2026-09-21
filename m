Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AECC31F986
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790023834; cv=none; b=MRL50dshNAz62MzQJ9+xR1qGAD4ev6vVMJIqzIB07Om9+nTterKx3xyUt0WO7VwU54UhPGNs4kAQrQHA2/VOG+o6h39F83Rpn4CKynu3P7dkEomEK53rF81zUn/WEJisucrw7iL2jK+n9Qt4nj6pVsOpUXw2mr5I+ocaNBUnq9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790023834; c=relaxed/simple;
	bh=O7Ipd57EWAtxJsIHN4nIRPrTY1V4mFS/1M4SmSY5i3Q=;
	h=To:Subject:From:Message-Id:Date; b=C//Ojvo+YZZSWI6zwBkPXIfmS7nyY0Yxr1gqQfb083mtratHj3xutiBq6ADUNR+EBAqEi00CWl+iM9lCoKktm1pYkBfpB11m4Bz4osNHMMmR0WPq9CBbzUKAYhWDvGp1fVI03zUJqx2D7h2WylqNW8ktHKn2sbM/HLxGPzyMEIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9cIj4cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9cIj4cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C9CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790023833;
	bh=O7Ipd57EWAtxJsIHN4nIRPrTY1V4mFS/1M4SmSY5i3Q=;
	h=To:Subject:From:Date:From;
	b=S9cIj4cXdfqIwiMXJ+CGEOWekRJvBY+fvEDMzUbz2mmN8vd7k9X2rsbYe6GQEPlXa
	 AW+Dpve4wdtngOOFGw8InnVxVW1qm8bxIugvMBG4kubGTMP+TOwy5VNkUbfHofoQjs
	 O3ZkYAADLpxULMsIjQIyDIRqsT741nOU5YH2V9j9QyYUidkq2nqM6BWjTtu/Dg5Pw4
	 Drxn0LvIbmGvEkWOvQNcO6lKSxLAS4yd2oI4/ygNh7ed+z566zQGzPyz/e1bwJMrhf
	 olpmHuFLQnVkhCVxo0T00hoMVEs8/wHC8V6h1+8wBb8JgRj+e81BCVN20hBixU3Ksm
	 29k6jvqGvlQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE8AC982FA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002383376.24080.13500140265963822622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7432633085f4695fe0c59140652590efe47ea9dbbc47204eae463cc9077b55c
Date: Mon, 21 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790023833
