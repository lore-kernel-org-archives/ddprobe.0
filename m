Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BB74C6D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766679234; cv=none; b=mvW9WNiHa47RD4M81u7ASgNzip68yNijPZdC0SgQqhJQJ9WomT/z4IryI0Ye2ztft40xwLxkJ1Ais7Q5rQGoU3AlmM6Sa7eMmRPEZFiQsiyqfaCpcogNrk6EA1e8jXkfh2oqVmHNxPFxtcmaBYScvi5rhFnKu/glS8B+J6QZ6BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766679234; c=relaxed/simple;
	bh=VdcDy5gSFTrhCMVgSylJCAMrxBm7LBQSlKZrzrV/0O4=;
	h=To:Subject:From:Message-Id:Date; b=BYfn0DIdxHTi0jWFVNorEYGLgwTFnV7006bXWPqGMqaat2NpNLqYer63aeUvnLfTieJyz8X0Ydxvu5ISykf3AB4IsJFICNO4qUJxTYH2YSi/PDcSsFBu+NKwCDzWs12INmBVOvhXQhkbQ3rPUKi2xbk5ptmffcBEd5cotVycy5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5sEGglE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5sEGglE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB577C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766679233;
	bh=VdcDy5gSFTrhCMVgSylJCAMrxBm7LBQSlKZrzrV/0O4=;
	h=To:Subject:From:Date:From;
	b=g5sEGglEzB9QGTQbu7ZL1VL5zelk3Kinx/wuVoBK1BFsCsENoD+/Wt8BQom/SRUbz
	 4MYgxqqt6P8Wp8xlDdgeQSCzd16dOQEOZGcoWyj1YnQ6OR1/QPeY3rU+MG7KGsW2DK
	 uVubyKeKIZvrZ3khTJyF3s7De7tapNWliKwRhXVJ341/nb3EYQGZOCMSGMQZgkFOVf
	 /PwYhyHpMrIPT2DG03NaoCX8kT7O+OgtCBSYTPsvavlaHosRz2LewnoXmEhG1EUK+S
	 YM0fUvFPYTOuYPzsjofmmxZXC3LKpQjvjHEEOQlSdIVYTpVV+LKjunrheI5ps4Fdo9
	 FfipaOa9sY0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972F3E7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667923358.18183.11375516451303028164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a858ce4a4ff00c43ac033f6b72362aad1cdb1b7fa711d6c886bf7416a467d66
Date: Thu, 25 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766679233
