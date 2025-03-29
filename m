Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4371531E3
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743235194; cv=none; b=JgeifI+TGbXkZY7c+n7TNiZXk+ry3CJF5XFi7LrskmHXbYwQ1C69Pg05aMsaB2gFiVb6MKQXT0USWVrfZ30Fi23dBkDIT4LuIawCa+t7FQtwNKlk8yrVI4CIxLMcyYEdQRGTYJVIddZr658BP71RkHftYtWSFZ/Mr2vziZQBGeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743235194; c=relaxed/simple;
	bh=+QsU787j1dGQldBenXkLrfzD21E0dUnZRug/7M45I+I=;
	h=To:Subject:From:Message-Id:Date; b=c2qvgYG2u60aeA8h9A9bawlalRcFn1gLICnGbIrL+clWq+eLIW05wagSb4mbHXGXahOj4q7fRpsixloY1ZNSx/RbjUsjdStmjpbm0BNOL/zFIn2h3kg1iKO3coVe3MhZcwppXBt4fU6aXqUDJ7EH5ha8oZVqJnIXbDbZx9v87aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+mWKxLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+mWKxLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD05AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743235193;
	bh=+QsU787j1dGQldBenXkLrfzD21E0dUnZRug/7M45I+I=;
	h=To:Subject:From:Date:From;
	b=W+mWKxLH0I4NxjXaeZlvVSkLXqVDbc9fogIE7aR3icAGdonUSUsK8MZ1GL7GwZD59
	 gNjBVW/ARc+T7x9NpDvov/qbcQg0Wt6ULv/ZPsn4y3b/8p75e7Pld0bjUYuKNtSi8q
	 m8Mt7K97FhmKI+IxNVTqVM5U1gb3kzLPziLj4GEtxBb9V2C98t25FSaoMqPNNWxqRy
	 9QlVTxcR5cKsexLn5jU7+aIptV4ILz/SVCdEV6Ph8G4BNwo7vm8qUEO9eHFtsExiV3
	 NGJ6HTuhIUQvuOrLi9hdW/UhCIWWfggnM5pHspD5/1o0dWTHRv37hmc9wVbOUF4EZu
	 Bwq6tMfnLfp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07F4C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323519369.8443.14432448957449511544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f85288043c34c1ffd90263ea9f735a1c2012a675f71355c99aca3e1946abeb
Date: Sat, 29 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743235193
