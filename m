Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1299113A86A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719236543; cv=none; b=ucBSxNWAL0qGH2Mnq839fkSIgdiUq0OmU395utukXQrzGfnk2XyxabY6gYyskDBVUi/0bGw5dbabzM4A4nhxAg3mwopEurzuO4JI6C6+pd9wfaw2q2fGKbEwCXZMlDPaTOpWhCDMspVsDf5oHhVSI62r8Hhd01lQ4NaG8pFawPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719236543; c=relaxed/simple;
	bh=StsVb99EW0ScYj3lGObf0tGEq9v1p2h3CirJKmmhcSs=;
	h=To:Subject:From:Message-Id:Date; b=EnnvPUDQG4cRytrDe+8ZbWaVx6lrUA+99CdzVXz7h48b/LZohq+12GoWbz11UHlUsYRUpaESM0kYDEnDb6IC4FmblACmllQ32HjAdwrWZfjW0obsJqilqjPCVTxDYLBq/R0OKNeQThGdbrkSKVTAn/nZTpaHMiBHuqsieTfqkTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fawQ8ndk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fawQ8ndk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD70EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719236542;
	bh=StsVb99EW0ScYj3lGObf0tGEq9v1p2h3CirJKmmhcSs=;
	h=To:Subject:From:Date:From;
	b=fawQ8ndkjTN6kMzJRQa6MWmYa2ivUs4CVcvPe7/jiPbkuVL85/8EYW1t6BgiQwxEh
	 BUgYyNnzfAR/qpfMk4lvu6YPgQYruYRhaxrrNCnbjBMFPNI3t2XUkFeAKXwZcjU1AE
	 OBOR8Y1Gg77UT+uY8sak7qb+3dRmqmp8sD6zRmFIcn5E5JElkaT89iK/RvWc9c4Kzz
	 XSE9wf3Dj8FG9LbuThmUwIdOof+86VYU+accDyan5pwt+EcWJi7T2VkFTe2pGvjptg
	 K0lmCIjho3A39jjvHRID+Z46wS7UBhUMBewp2sWwwPczKiTpsioptNL4ebzhdzD2H0
	 VE4VCS35a0x1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E6EC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923654280.23251.8151325700452181515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57ffbfc3c9b27d87c9551e41f8201cf5345dd60cadcb4bae36a488df872e897
Date: Mon, 24 Jun 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719236542
