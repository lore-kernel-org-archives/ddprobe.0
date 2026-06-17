Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA5A2E5B21
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781657194; cv=none; b=ACu7lTZWdm2SW35GFOPn9wkU1JoWGohsxmx5ZgsVW5wjzdthitMK3IBRxMnfZcH6A70VF7mHq+w4nCAkTcx3zOeewZXRtEGJeHUokm3hh8VWoUi+OAFEb+I6R3y42lHGLzOVOM0tSHEUl+RvCA23AXgx4A5DffJyQ531gDDXiEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781657194; c=relaxed/simple;
	bh=iftBrgzueFghR2dIbIiko1h0YrqfVim4HVPxQkJh2nQ=;
	h=To:Subject:From:Message-Id:Date; b=OeLA50pcXRs0GPwoEBfv5/MSorTnyNc3HLft5s30WxqJ/XCPLumXO+sll0srJ14+6W8xhrUQjrHVXffu5cufBom03QySvTpKEhKEblIYCI9on41ePoxD23t19wmxMXFGQMogol1MR/Y0rTK0jrrP/rjrykBfDiMuPXNI3jDAPNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa3cQP0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa3cQP0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5933C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781657193;
	bh=iftBrgzueFghR2dIbIiko1h0YrqfVim4HVPxQkJh2nQ=;
	h=To:Subject:From:Date:From;
	b=Qa3cQP0gv3IzoQhZL2JT7Yffa9Z71kck/wALThXoJDwKQSRyz8Zgf6eTOpNZUCeBb
	 CeMEK58p3becjJl220i5yURebPgG8dxam7namWtLXOd1ZlNerdKJdYckUsw0RTVUeD
	 PvlHV+Zr1i8tLGwOyiwOfIszsrONtW+3HNN85Bvo0+gVqRy5cOICLZyEjy6zcPR+r3
	 NDk5baLR/N3ryjcmn3Da2nFW3pjGP7adOwy3Im6FVv2Rzjo9lXo7Aw8zpG7/2ABLso
	 +zY3m4X2oL1UBjhCzhJIUUYfiZNZs0IGXULUlPh6hWihgW/l0SwcQXD+Oh/FO9xrjn
	 tVsTFWW3Z/Rtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF30CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165719369.27615.2739687600548488734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3b39fe9aadfcd261a62b58effbb58213161d8e66aa9fa825225b39e6ebe680
Date: Wed, 17 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781657193
