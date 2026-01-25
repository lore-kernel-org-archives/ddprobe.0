Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D3130E856
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769381033; cv=none; b=cLOar+Clxk6tv5503/72lynZ9/xlmUxJeqKc+prN0z0Ha513lYHTUaxi+noeA1lm5JG8RbsG6tbbNdKzeynJeFJb2zNOQ8+cNxGDWq4pcNnnKTnpmQDnU/JJqv2VCr50j0jcR+1izntoZJr7k6dfe+OuXJC9i/9bkR5iDiYk+yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769381033; c=relaxed/simple;
	bh=VE/YRG38LRI+VjquOrCwVqK1VhdFaOXH62e13KMqWdE=;
	h=To:Subject:From:Message-Id:Date; b=gSvogDPxrMJb4mzj8fXU136O28lSV1QYyTi+N0Q4r0iOYhqB7vx4C264n6hcMhFqWGEP0hKIp3HupqGo3gGqLkBiE/jOqUOos9S30FEI+cF36lTUrEWZSfOcz2DJ3Os5jNHZfjW0sNcSmxlej+nS/X3Jv1vB9h2Z/lHFUWBP6fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIJ8ztIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIJ8ztIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B653C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769381033;
	bh=VE/YRG38LRI+VjquOrCwVqK1VhdFaOXH62e13KMqWdE=;
	h=To:Subject:From:Date:From;
	b=TIJ8ztIi+3TitJ6/HXAamP5Jc+X70a9nS20Nd0X686qeLiOJcwEUbBW+sw9MANOFp
	 wqA2E56caoSpITMxsKqqtDCKCEfC9I5vtcj2eNmru1NEAHR+jf3rEPpKZnFaNf723z
	 BV7fAfD4YMgLd4CqqEhdyovtld7F+0A6DdRbZfmtqrXeMgL/kpz3Hwv0TeLLqCyguC
	 Y1dGsxL4rP+xvVev53E6ht2ivCYUNCrwVq9RXO6YmDuOncfpBSIJeinAqqyJbPMu6f
	 wCVF096TjQ84vieSrsEcikwKSM9DPobNqlPEvHgAxt1as1erOXj+TpCjK4ZxiowjVX
	 JtY91771E+Uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F809E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938103358.8504.15093967229884560190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e86f80d09ccb054f0fc19b0c1492d3342ecb827ef03238e142e34122a5de155
Date: Sun, 25 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769381033
