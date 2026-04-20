Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E36D20468E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776660454; cv=none; b=DcQ2hY+UYBzsqveFcwUL49BhzahWuAa9398mGxZOxZodiZinqweSFId6nHsSDf7c30gjJFAs31q4Uk/NiJgu38JwL8qMwbpaCliSvCxnwzZgYz/Jahw9hY4PaHvTH+Z4F9PAKC2oEmXeZm2lfeoWtcd8q+McRDzXPt8U3wLopKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776660454; c=relaxed/simple;
	bh=Dc+0lGx+nNuo4OG+6ph3mvcFzDFcYgJhuYsw9ZXrwV4=;
	h=To:Subject:From:Message-Id:Date; b=t3ZHM2qs78xfw8LUYWGV2Yk9bpKdbL9Dm9VkHlRUG+dfR26w/m6KPwQ6eueG9Kt/MehGQOVkzrnh1d3GROAv3mlkRpPUYrZhnjxqGtkCeZTWUofLsB9iTJ5fQkmbCDcV54meok7ctfun0Rq3oSG8aUV3NsSuU9U7SS8RhBVU7yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUtRNj0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUtRNj0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0494C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776660453;
	bh=Dc+0lGx+nNuo4OG+6ph3mvcFzDFcYgJhuYsw9ZXrwV4=;
	h=To:Subject:From:Date:From;
	b=kUtRNj0UrkEakRCfDIjs3UYxb+DIWbuj9IjdZvHfz/YnMnvNvhrTG3/V5c90WEcCC
	 BYFOAA0pkSAX+4wErz3iUDO2JqoF7AUZwQ/ayw7rskwUtZYIUAA/Bkmjq785afulzW
	 d3B4qram8ivmJ9dBHZ1sQxp19lRsNHh1erVri0TVOD4HHWhnsytNppTnoNiEuLoZoZ
	 yZPhcO+w2y6PmfpkMgA00X3tW5gGNG+Uu6JeeFvjIqiimXMYUP+0tXGvtVfh3fRVKj
	 H8BhbfO/Y5kX4YFHhQDvnYxf4itD3cfX509KxMjrsUNrmrGbBaNHnSIosvcK6Splsb
	 Whf0DC34tbTKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9F0EA71BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666045368.28829.3552918344112971452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75694612fd451cd19796e44f94f1ee6742345d01ddae188637ea35875c810213
Date: Mon, 20 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776660453
