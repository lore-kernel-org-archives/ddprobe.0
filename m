Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ACD8828
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746067794; cv=none; b=pd9GJfSRYUJvO2bjgfOdwLkDe4aWMzEu0vR+U5oXjOabvPKXyU8GIclabl4fqIQgVcRAFvT/srWD/1ScC06cZ57Y2X6w84mWOPA0AJMUNFV5A+rSjPEcG1hB/mR4NXBGJBJGo3O5mqRuVhMU6uSWgqVxzNm58oInQOtmw9ZR0Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746067794; c=relaxed/simple;
	bh=nYfRZYXNE3PMVIcN2YmAkYTdlw5ljhQeiMBrPr5nrqY=;
	h=To:Subject:From:Message-Id:Date; b=PAVgF7u/XkYPe6K7KRDbHysdPsyNa5+1DG9HNqxfUc1iHypDo6YBI7PE/zjcF8JiThmdDWKDYz8IQRYDGf5I9FJfFocjl5yWcHdqJRJwm3L3t9RJmJxQmXid7iBz+JPqcbdYZsNfdtd6po6pNFot8AK2lUqdwrthTn0SDZcKT1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgJptLEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgJptLEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746067793;
	bh=nYfRZYXNE3PMVIcN2YmAkYTdlw5ljhQeiMBrPr5nrqY=;
	h=To:Subject:From:Date:From;
	b=KgJptLEdJye+Tkgp7hIT1PIq7qMeg+4h7O43tx9OfmJHiL5S2UXgJFL9BDeSlk31y
	 WXyzRaSq8+UUIQcqaWQtTi8Ta0Jx7iHEWitB/CvWkV7Xs9tO6NxZCGtptvkzCKjQvg
	 C14xxcj5ydtXrby21jpHZlHC3dWxDUpIJJTiwI3oFg71TuEXkKgkwVH6brz8ScR0xM
	 VdvE67JN2EPivvgLRnIOADAs+IdhRoXF0st+iX2x4/43h9S1w6/ppjaV9xI49+r47r
	 sLkMqkKocBe5p0qdT5yq87qlNmKT8OG19uA/Z9EeSe3+h0Xg3/apvCrpBKT7a+DHpj
	 ziYAwim53IpBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8EC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606779357.3045.928030145089013972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3472027d67bf3b3493cb2f30d45708bb86820b77b1a53a1a34877c157c94bd2
Date: Thu, 01 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746067793
