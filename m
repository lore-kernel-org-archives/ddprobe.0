Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D66335066
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785404434; cv=none; b=Byc9VGRvkCtNHU2vD9uvFmuvML27c0I6AjZldxfVWd+jJkG2d+wg7PnxH5XVk68EkhK5knb7DMSrKnPAuUbhotXLaySgjZe+CHRSnmflHX5xdE2dQ1KZvLNlr8M0VNCiUt3yqpRB9XxOEQ6c21T8qrYTF3K6FbGR0uNIxZnIqFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785404434; c=relaxed/simple;
	bh=NEazVNu/fKlo9Tpxesfb7DrNUbKlslxBtrG5/v09A8Y=;
	h=To:Subject:From:Message-Id:Date; b=U3lx6TV6xNpB1h1bHdGuhd4I8dWndOv8K2CQ0fZKcGgpegu3jFOSuQjd84x0j8JyY1Z55LBgWQ9GUUklke9qWpWUgoec3DmuU/4eRHS9sXCMLWyJ/edJyLF1ffVflzHWVL+PyY//gVqkdnlSZLJZw6glFwdvaFLoXrlRlErjfqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVGFUZI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVGFUZI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785404433;
	bh=NEazVNu/fKlo9Tpxesfb7DrNUbKlslxBtrG5/v09A8Y=;
	h=To:Subject:From:Date:From;
	b=YVGFUZI5em8RbonSiGDwz4GOVH3fGPa7mMxHelarTOg+U1WyoWGawW6I35SHpaMDw
	 cObyl3ys9nppV7S14dYy1mcCbqQ9KUHAFl3B75NVhSq0i/b4LG5KEka7VFnHgaAE91
	 53wisB3Sx1Rtu0w1nGycoXkElYABWLrjrrz9FzRGljsMdOOeLCO8iL3/Vnf11HAIak
	 FR2ZPI8aRtd4Ig8j/pwX1TEX62pliJTReCcUTcdk/xAkbdIY6bcwT7qrKcxZOPMkW1
	 y0/E8m3VjhdN2peGnd3JThkSEsl81dfUid/BCOueLlE9nBu466KqxI2RZ7/rZCOAMS
	 f3oMjJzBtPEcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A933DC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540443368.3342.16894169611988237047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe469a52cb084651177976f7baaaa159ddba2593b976fb3f1bfcbcb42b504cc
Date: Thu, 30 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785404433
