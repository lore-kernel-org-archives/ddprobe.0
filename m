Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8B440DFDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776545854; cv=none; b=l/h3hXh4/N+JavSfBXic6Krhk9SsHSph8SRuUcOCBaPrhDvJ302pCISa8CM4GhqpZKm2Usyn5syKsIw1L5bzil0YQzQ28KbVNftjoW3SEfKhGa5nW+5veowQRC28XISpoQs4MLqq/AII/HlmPb6bwqvyhqGi+sM0YG/lXyi/A5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776545854; c=relaxed/simple;
	bh=ynTw/dHPND+HTX4aRuVbTbMUz2jue2LQINLUIXAHXTc=;
	h=To:Subject:From:Message-Id:Date; b=J4NMfYu83O1BKfOqQ0V56r/qOzv5CDqqe/iL+169S9nVxSxE60ss/y0v3b7kbL/IZdG2ROBIC6ihzQt1bSMWBUHpGgIQLFJDx9HNUPWTuEWoCHw6/FxRwTsa9ksnUDzjL+0uV/ivSX5BhphUR5SlRa1n5NEbwYfP+GuPBhtF200=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuC91kxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuC91kxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5696C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776545853;
	bh=ynTw/dHPND+HTX4aRuVbTbMUz2jue2LQINLUIXAHXTc=;
	h=To:Subject:From:Date:From;
	b=LuC91kxfbTKPWtb1fH8RbEnqC+7tPEKr/Os6INTvdspIZB1TaXAepYhZOr1C4p6A5
	 w6sAVzbyWHVPBSj9NEiK5iZwTSBDkh3UJAmPfhU2MHvahD4HxmNGQ5lOSYNEOBIDzs
	 iVmkLzzbb6p4so9ht3HALOYOOnYxHOWGOpx+05ScYdfRk8EnmAASfrJI+etjoemfBx
	 +yOaBj/hZk2K3BkTN4HCQN/ZfvEXlz+zmF30wa8bXyes0C5WhVM/7/mL+BBYY05nPq
	 He4eNTqIE+G7XaNJxpciy+FNUR3uoaCiXwipTlTBXy6HjfN2tExmYwUhn/AvYONPrP
	 A7e6uwYMVXOIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE75F99C96
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654585369.28476.10547409231147717509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e631debc1ab95f8816daefda844a62bde3be5064f03732bcab738972c97183
Date: Sat, 18 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776545853
