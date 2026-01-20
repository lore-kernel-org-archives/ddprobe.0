Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CAB45BD4F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768922034; cv=none; b=hMvMiNIsY9AH5mVr9xpYGmDKmvFbsZbRBqn0+IFYehwqalnR/pOPu17zbLs0y0ElCGmP7xhYsHrsmyRsEEO+D15RvGHTOrv1bL5vnP1bNNmJsa9vr084o/TqZTqKglQLb5+duvQFboHzu9IvpdF1IKqdBDUtNxUu1prT1/F0jIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768922034; c=relaxed/simple;
	bh=uRYJyK9sFaDD8e61wghTfFpFoAupFp14So/NqnzjbAE=;
	h=To:Subject:From:Message-Id:Date; b=HNEpDKu23N+KyxMpbH+4aPyL8Aipp+FNdsRdXKpyem6fLiyr9KmxgKZTOy1l2ZBqZrKqjJqxzh/fii64JYxR6BSFQvL2kwYmr7i1R3Wfiz3EJ0MNUUD333uhvDXl6BKCti8imF2mAp+KZ7y+17t/c36alr4W00KcwwkcY1WWNqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/SoT5DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/SoT5DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F342C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768922033;
	bh=uRYJyK9sFaDD8e61wghTfFpFoAupFp14So/NqnzjbAE=;
	h=To:Subject:From:Date:From;
	b=s/SoT5DSop45t0rzTQdhXk86kGgchgGllQasiXpp8/lipLL11Pz6TPiTkrDSAv7yX
	 +wHf45pevVtSzT4ltO/UXX0z/6EC1BCi65Cv2Cv6n2CpLCVNTemqyaSNjCFCZwyQ3R
	 qAF6Ae7kSog7QF3iz1tOvIwotcii2N854JrEgK3+QQIrc4UHKb8yJ8m/WbLGLvGh22
	 DkRxKcgC0j/dJE5H8eTorM2pVXCZKxvMRNw0iZ6X3eA1rYaDTeY98W+qPzEHusW0oJ
	 4APvVBAlZXl7njK5BlG38xrp0yoHW5NgAbyn6qZvkp7CVkTY95xnAuPfMPAwexZqBG
	 CyVITfuwyR1fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BCD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892203358.6403.8820422733803810994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45651d0a6efb7b641bf91a3fb16e4251f2b21f206492e9c103032d71a8f801a8
Date: Tue, 20 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768922033
