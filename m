Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA5734FF63
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770846894; cv=none; b=pcltcOeQacZYWv30H+ALqn8M6UsOEF5Dm4nddZzAP9wPZgC8FIZsvGpqPGwLZbc6dcj7NjxWawHOtpaGV4hSZWVsLhSKYzj/tBG+cIhUvvGebpDHiUWhDfZGwEfIC4Ba/+4GdbqgfPAooFNbHwuHYzyJUeH4HCBtIURrrBxr2Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770846894; c=relaxed/simple;
	bh=c4/lUVjc8T+TjLcpFENgxIw0Cmr5bSj9UFZlxVhsyfA=;
	h=To:Subject:From:Message-Id:Date; b=uw2DZpLoyZ3HBWc1frFFHxtnZT5POt2/srWw8RLum12t3vxWiA8HIRHErXRjgDjh7tPEJ6JCwFKqcktjl5Xyij/H/6GBFwYCbjByDXRbIsBcp6PstBv4edSpvz1M7o4wNhCx8R1ocXWVtbOgwgZGH6oR+PeCtDE7uFb3rSZOU8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aB6IMt6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aB6IMt6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FA8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770846893;
	bh=c4/lUVjc8T+TjLcpFENgxIw0Cmr5bSj9UFZlxVhsyfA=;
	h=To:Subject:From:Date:From;
	b=aB6IMt6l+987+LWocbXUCn++bF0G2cvkvRfpRuCXu4Y7B4zYKzhp3j1igpKz76187
	 W0wQsc04ISmgcyuISoN4LMC3al66+HmoN3aycRiCw7E0S7JpYRRd1DgbAsCjbKw3U2
	 RgQ2jvcagN/ZwAqQoMYZZEVgVCgzML8fQy4CHTDLFRlbfk5D2KBWRMAujGOFvDwk5z
	 Bck35am37YEX9tpWYuooW2Nu2c2kaCB1p1zDRvK4qE9+J8/M8lj0ZH+c6AL+MZrGig
	 S/xSU9uX/WSXNhz1BCNz9BhI55WySEM3Vk8m8GuMIgBAsQMLCc5iGMDODX0dauKrln
	 uyNKSthd0u5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B791ECD6F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084689362.23017.2732016823283402723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab7d6dbc1b755226d7728b9da0802ba961aa4bda6e349d9f681cbb9b0ba89ac
Date: Wed, 11 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770846893
