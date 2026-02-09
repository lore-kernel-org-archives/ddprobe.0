Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15078258CDF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770630234; cv=none; b=LjiUKtJebgejr6fEWkTSGW6huPkkBJy79tzPGe9NQ40vFHtLKUgSLQhJA2ph3iiN7A/bmr7IZDvXWLMOTsN0U5PFXqAC4wBH6PoLZOOuH/aaf7oAx+uzbYfCe8tYvhZ4YGFrtGON8FUBEIkQOq6m3JXZ/4hSIr86fZYS8aqrQ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770630234; c=relaxed/simple;
	bh=uBDx3M7MyRyxMeJgjbdQbP1hJRyHlljprtR1bbqfsZY=;
	h=To:Subject:From:Message-Id:Date; b=pgM0WhF58CQPIbwPFev3N7oI8JXR8p42xdBAtEwfFvw6H/Tnb7xWhvuw3QddewLY1x+b9aUteWmK0VVgE894epmN2uaPR/OpEUgLiBUAFWNbsqMeYXnT95I6/x+aIOuU4XYMEU9zXR8ZmMLIgk5A8e27wVM+7Qb3m+KjEfTLXU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTPnl2+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTPnl2+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA44C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770630233;
	bh=uBDx3M7MyRyxMeJgjbdQbP1hJRyHlljprtR1bbqfsZY=;
	h=To:Subject:From:Date:From;
	b=uTPnl2+8h+GEvwDtT1pgL1XQKUGGjWb7G7yIklqmWatIf2IGbXxht0SeevpCBkYxj
	 fHbsC95+N69/wYC61EHzThoPdSG+ZIi67tpSX136Ymqd/uegC0Pfp4YQoM1bGY+rjR
	 oQGK7VdfEtddDrWgA2tsX1BAmYEexhKHWRuxsVGMP2byVOwJUcB5zFxjpaowbbnStn
	 hINhCRwJWNVSkZZPBuuB77h1exHJEYZYereQl3kXaCOCSj5VZc4RVfJVeRFjbFydZ1
	 U0J9okxHFqPKPd1K9RudXvwBpAZtqtdsP6FgazKR/QO64hunUHBfklHWfsnYhaotvK
	 gsP1yFUYn13AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B61EE7E0B4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063023362.4064.13553584083256977646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414683ccd444dbba90fe3be5c3b4f3ee29af4a86fbe45994589dcbb54e976465
Date: Mon, 09 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770630233
