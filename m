Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE5E46EC8E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784662714; cv=none; b=N+rkX/KeXc8LPMj21l3AlM3BymhiBKXTygZd14bG5YUUA2XgpHX17lBHrgfGJlyJb4sYuQcphPhiho2I6ONsCykStF75k0t0I9FcLz0kTlG7V+jHFfMT5ZqjHfw/D2XNGp6hLIExcd11YDnyZG38Q0ftZZlrpqsVQZbu636qd3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784662714; c=relaxed/simple;
	bh=pPmr1chmVcCqejQmvmMz4+lRyQPoIFIpBQJAzCDon64=;
	h=To:Subject:From:Message-Id:Date; b=Q5m0eD7E1vK0mPFtfjP8kT8nsPJR0XxzcY7n8ifjqV4acEYAt+n+I0cGlJtPE23Gl8FPiGaDCNF8RGoTB0VSKa1ElUDP0EZ0hBRP+egfIhK+cXNn75hDTdL/6cHQxYq0AYpuyVLLLNh6kRF7G/5wW4eaKWVAE411zy+1+w9klBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw9aC6xB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw9aC6xB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD94EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784662713;
	bh=pPmr1chmVcCqejQmvmMz4+lRyQPoIFIpBQJAzCDon64=;
	h=To:Subject:From:Date:From;
	b=kw9aC6xBSThuMLVWYoeQTbJZjlCjvJ3rz5p5tBcxXhi56tjRTlh4rXAHkPLHFECFy
	 JNTj/bUPgXA8d/MJDH5eTQnAEETlcH689uNFJ/J//lcpkW7uoH+XjtXsHSe6+L4Vo3
	 ypIOx6gOf4/VA0eVl/agLicYrRg7czXr62PAVr6BlCn/kcFVHYjJSJVgiVredmzp0O
	 4m5t1zDltY5/V3kkIrz9gCpAE3maBMVn0VNyKvaeIl4/ilWL6IjMV2/qSO5IJSsekC
	 0InaUC165C3Yau7s0dRKbrduUJ/vE9MxhybKj5sIjuJsE0IDi48VB7uom6O2OzyRGG
	 Utc+D1tpVG/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA63BC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466271369.23454.4985022793286801241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a5848329a930e1627609199cb14a72b274f9171e76cd700926f183dbcdedd0
Date: Tue, 21 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784662713
