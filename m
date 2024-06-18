Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2931D9503
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718680103; cv=none; b=SYkFuSMaaa2GI9zOoypyaDoYSDJAT0ooFgvf+QpWxPr8Ykx7cKW5qEQDK0tePWmLmmKSAq+c87ZEMUTVyjqbz0Pr0xRfwD1u7BNGl90vACrnecET3IUu0xX0PciqvwgojHbdhhZIGTEElqWQgjvhSdL1hOOOo4eaw1g11sbdfoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718680103; c=relaxed/simple;
	bh=3ZOHHGUv5Npghg673Xe5cBJOsqSolUf67OIEPX5Bw6E=;
	h=To:Subject:From:Message-Id:Date; b=DHFkF6CTerADiwRhkVAT5wK6jAgnw6qeMVU2ewNcCOKkrm94VcdAUu1z091P4tNnxoSZIwU+bEocPAujFbmK9IzI504Nht66kRQsMJ+97hEaBQyb7VhuO0KjEo9uuwWxCnfYnHQPUwmxxBRJNFLrDEfp0C6TwpLk4GPaE87xih0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUv8A+eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUv8A+eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2617C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718680102;
	bh=3ZOHHGUv5Npghg673Xe5cBJOsqSolUf67OIEPX5Bw6E=;
	h=To:Subject:From:Date:From;
	b=uUv8A+eDy7gS9s9VkurddUVMza6V0MpKOvxn7VYHuhQChGYCsVBK6KK9V02sPTMbF
	 bEHQg6xYExMSoMdUbtHKxAoXB9B9pPqNzQrCr0ODFVQtedOLct0uxDXKCPBKp8Ktx6
	 AQ5uKIZ5WOGn+j6YfBYFXMa/vwOZH5msKY1nB8zqofO+ri1z3hGzDYuEL1PcEJGzk1
	 v2ZVwYDcGhUiw0MHmnDBYL5Pne47k8Ch7aL9LH/gsnBtTUtq5kCVHOq0Ss43m+zUy3
	 Z7RFBik+o3uMcWhMDd5q68RkppEpJqqDBo3pHQ0prFHt/roQ2xfARI+rhDYXTe6fwY
	 PR8c5OFyWzFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90F1C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868010281.4398.16512826112901244753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f3e470e165b2aac02c18fb383cbb93d66f5b2660fd480111f535bc1d888763
Date: Tue, 18 Jun 2024 03:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718680102
