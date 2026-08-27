Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354D64772B7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787848834; cv=none; b=PGUDcpN4JzhgJyGcWcopum02gkDy7U4pzcbi6rbE/zY13IsL91PMoBN3O97emukM6XvXBRT0ZzsxEsi5+l5NQ26m2ZUkTQU4w/YyXxc31qwzhW+F5wX25wf817KdVqqZitxP8NxDhwhw+tABjBtFnrJo8IbmcJ9W+f8xfO67XG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787848834; c=relaxed/simple;
	bh=vPumlqCvc8sF1n3ST7AJiv6gCZpeePGhCTP5sr7rSEk=;
	h=To:Subject:From:Message-Id:Date; b=PNJql7ECt+4d/KHVp9vYDPLu15l0Lsguj05FI3WgLPOP8Geo8SGQekw4u9yNRgkULLEdxBCVbFmJL16rI+xgjhePA5CWOAo30ZbTox8tl4jxTNYj04ASp5e9TUvRNQQQOiaTQRnIcRv0lx1pUeacQ3D7tOFa0PooPGYvNoSz7s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hn5jctHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hn5jctHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9D4C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787848833;
	bh=vPumlqCvc8sF1n3ST7AJiv6gCZpeePGhCTP5sr7rSEk=;
	h=To:Subject:From:Date:From;
	b=Hn5jctHrPYJLLGyjKZFJTCHSghsNvpR7wCKUlvxl9T23+qCbvkNh2WmZDfKvjzCPb
	 kiKewmDeyMeIyV2Pu3LYEHN/xnmT/dlPG9OLG1xkTjXJXPbGTLHPdwch9rrHY0ZlmU
	 5JOdh6bB0QU1iLtQSO48FWMSdxcsaEbwtWMD8cExFESZ1wXs/pDYAFL1btDnup53ii
	 ln7wWFe9Ju+iUsyhVIFNSLFRVOdKEp2DX03D98ROJf5XUiBBCbmL4OYD6giyvOcBg2
	 ko+PsqOCo5tB3mJYIGzqwV27dE/5oTNYmj4xaw0s+vUVAc56lT6nD5MUCtthJzqgmE
	 M7XyiQKpDgHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF43C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784883369.3891.16101452922269260656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729a82940805ef3d7f2b4ee82d76dbc618012d0bd24e9ea7c97b6a7861a89809
Date: Thu, 27 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787848833
