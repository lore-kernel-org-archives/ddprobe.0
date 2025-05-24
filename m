Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B05F1E5018
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748084394; cv=none; b=FcItvwv9juATNTLxqMYtiYeTcP1QxQU8KPNCCYSU40Nkj64+lk4xnl23Xb8BWwPRd4HUsCt3Vr8ZDhaGyYGZ1EhFqLvPRpJpNfKCFg8K6IOvGoQ6Livl3e2m4FpCDh5snJkciuVwaYJzeRDIVuYJJtL92UYLd+6cTWCX7aboB7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748084394; c=relaxed/simple;
	bh=zBp0EQm3sIJ1C8XzzJK1NUNlwfNwcsAy+ytCS117PZQ=;
	h=To:Subject:From:Message-Id:Date; b=W1MZ7cKovOwy929CTPGJKpIBjbIYfsnIgzGupULLj1INNdLEKuq0iKJ7yHCEc4/lsdNOh717oS/l2e4dXFqQhHEYqX8DRoQ9nYdodq1/YMlfo//dfXrIgOmZuMEOXoDEKvlaSYXwSSuWOMYRSpzaHNaaJGejnpMYYirlhi/O7RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM/nDXxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM/nDXxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF4C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748084393;
	bh=zBp0EQm3sIJ1C8XzzJK1NUNlwfNwcsAy+ytCS117PZQ=;
	h=To:Subject:From:Date:From;
	b=WM/nDXxyQflEdhrE0yw575iPu52XRvr/pWtcDO8Yblf4Yde1r3KWsoYFpWu4xzI6K
	 JktROof/NiJGzUOG9JWTSLPbYGzSbzmNxV0nXTi1+vwkGLmYEuqqqdarraX8vUJ20a
	 EvJ0Dc5YLjCHLfOP+SKF6VsOziTqkYi6iHs2Bx1NkARv1GbKK5O4e5VcthrVqFeb6S
	 VpnBFAajcAlWE83mgCu/hOD+IbY+aBYYJIxC/dlUiCONWHjCRIwbSeH1nt78E0NJiW
	 TwIbo51tOzj/Lok94VlgaQIO0gakwlbrde7eJNNTDlEowgQcOms9GsI7zEF00nDsBH
	 Rw7GqosJcyFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451BC54EDA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808439357.1895.14440700422119672415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5594701cf52b381581659e3ae69f646635176eeec1a07d997c83a924d3952a1b
Date: Sat, 24 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748084393
