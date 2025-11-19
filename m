Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF9369979
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763580715; cv=none; b=qK1tlATeElHwUUMowcu9knjvuMoyWScElXVWF1EuEPVTes/5IoiTRwd39B4YX53BG4r6A0wgzRgbJ9c9oul9SVtNFJjMmToA+dznt36SgwlAlPYk+4loBMg4N9wMibfjNbteS0D1Rv1Bj+pJiJcygHOOVQB5lst64Gvxv2PE1c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763580715; c=relaxed/simple;
	bh=ZPlSh1k6FrqQ17bJx2XPLKjpE7tHwWqADdYfvVBykzg=;
	h=To:Subject:From:Message-Id:Date; b=Y2cveyMA+x5AszHwXFlXLlbKJyNfI4GTjWkQGkc1I0XZUQf8hwQMOIqXHY+lNJyn41wURerUFY+ClVTGSXH2hbEyj9xTU7hyKs5Y0SazYJU+Hd1shfsX043DOwtmllGyqGIQEVU9+BkWXo2I+Cvor+gthl1lsiNeUDtIfUR7McQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRbxr2FZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRbxr2FZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3235C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763580713;
	bh=ZPlSh1k6FrqQ17bJx2XPLKjpE7tHwWqADdYfvVBykzg=;
	h=To:Subject:From:Date:From;
	b=KRbxr2FZcF5YMZWpR4KPVlIrTPDjtp7tADfqPGDz3I33+hxD0UM3hmazHEVuicSZl
	 E0+QV+Uy2J0+UlVnDPsiTORmncN2UNXdtL3g0c0bwLAQLkR4NtCi/4ijlyAkpS2JrH
	 /htzsWHy10zCutEQqfVUzgJV94U9SlpPX0Z8v15IEF0KOiCO0wumurVWYzzHZgeC2X
	 POY2pJKMpaTtuFZSEiuw/cGjOBv02jn0qcZD693OuVQU8zo+ZGzg4/sRsLBDM7W2n4
	 Je6uso4DJmusVe3h8R54it1DEisKDEkihnu40hzA1SLGGMO7H6PGaKepWJTocszXhi
	 q4sIuJqRHSlPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFBACF34AC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358071363.25054.11963072134887970088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabb15602b19232b3fc09971460afe3408a4c2a0630d6acace65f76924bf94ff
Date: Wed, 19 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763580713
