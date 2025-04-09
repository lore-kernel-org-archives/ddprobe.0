Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F35225E836
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744208395; cv=none; b=Xb2vX7uvK6y+R3b4TgqeLurCVOjXMTnKal3x3Ljeho63LzVWY0lYqbiaO3vaCqI3y6mDtKMCITrAaueI0YipWdqhSAaJMKAF5AYW8XQ5HTYh2Wo6mW9mhwi8/guWghIO8t/lkffkCAKC4y1Vl9xBor+IKHBaWoBrnZFKjZDPFlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744208395; c=relaxed/simple;
	bh=JEYSR0CGJMLV1WXVKN+dffFWj9hS/c2/i13pAUN64K8=;
	h=To:Subject:From:Message-Id:Date; b=r8RSNh6qJhB96T0XI/U5HUAG/77X3ETg0EF/laNc76YTIoxusVquvwE13DxSyU3n7HZqFC62u3DUyapNWKtr5GJENaRnhLx+4RzqKmS3ZY5p5VupoY/5bEWIWoIyel4dTldlcL6cAcGhs/LEjD3PhELZBhp3VEBi3cPTf0FU8KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCwjPwzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCwjPwzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5EDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744208393;
	bh=JEYSR0CGJMLV1WXVKN+dffFWj9hS/c2/i13pAUN64K8=;
	h=To:Subject:From:Date:From;
	b=YCwjPwzzOcdAOPphnAKz6M+NQecRrgoT0W3EXcY/xVFimD75l72lB/6k/BAr5lxi/
	 m2c61tBYdIygI6EWXLh5d2Gtq3gotCVPzcRlHt5BG1GweF2QFBDkupn8R9h5U0KcN6
	 vpeLjCG2rsBOMaTpwrPYi1XVOoWLWEBasCQLlcBZGMbFtx2D4QciBJbSf5eJJR5ZlW
	 SvlnOkRRRitcaxfegQm4V2ZUovKeCZuA385iK1LztH8y2vjYeieEHDHTOTvv6zKXjr
	 38zn/xPKf1GUQD40XpgqHgZI+RAPbNa8j4VgI8IcBN3M/YJMfqfs8GmoVB/FjZKZJI
	 XeRPTSFjyYpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9723BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420839360.21317.2129120402667541678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ff113b1d16da7b5a7d2ec9da441f3e98caf6a331e300ed8094076e7ce3bea9
Date: Wed, 09 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744208393
