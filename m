Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E63A27E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721557554; cv=none; b=T7aB/sjOpWaoU44nbhlSaNtNeyFxh9SMDdBu6lOVPDrLL8enUN0jSJfVQm/sr85BMlW2H0QNX4t4oAnB+TN+B3ZIsxW27fYhpJpO+8qzzbJYL4K2dsnIHx4D07Q5O/e6VfqMS4pkAxOckKnzLw7ZcsKE2eqFCJyXSZPelhBq50E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721557554; c=relaxed/simple;
	bh=ggofeQvT0PvVdmqUmh9Kx5FYMzpdjXYBIKbxYvAaR2c=;
	h=To:Subject:From:Message-Id:Date; b=uhfALk7lLGlkCnjOahGBnfzJRTLpBavNRbgjDGdJdCnAXvDSMMy5lUPshh6j5ztFZvPmdzJc3H4RgB+g3+MaJPXuDCxdENfGGb3rgorLCTP/lhAgFiUemFGTmcKtfERpWnP0maSW2fVDQsd57+t9/9kHhW0BJr1yfs8eVeP3lgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cbb7TmLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cbb7TmLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721557553;
	bh=ggofeQvT0PvVdmqUmh9Kx5FYMzpdjXYBIKbxYvAaR2c=;
	h=To:Subject:From:Date:From;
	b=Cbb7TmLicyXw/Iga8GQkVWJ3qPTY9j/nMuIqFn3yVZqKf6XAajSZ1Bru9Hba1j1fD
	 c++uOW9PYR9D7MSl8aCpJ+SeAlU00h9nF/Kbih/20ZoaVKXgSyWVOaUcl99aB4AFB3
	 L8CRqRcrR1dduH/oADjt3+2+qSrJnHQ1nNn2chH8GMv43kjIwm2p5lEVrXHBixrbtL
	 8tEJ30XG946ZprxQPsHZg7LaGE4C4cl+wiPUa+uEvboAokBjIvkz489DGW7lyEB6jv
	 jtFvn26yGfTL4xKhE1oazHTZliueA4he2Tk2rRz8EVeVS9yelpslhDrjripXOqnrN8
	 O8sLfeMlyMZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A23C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155755359.30636.9529454537695118401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd8db32da5e36bfc08670b14acc7a138bc0a5290616f9df1f3b436c8e3c7fc0
Date: Sun, 21 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721557553
