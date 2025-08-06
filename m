Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215A620A5EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754518194; cv=none; b=tSdHyXQ8YLc9+irEnKQFft9SRpHyxsrqWijCwejbGklZC6kxddvHBQf8yf0fYqGSlRMgfrTYDxJafxKV0FAui9bm56io09FuACgBQ1H5pj3nfap2ni958113gYwKoc+zdnZ0dCmBzePFIoPGMSj00Wzn0Pe0NWcXodO6hR/wQ1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754518194; c=relaxed/simple;
	bh=QaDo3CR6uJUb1LASQAgruCgmjSFWyHUcFOoSVvGPqRQ=;
	h=To:Subject:From:Message-Id:Date; b=iwQbnsX0bOsJSGUT/gqX3t0Sg6fp0JEoWs0U0G/awIZAEIjOYpf/yzmQ18AGDB+AlgNE+auHEJOOZwNdOCNtSjzDy1mV6uidG+hRJ1v4Fy7gb23v6nWMhZolFrXtmqN1HsIb6DbpOQzfymG0dhyYZL/zNZRpd3DWu66kOiHMm1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYVLk2/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYVLk2/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB25C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754518193;
	bh=QaDo3CR6uJUb1LASQAgruCgmjSFWyHUcFOoSVvGPqRQ=;
	h=To:Subject:From:Date:From;
	b=jYVLk2/LiT2JLovfUegCntEbmB9ILxnRSmHhd7g/wHXeXZfUq5jvuzL24OD5wR9HT
	 HtZy30f79xatGPxZ1BIkNcVNAVnW4MsfR5AmSKotpDOG6s5cj31PcPHdomb9Ddy/mL
	 ZVW0FmNHEWmjg3Gn2MuNArFPmtSnRwN7p+1XBIi8AVEEgbppxV04KIiraXyocLCOPe
	 eYdRh8hZYGZWiZAn5Mt2O1VbC9nOlbYw/huP0DK8ThNJKHXnM6dXjp4xGudYvWNcoJ
	 QqloLA+iPNIpmv3DXOwskziYlH6JyyXgFKczD63VwDesJHGkjYCWX8BMyxaDHuQkfd
	 PpuHcQSk5iYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A0C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451819357.18729.13917106669055300932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c2dcbcbfdf926d6615f1bc10f9c01a8ecdf969fae685035f33da6ae8787da2
Date: Wed, 06 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754518193
