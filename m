Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0005F125B2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770579834; cv=none; b=s9DQ2yqYD21gPWor1+it+UM/gr+kxxImLeLiA/ffsvl1rbxi9aJR2czLkCx53A+G3IT90tw7mo0gfb6t2LqHv2juJXRCMxHj7Zr4gqw/apX/6mSCtoRDjGZ+NU/iHfrXmioJbwJb2ZCjBljVrVBpoULSHvR3Ww4XqcbO+pUZWH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770579834; c=relaxed/simple;
	bh=Pp9oXvkyFrnJLhE+Nd6rR4xpdrJaEqTyvFfeBvOu2ZI=;
	h=To:Subject:From:Message-Id:Date; b=DeU99IDoKElTEL/4IXuiBUan+RSoeuOpwx6Dm7PJM+m0JBurr4ExSUYaON6QoK5G+E0aCd3aSPi035Zo50BFC/4m7JGqZGjQFZhMbFUfc7jA7k9w+2D2BSUogQME+9Dsv6q39MegR/PlgYtAgwXM7XKmXFy1Q5fbDLRtsdmRvo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUUeBSE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUUeBSE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770579833;
	bh=Pp9oXvkyFrnJLhE+Nd6rR4xpdrJaEqTyvFfeBvOu2ZI=;
	h=To:Subject:From:Date:From;
	b=eUUeBSE8GwPucbcF5iJ0oTLqzSRjJCvZuHy22yNRmP0xPw++l7yewfB+z9XZzZPUf
	 HcytYAyU+boLhw2hnUgk/HrhtaGMfRSdxYKns/eOiOt2jLkK6A2vo7Q8fr5Eamxyzr
	 jQdDnJgTGuyVuluXZtFLC97BnKmija1rh1cDo6d/p+HZ5zfp7HIMJYvjVa5yIWnLio
	 BDiyTI0DNaoCsM02kwK2C+Q+qAlVeFCkKQox6VP1Ryp+7xzleIzQvkQqIPYuBHTlaR
	 w0Z24aUs8wIrYUHga+fGojEeKXii0rbtafuEyRRE49jk81FHVwLq8Pp80oSDoUJjQ3
	 j34fORvkHHrEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C64EF06E4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057983359.24976.8165548892446865336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17956be1b5efdf54b9e06144ce46a3f9bd1eba9e332635fb4d71bd7188bc239c
Date: Sun, 08 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770579833
