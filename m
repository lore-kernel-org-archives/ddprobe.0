Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082B1F2B88
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753099194; cv=none; b=dabDGtHssqOsqMGkRfGn4IXr44Gv5WszdikVgQHM65xsLB4x5d1aeOi3BBFd9LgJ3HwZ3URQyqOgyMiF6pTrqz3tNr099om0CGn2YNbGW2hsBxPwCEXu5Q1ZCoB7YvwgNvIsgDu1VXwwR47Xy8xE8MXe5RHLcKGGEoOC+ohsrtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753099194; c=relaxed/simple;
	bh=6uwYZH8LatG7/Ux9NLXKSf39a96iccyU4ni1lWaTwp4=;
	h=To:Subject:From:Message-Id:Date; b=R9HpAUXXr/nIbV9WpYggHkA6zpRUo506a+WEuzVcfoGc0N6JBuoDqjkDevcHb2eFKcxgRThCAX9dukZgjp1tVXAaBKjfBaqZyFXF8EyDzI8cvARc4Ea6AKEsWqxo1GBmgd1G4sR5ytQ2lGV0cEO9vNgn6nI8rgaNAQ96VAjBKCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwLTUYfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwLTUYfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA6C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753099193;
	bh=6uwYZH8LatG7/Ux9NLXKSf39a96iccyU4ni1lWaTwp4=;
	h=To:Subject:From:Date:From;
	b=TwLTUYfyXSeLr174ge5EPrlp3qQmrpG5oVhFvDyq1eDYwPsLfxBkxaq0xVwC9beQD
	 bKL6S18tHyLhu86ROQYXxa/XRSUwQkKu0dIxYTihQZHuMVJrufo6SlilANWaU4OLbs
	 sPzXl+nDED+pvabI1tA9gIJRJAwL652KJly+3kISp5E4uwq8Bgaza63cZTAClhnx3b
	 K2xeXEv/UpISy1mLN71+j+E4RTMP+95V2BjWCFVAkqfTdIQBwMZRcVPWgYybzQ8R1d
	 /Fq7mye/+JoIt1O9tWUsr9iRIxyq4VGqwTObnBd0ODeLK2JyOmqAbskZguWvi12UbJ
	 p+qPSY+zayH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F55C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309919357.17700.18001677165406612197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fef7c0955c691a33e11d87edd5e56c442288bceb6cdbe3c3bc7f2fc73ebd9d1
Date: Mon, 21 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753099193
