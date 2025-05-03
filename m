Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE51A5B89
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746261596; cv=none; b=b/RRf4h0rFMUYeNBKHxmdP66hrY2DT6D6ESRll+QSERvTEg2H1alVT1n97Z6Cp9dVgMhOKFCLyJIQvrMMeEgZpOM68y74P7NUSSMtQYAvOKIEUGn1EdYw51mRcqMia4EN5rLSMt/n0iQGL4roL0KSgYuk098BkmKqc4IddCb6eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746261596; c=relaxed/simple;
	bh=OwY/FBT8scD6nyI6QDlixkYqVQABbQ4i7wAtwvA402s=;
	h=To:Subject:From:Message-Id:Date; b=haloo48G+SWgrvj4uuXKMXhdiBu4mbYq8Jls6hximO9ZLPV1Ncv45YdS3Dlk+KrCp3QjLPKbBp5Tpb/Xr8txZYU6Sh2cgv1k81JFxZBoaR5EDYCWXgTXu+lyU0rI+RYDpmM5hT2rVba3i/2C7yeCj1AXwrjolNED/WXwid5zh68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Evthz8Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Evthz8Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D03C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746261593;
	bh=OwY/FBT8scD6nyI6QDlixkYqVQABbQ4i7wAtwvA402s=;
	h=To:Subject:From:Date:From;
	b=Evthz8Pee+JGuyTi0nyAa0k9UNBeEgD6rPAZuR98PR3RVHpcoapt+coZ9ysClJsE3
	 +s5K/0WTBEuUc3H+rlffeGSuMWMmRhuwzq0fgo/6VcGzZLGfSiGe8eqgPpCI0hx6vE
	 04NVW6Lw0gC/z1DtUM0MfU+hjdfquI8HyujYoHRWj3LMy9iWvpXvM1tno72i0lKoBz
	 3KsMrDABlU/8CoE12rf5qwaLHgxWbovvLI5yvi1YcH4uVAgJ8zo//aU5QuprykjA8F
	 UkRpMqhK3EJuYofiMYC91//gTBkJ79koHSofPhiCkzDVfTj5gxpZhP2ZuBcJu0Sw9M
	 2ScdHMZfOAv5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D37C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626159357.12352.7053356257864676341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e320c7b2cb66d2a5f9d01c2f6b02e7ade74c35e0928532dc6ceabf7914f6cfc
Date: Sat, 03 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746261593
