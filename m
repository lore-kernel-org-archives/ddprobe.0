Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E40136E3F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759594; cv=none; b=n4vtOuKTDn2uQsdw6oQD+Xjl31Tn7DsXQdcoy8RU2u6MbWWHG4f7GBtkybMYHIaj8X8NUYMYAjrDeMmvqG/OEiKxZ5JVTnuSlqdzdRinL866XXeg0Qlo1sAXheArmiWv+kYYVgg4xZPAmKekNX/nTVjr8VEjfRJJDK3/6Jrj4oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759594; c=relaxed/simple;
	bh=K+rQ97ZKUt8guDut/VUR4XOcTbwnjXnY83v+4lxffOo=;
	h=To:Subject:From:Message-Id:Date; b=G6jKWRpvkr4qWjjEPMkc14J2rBHb47Hg3Ku+uMPGDAnEyzx4VbEPEYFxkcliSPxEwFXv6kvDGMXxL/Yk2e6NscOv8oUjoucjNRxaevocgbTvrJBcjGBZWI/GR5jFFVCCkEiRvqegXjl6i52TVextHC3KMNtzi/1cpP7Br5THe7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOjP1H9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOjP1H9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF73C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758759593;
	bh=K+rQ97ZKUt8guDut/VUR4XOcTbwnjXnY83v+4lxffOo=;
	h=To:Subject:From:Date:From;
	b=tOjP1H9i/gMYsD+ozfAyGWDngFMVyDQkkzGgShEaLN3Y+8lbggeK4KhTf7cPIn2WT
	 DvX7ytOaQNHEVDcFzTSiscfcJYFb3Efxx3LsCOhfwpYcoLrItujimhd8ZOqQV8wQ6D
	 L/GPE7mIId+47aWt097vVX46JE5U4uNbYavhajU/PkUd4tRSwKDr19hFtvq43hgxV3
	 Mbet6/mUmjwU4yG7mQ+dQpzyACgbM0keL2OyAT5beRS9NoU/NHY3S1Up8md40V0PKR
	 F04GIEZnqRZEyJ68mf7YlGunZa2iivzE9u90uaSSKOsPydQBiNVwFKMBsuaFtrALBb
	 yHj+W9NweLtjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7ECAC5AE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875959358.13254.17545447729294958453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c86639fa6ac5c3375cbaf662a28bae3d230dd52ff2271a51f4fc9b5c56e89f1
Date: Thu, 25 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758759593
