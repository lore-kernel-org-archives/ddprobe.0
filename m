Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B827E1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721439954; cv=none; b=jBGXd5+/wTJOFUlCpvRr16rlfoPVXwHqmg8FUFo/TTywaDUxCJAJS+5FMOs9L4nESHJYdyGu5HuNescN3cERy+6MHUw7gs+1CivZ08xPNxMviqvAUcl4iOIoLHSsO0LnTFVoPbfQDH7vh19ncBvyK0sU0wqjZ3ZmTPydMswHVgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721439954; c=relaxed/simple;
	bh=UCKzPhusy4kCRtJPrK07QUnScZqNQGMMB1ixsnHJY9g=;
	h=To:Subject:From:Message-Id:Date; b=dNoCfkLZBvxxoqdOHoX3MUpINRmPg5Hwai2fVuhpyYznJIq+yntYbzdlC/OK9Kt7czWhqyeGuYrMfMoh2XVotGIBc/eOKkOxYvRuDkD/pQGKBZ5KMoRQmqxrawTvHK+z3zKWgPX/biKcJs7viBrHstdoIWFkigPq197C+8mSyTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnVvppTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnVvppTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25B5C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721439953;
	bh=UCKzPhusy4kCRtJPrK07QUnScZqNQGMMB1ixsnHJY9g=;
	h=To:Subject:From:Date:From;
	b=nnVvppTyvbE5S8FOc5e9WDMV/6nw1q+pulbWIbpoqJ8+/s29fmb8yzCVW5VkezlBl
	 BjSpAlY0aFUasWaALkFdLnvO8E62f7oedZ6tngY5twYFQFjf3ggTpULPKRhmLgoZc7
	 BGwid/nQpQ6Q0+CVJI9od4kgrIvROq4LxxbUap0ciO3GfYGaY9PvRsud8xs0M7fzp3
	 fY3DnIHD51vVKk/LU4GDcXOdwDGvncg2FLTTcroxPgV9z25nGgDihY7/5V1pPEg+b8
	 bRAiyjdmH7YcEnNBvWS4bYWUQCYNRvzg7w9OsHdbe8OrxRtFWHO/zgdNyOS92IZ8Qz
	 CGZ+IzVL6RCxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D0C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143995358.23561.8700067530559597839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ff897ba9f5e14c1e5de584462b0cc2bb965dbf2c20ce773533a2a297004192
Date: Sat, 20 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721439953
