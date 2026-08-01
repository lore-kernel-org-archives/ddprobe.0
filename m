Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5547430C359
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785610234; cv=none; b=BjED4gi9J/Z8cCHPjBeAbTPxflBUS//L/Tu4O39Qg3RpZm5KgAXMqlE1c47l3rMHFoMW2QdvkgrCn7fR8e3V48x7gSkznuDIublP5aWo+drYX4W/1omRmXHWqhLIp485mIlZaJrYNksO7LNghboW8uAdaDhm932On2CU+gzfMZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785610234; c=relaxed/simple;
	bh=TNubtsH6n7sSlUFgiLH+Dd33CrFxtd4X/Tm2LmwAfBg=;
	h=To:Subject:From:Message-Id:Date; b=fwmTnEioCRWlYWmmYdlaSQpnvy4PkSMm1P2OXb+CtlNYdARuzF+ePV6JDKcFXztYVk0jwl0acqeVUJ1jUDlO+UgONrWI4XrizUAazE4lLkmOvzgNLDtLG/f6xCRMXJ76fUDLs5VBUyhyccyLEQUbSfXYcv83DenAe4gwyz9Bbkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkRxJFog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkRxJFog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE33C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785610233;
	bh=TNubtsH6n7sSlUFgiLH+Dd33CrFxtd4X/Tm2LmwAfBg=;
	h=To:Subject:From:Date:From;
	b=jkRxJFogLNNRBgvmGsJoucaxlhRsrXqD74TAlOu5O7XvJ9BAeYnfKLP3bETxHUSH9
	 wnqojuUg+YyH1vXSzLDEMadubM7WD++SasDolveAthTNK+PUVeEaT7vY9VFBjSj762
	 KhejSpyKT3X/jjgDKy+2blieza9hcLD4hyavQMhddW3fMMIbI238jej8WxVZPTcPty
	 ghm3WLUlWNUtzjJrNygHazbhTNXeTMoUsq5OQEYzlfzRxZ3w7pvZ4OTiLYZGzDWXj0
	 b3MMVa814yQRLgvhdpzHOr7yl8WnO5Ea3iQOygaseMKZ8ZeTEOTgY0Gpm5mCFsVAc9
	 foqbllfDo6IuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB214C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561023369.17218.6912271095544467242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c2e6fbdf7f7a69c47641ec6a2eea328902b7775a3cc711606921324bfbceb6
Date: Sat, 01 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785610233
