Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519841E412E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736274954; cv=none; b=tCivFNL7THss09Tfhu65e3+pPewAEQxdtARodNlafWx1Ge2+NOYxkUp4OF538X38wrC6UszabJnhBV819J1JPZTh7MN4UmEH5juTCG64+UJUwy0RQX1QgiXydj27QHEb93PQcDmLbPa8dglpeiedfGDx92RSiEPjvHtzE09b438=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736274954; c=relaxed/simple;
	bh=NqB+0wbYNRGhdJXsg+t05T2EiG06hNJyrFDFJooHZ8Q=;
	h=To:Subject:From:Message-Id:Date; b=rvrHc3Gl4S7mY5pl1YPqF1vVYp7EVcX9JDR5dfdTeMSI0LpNd1mOnb/yngKzuux1+TTnkl4KPz6Q1RP187DjdicBTNBJdtSSgHJqgo4QCKDUEC+DMYqxp/YQeFlU2l3vI7hC/iztR97d1krpnTvgnFzLxHhhtC8igDTK4LXoIKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqujs6fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqujs6fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD3EC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736274953;
	bh=NqB+0wbYNRGhdJXsg+t05T2EiG06hNJyrFDFJooHZ8Q=;
	h=To:Subject:From:Date:From;
	b=Uqujs6fy2haqHDEfTABNu+ZHbn2js+v+MNpVqW24Hs8fDhcs4f2uCpBlQiCAUNfyL
	 +lKHbeukdgV6x9F3HkNEQygwxS6YHHjxX77HOnz60XofEBSEE4epM6K48eyK/zm5p5
	 EDqUX8iWF4soS8ipptgEOQUDf8r41EaOCKmfdXeMStkvdy/xUp5f7bwrK1lbDM1ynw
	 mvwqTfjs9ZszdP3U5hfbTg8nSb5q0Gc+KLrwI8XINnpelxjWZipSdRPTv3Ay5+Ysjs
	 LsPyhVMJsLVp3XrFjfKsPY+3xDIhQSOgfkpUQKnU1P7C2wrk3hrwcc9UpxBHWtFcIu
	 u05AAI2KW3vLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F3E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627495358.5083.10362259816897333008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47c3fc24c88c239d3ac5a8bffbca9d2264042074777acbbb9c7b35a81885727
Date: Tue, 07 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736274953
