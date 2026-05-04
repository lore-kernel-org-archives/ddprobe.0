Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2842223182D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777916254; cv=none; b=pVq/SzZp9bl8WNWk8aBWw/QgUB8e4lR/3/qVT1zAo4NJhmKaar6Ij70tcNC+6X7vwcnujvOFnrSoBBsPqs1tYNXx6cuI9+MLdf18N94z27hA6WbaxWn03ypZs5yYUBi6jSe3cAr5Rqc/KmIA69tYvkfDSkZ13SHsRftszLaXIxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777916254; c=relaxed/simple;
	bh=y+oY/Untepu7d25ldJbX2zPXPHu0gC/atrkBSGUNUTc=;
	h=To:Subject:From:Message-Id:Date; b=gDwluBPKHokR5oSZldorxLQt1cyszjWb2zrDla4Y3fMAK0PczzNZP2utsDOgHFo8KW3ZzlNh0hzALsDmhk5Jl8kJgT8czTfdnWQfFKcfWpgXKyZM1L/e9KydR8GSQ8BhsH9fkF7zXderQIjssH2Nrpi3D4mk/gphsw/1MHNdHes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0ngAC9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0ngAC9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0F9C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777916253;
	bh=y+oY/Untepu7d25ldJbX2zPXPHu0gC/atrkBSGUNUTc=;
	h=To:Subject:From:Date:From;
	b=P0ngAC9E9a8t12gnrHXIrr6PMsnkiVO3t7lBGCbTacBGFLjAXxQD+0rctdCgE7TBq
	 VlWmCTUtGVDl1p9SDrQ+ax+/FVT2o1zqGrq3PlGEPYll+a7yuqkBjxGN7JzDPhDgjK
	 LdyZzxa0L5cJdPSLK9qWIBOstxZAN/2t6B/a4HIR9wkSvOXSlQ9ZIKNfDVGJMV0hyI
	 4APcbqhanr2hudpdRRXkZz87hJb6q/qDxqwM82KK9RyaQwV0YYhjy6JBRSrMoOirnU
	 gqvzdVT0OScSHRg7iAPJSqONRhSOz1sk9jqGV95GD2jD77UBEvzhNKC7g2npCINqxV
	 BI7DjRhRCG4gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D6CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791625368.11524.11981627334467902797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8148e68c344a38382db40557d9f1f3bd3498f35f47fec678eb18effb4246a1
Date: Mon, 04 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777916253
