Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0111CA0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768001634; cv=none; b=W0vwLmNeLNrdJjjDHfKPYbTFzSB/ZbBbKWhzjx/7tW1ulhc0GkN5BbNead1IAElqXzMSsew40Gyh3hz35MZIQyNuDddSrcsXhmYXQ9IobLvQWnau/o3sEEB8UEih8lwYMOqB3cmJK80chQBpVgoWIUg7NOI57vwuTunyJ3B40tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768001634; c=relaxed/simple;
	bh=Gq3YsSNWT+jS4VqqcjDk+GECJu31lJSEWmqbiSzMulo=;
	h=To:Subject:From:Message-Id:Date; b=Z3G6Las31XVl2fnqXzP6O6lDzMdGp08uKyAyYph0n1VOsEyZCTxTCcIUXkDUGSWVZNenFk2DoOW5UFWmn9JjmEpZeTs6wfUyKSlesKB5BcKkmlUGXoIkyjIzPLLkuNVzL6m1Qs7L6Y3s5RqARLkURzSqQk1dj9Ye64DRsDP+z3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX/1pbTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX/1pbTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A72C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768001633;
	bh=Gq3YsSNWT+jS4VqqcjDk+GECJu31lJSEWmqbiSzMulo=;
	h=To:Subject:From:Date:From;
	b=BX/1pbTSDca+wC4DETC+xh+BRaWFy2hybxgb6lqnpY7o1CchWQWNgDFKzRxVX7vT8
	 rohbCT+xTNU8bslKOYCe1LR3gSl5PuFjWIlaWjto3r8oFvC+RS9cuQ8spQsqb44mHS
	 zyDIP8RmK5Ra51o/7PO9ICGAHB99O2MnZcrTNOo0lsOAMInTBd54J0TV06PoKoWcjk
	 cho4iyj1gF4y4okkttxpxaWTug2YLh00rYX5oyCEaXLF2t2HdVLNwzrxsB8Q7sbWY6
	 K8ihTlQNWQvQZw4YXU13MHCMUsaM7g4b1p8MLzv+GkxBPJM+wQtXBvc4mazVcA10TL
	 w195eZ3HXS1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F1D277C4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800163359.29751.12255605957634565697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da49b37f70109f0deb1d472e1d2ddca6e4ca58e5e3cb5f68010538ebb403df4
Date: Fri, 09 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768001633
