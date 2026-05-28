Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2660D25BF13
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779988354; cv=none; b=mQAzlDub3eamEVGZJtD/5CTVkhK4B8xAdwLWq/9jCbxaj0UJg3Ix27p4g7f4uKDs71hCRFEFm70cup21l8FUodl/h940UULnzbw+ppaRf+TEk/lzbThe00S6/xwIgbU+dTzV5bAwfysxs+4voBxfEor7c518rW4HRseo41H9afs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779988354; c=relaxed/simple;
	bh=QF7vdC7OvK8PyyYB4ZZ5ivXRm6VJ7Dit5kbuqriSC34=;
	h=To:Subject:From:Message-Id:Date; b=Kcp+VQ2AwaYU+QD0wBSqHEuoNz7IjuhW9Jpgw79vRazFmMK2kOwT7xlBPQJmzc+nY3ykao54nEZNouqpx811ojKrc6MJUO3sL4z7QCotwVYEjxpkEFeeMdod5nZCEe46+lXNAXdtRbSnhpP8TtfPAVauW/uqz+9FY0bN4Uao88s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCKluPQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCKluPQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D9DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779988353;
	bh=QF7vdC7OvK8PyyYB4ZZ5ivXRm6VJ7Dit5kbuqriSC34=;
	h=To:Subject:From:Date:From;
	b=WCKluPQVbKsQ/8zW14VgmI1oYVJp7492+ScPnOx3fUoN0I01bPXIafuZp2tm9ZAbX
	 Dw8FOMusJeOAImLBbPkCMoree1KdURdusaNes26Vn6uBO9qzmO7JzcW/hE4am4fN39
	 xrlnCH+Rhq/mXlKiooxZR+Mb917qSMjd9C1n6E+5fAklD0qN1MEeb/gS/r0I+fWpxT
	 e3PH1y4SdC5ikHAFItjCRQi6RVvvURl2pQNX2Vvb8YN9qAppeDCQe3B6NwPrCj80LR
	 KxOBymyf3LvOZUck7U38ZyxtHv3kvgOCFbm2SzFO9WXHoWKLqKF+GtvR6F+4bXaSp6
	 iznR8BIMShdNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB95DCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998835369.28367.12761144339534523575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7650c37f75bf32fb654ddea56299de7e09d31cde48ca463fd624211c3156dc47
Date: Thu, 28 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779988353
