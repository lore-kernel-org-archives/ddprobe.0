Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B509379C43
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782754714; cv=none; b=Og6eeJFNzrq3l/v3JYfEAn14HuGlV2XR2cZ8yZ/1tijRcAnfibnGr6ARaCpcQInPje4pYZxXkwW6Bi1USV3lZ4yPfpDjfxGW0Pchdsp1MZHQgfPaTCDSK9J9OfGViXxsCItfcEBwWwIS+ok2gn8mVT4cR5qwBcbIyEYFF4JZByw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782754714; c=relaxed/simple;
	bh=WyXjrvSeKx8aozfyPTECIg3s5faUz1OLwXG6344jpoY=;
	h=To:Subject:From:Message-Id:Date; b=pJH1J61gFojDI9guO/9MlUrgSCSrzB5mZzvR5qX3P4AUKE5LfN2w/tztG/TOb9ZxUf7aecve2FTyfwvab/uWKXWhoQ3KcLVIvpC9w9IROgtEmosDNOiw7gWnhjlnbvBnRNqtnedcUgiiWdpydjIh3M84VfJUFZ6NObNqmvDo00g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUOP4lNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUOP4lNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C173BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782754713;
	bh=WyXjrvSeKx8aozfyPTECIg3s5faUz1OLwXG6344jpoY=;
	h=To:Subject:From:Date:From;
	b=uUOP4lNrPH7hYxKJyYpXVsFbHM736o7tDLBo6Ke09FLeM+WC5dQ2VKBToQ5VMbaQN
	 CH+nAtI4fiGxU67canRWrF9DtXcYNz8FZ8fFxw57/99289V/lBfKplPAHACBEhUj7I
	 tVsfBLGbviobC7zNTeaPY1i0nSznqxqmZQWuHOiETrNaukXvMQAlNUur9Czi4h3Q6N
	 WAExwFNovYB+XUkbcfu0f9C3xgiQmUFI0WbVUOVEBB1Wn6E93qucCm2dYmwYs8kZvK
	 Z4UhoTT0DPxsj1hZ1EdwBhVsmIuRoUY/4j4UfgFP1L0tTW4QgiAyERINwerNhLR7lb
	 PVnYGx2PnzAgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C04C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275471368.3153.11507027050423833261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7068913618bb998c110bc7d5191023f82c5184d400b77a9d7f74bcfbb02bfd0
Date: Mon, 29 Jun 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782754713
