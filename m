Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1696129BDBD
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778947234; cv=none; b=YthmRWpdfv+GUwy4kx2f1M84CNP+LsRUn5iBxRb0wC/Cpx3sw8rxmC9+MHiZD8AWxf2kFC1vV6pWBwpfs8BXGj48fpXfMWCb/6h1bstqAaAKRtRfbWqQqngVb9YvOLOXSFKq2MAjU5L60XYNxjT1e06L55DJzPZaf0a6/qCIHw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778947234; c=relaxed/simple;
	bh=n+6cgSCIifwyniYaBSlHYGMYPTfO2uuKwvdwpmiPjo8=;
	h=To:Subject:From:Message-Id:Date; b=elApaF9D8DEJCyakqBm4VBJzbzvdb+BS0GiKSqnuU9aTjZr/1OMsrkjl6dH1NWQR5l4FLYkkk2MNbBROy7WUAUcIM1xa0XMsHsTT0k9poegEZyRU/wu1KprvqioLtXWX2T/JHKSSceKtGw26bh1Xoi1gtzXTwcV6v4q9Eb6uqHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suzTh6s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suzTh6s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4837C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778947233;
	bh=n+6cgSCIifwyniYaBSlHYGMYPTfO2uuKwvdwpmiPjo8=;
	h=To:Subject:From:Date:From;
	b=suzTh6s6nG7hTiSHPCHU3H5HRPFS+iQ+hqP4n7+Z2BHQ+2pB6TImwJp25H8eb6/2k
	 2KIgfuS6/yDXaxR9Euc75f1AhaHstyTiESOYJN0djis0K76N7oytYkoF2RnocegMWm
	 a7ZvbH9OygP841RBDSu/SksW1TPZ4CqC22rTBYYxD8a/2fXYrP2qoQ5ORoA2cMLVTM
	 4omVBdGayxaz2o+QZGjlsgs+ukuoTvtVVBVbB3fAZCa8Ci7ACW1fIPV/6MjwtckZAW
	 qHmJyBPhv8ISD3x05omQ+qIf7TMSS+oHpfeshLyNdCe0U08okZBBMZ6ZRtwlIrboXr
	 NgHiSbqp3ifQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBECCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894723369.792.4473037511082168401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7239dcdf3d96eadae58813c1257c87dd38105e23394ca2a3071fb102b98ce2
Date: Sat, 16 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778947233
