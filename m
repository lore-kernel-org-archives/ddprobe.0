Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D7623DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718510303; cv=none; b=TnKITnOH6nSFSPLKQATxQo07yFq7F2kgMI7/iP4jCeEkzqMYYUC5gxmsR20hoxtab+PQJq6BDgD/1cbVCQDcamM849FAdIqq5bVOaQ646t8ZTBhMPynCK9eII04qUPwrtFBHJGIR+NyJuYeb6f9Z4gP4ZY6AYFXkDOLZTCHIh90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718510303; c=relaxed/simple;
	bh=tjL2nU+/eenXEwvI4qnNKxu0q13a77wN/D2tqeZPSaQ=;
	h=To:Subject:From:Message-Id:Date; b=QYcJGlZccLiZVrmOcQ1SklmsFg3BXTt0aULTxxUPWPbyfo959TrI6xmxTmgB6civSMT/z3c3o+UUdOSRgPDr9y+H1C4tmTAISyTvh4u7kwmCFgPfTVvL+TkVX/pQHwM55nDFeLOrAgp+u0cHPDgt5eG/SW06zFTGJ2roxEA94XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brmqfR1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brmqfR1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E328EC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718510302;
	bh=tjL2nU+/eenXEwvI4qnNKxu0q13a77wN/D2tqeZPSaQ=;
	h=To:Subject:From:Date:From;
	b=brmqfR1uF53Scuy5ApoVX4Glka1lFN0R84V7GzXnUrhyjdHUpRDQK/Yb3BFubChmC
	 /gy1tzG9tjpuiKWUeMiIj7NqTSnoLyAjH3N3kMQmikSK2s5ehv30W9/PT7CUIz5vl8
	 3U4RQlyQYFGsd2+vklQZOyVHAQ3kcdTC1KWpWz96b1LIAHoySldRgVsxqL+lqMsE23
	 9GcfIuIfgYQAo94WG5bD2mAneXuUTQOeZ+5nMHv8wRfDpUSRoaKRzj9ii1W0yOMzqm
	 2+a8CziQMtAHfH+sf6vEZQkODbFm8wF0F+YpwxcDMcrq1bWhraMD39eXRWgZiIJxDw
	 HenSGfOPv3Ngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C989AC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 03:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851030280.25895.17382770250890106565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e2a5ced1893f20d8f60dc997f91892443fb9e83591adeaf14546a71495d5d4
Date: Sun, 16 Jun 2024 03:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718510302
