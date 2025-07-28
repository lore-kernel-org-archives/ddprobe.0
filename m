Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A935202998
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753702794; cv=none; b=JheThzy7mVEUso+qsWg7FxAT7pNzoLuEZVBz0T6pyddk4uwCugrmrHbvp7Sh6daOClSMVsS+JeTXeFSBLaxoLqY0vzPRZFEWPzSC9lGelYiKEXR6YHsi4tvMsWnLKqrWRNDNMOlMFrf73HuDiSa5sZCJT9IoZam1KDb/Ln+elyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753702794; c=relaxed/simple;
	bh=che6mVJdsXYShGLrHsEF79FqHQK3UpbRptJ66nARFIw=;
	h=To:Subject:From:Message-Id:Date; b=raKXJ7Mh615uF4dp6WNczQV7nXgMTbebGJ9fOlEkRIb14KkFKIOG3bT8au0wiO/NxPsix0QeA29rm4xiNED19XriImXfJEAXFOwt7plRA4J/c41JDLU0qaUZgZ8m/zin+3FOrOnPqTUBVOqi6sng2Ysa+/FgRVxpohNB+bd82us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxrEIsWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxrEIsWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67AFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753702793;
	bh=che6mVJdsXYShGLrHsEF79FqHQK3UpbRptJ66nARFIw=;
	h=To:Subject:From:Date:From;
	b=AxrEIsWuZVgGZ4D35tsGRGBz6cQuGaq6WUNdvRbj6IdfFL53FyFnckREapx4dBFko
	 6MeyNStDRFucY6CBBMIhuwFW1x9G1+E+UeRfoMpMOeUAaUQowvwR+dpbVEueg+Y4aH
	 J6qxpNsePa2UmOtL57mQHnHr4WlV2aw/6rkD8L9rbis2YjVuoWYyjzcALBkkgvd5Wq
	 hUM8MdQWAqZEm1o0dnENse75FNi80rQq2FaEFMinhswWZkmGeA/4+UNc2tFCouod48
	 fp/dmqOwJrzDZybQuj0w6rTInHA+1Rm1XSArO3XkKyhnCfZyBIOUpVKdF5J13Cr8gM
	 9oyNQlrNwuBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FDC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370279357.2861.11178109786028998212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f50387c8185291fdf01e1ebd3501acbeffef183098817b078a58f8efc1895d7
Date: Mon, 28 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753702793
