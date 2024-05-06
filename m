Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6646E157487
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715024543; cv=none; b=iNx+12GBPtckkOh4UIstbQAHCyMbJVuHYy3Nz9xvrQH7fCJYuPR9HsU8koCy3TKe/XVhHgwnMPZL586ACi8R5p74aBAyNSQhEw+t5WJOQdCYU+djT5JFVwa9JiezazLwa2emdd6HIauNSEwxm6GCdCxoWXaosy50reJwKhHFfMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715024543; c=relaxed/simple;
	bh=XuABsoe9DOZMPKmCT1T4h4u0frS+4r6JLFbf4/bwNHk=;
	h=To:Subject:From:Message-Id:Date; b=bCsjHxfmjhMicjqz4Xje21soK1x8ybe4HZe+GxuLF8xfprro2fxjk0uQsqzEVc652uxQQ0zvOGDe3dDeHUoqyoJkBva260sEBd8UxjEV7s4u6LrAbJvc7X+esEVWPi+bFqkj8/AWfIbG99XF+pJtqmTapYeyLnnzVn4hEsFB3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd9MI/FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd9MI/FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D50C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715024542;
	bh=XuABsoe9DOZMPKmCT1T4h4u0frS+4r6JLFbf4/bwNHk=;
	h=To:Subject:From:Date:From;
	b=Wd9MI/FGCTMBLMdmGwI2lcuvfHmjVhlv16c8/xwxyXJZzWT/KhoheDhU4wQ6CgSx6
	 b461auzwGUNrdgMxBsku39TZW1f9J60Ql5AYommq3fh3NxZ+RrrpMP7aAIyxv41BzD
	 ToA2I6Ma3r3revbgcpwxUTkoj93pcivCI38oPeQKQZQ2B7MC6//aEypJ39wfp5RnsX
	 KON4FUR0iWnDcC+DLS/b600AFvosUbatQ53ffsXHQ6ARi1uCYsFXJdMQbzwdcPNsh+
	 FkmXrVPj+111XaohqWrN4ozJkozJXeRtKu3SC7tUDo269hfBZNzdtLL6lYw4S3wBgp
	 U2SJ0/SS6vdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1CAC25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502454276.5832.11611515163963248636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9730031f250a0a7169b9b31e049ca8c5a44ce32717c5e8fdabeb69293f3764
Date: Mon, 06 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715024542
