Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298B023B63F
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767015234; cv=none; b=UevNKpdflc99P+zvqZ2bJMEF2ip6QlxzSkxNuNiG6CejTPQkhg4OsCXXakDJPWHxnSJia/OEjyTdWYq2Cbgna7HTqRh6LcJvjijPFJzROA5lwSya5YbtqBeLANs6i5SRh8zEncJkDLUsNE9dymX04pJmGty726ZqpNS8+U7LqwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767015234; c=relaxed/simple;
	bh=biuKy7d8Em1saCSJYnX0Z7mbqEwDSJeGbPx1UbtwlIU=;
	h=To:Subject:From:Message-Id:Date; b=i8V2uGHvnB2OtrrmKFHMNa9P59mj1OeDK90hmZmMudfCzgpzgUWWoY8IaThf7NOgpmqXjP6Vyf/WXH/WFi44elHV6RAnN1IUXuQt7ofMedbS/3K6PcZiHKazDq1O0H5xbm6/TTzno1WytDFzNLK6rML/2zClB/oryRHY75uFDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJlIPFms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJlIPFms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7464C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767015233;
	bh=biuKy7d8Em1saCSJYnX0Z7mbqEwDSJeGbPx1UbtwlIU=;
	h=To:Subject:From:Date:From;
	b=MJlIPFmsarYwH+sscb/3w2ArU6C6SC5bdAwFcsgIORvwGKXCUaN1bgLv4oLv0g6kZ
	 +z2APOMdVgz+RFvdxSjfTElLPiHjiE2C6v+BnyGC06VXbw8kj+PT8Sk35fcIxVAhpy
	 wKrryPR7gygVCPRB5IavPWoWoSn1cKzboloVdryv+Cyhh/SV5mLBFfxcOi4FyBJ5v+
	 UwO4kK87W4fBpxae4Y5x65OmtBuoh2TkIeqmIEJRRhIWRuQ9r+7+jyTHo5wi3GSeHs
	 V7y2w5BjDkGScI6/RbPoPo7wgfcolLjcGsWLC6iXvxlp5grFbuUPAI4m6OS/RfW7jO
	 MdBOn2MxFUdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65D9D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701523360.20620.8151275837198697679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7a73d9a2b9be37fe82b94896f6bfe26cd19243f34c6329eeb60c5bcf035584
Date: Mon, 29 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767015233
