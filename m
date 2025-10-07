Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDA82DCC17
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759840194; cv=none; b=a78mWDs0y5bfU0O4PGRyMhw5ODURn8ZZJ7I27V4MviLFekAvnkdqMZ4BTuTCmws4sQjWisVT3PaQNVXyA+0RcGTLBNyNnk3q4BK7RIRA9vU96aRR0DMKV1iT+dXsXx4tiw9Y66eGRvjM6shXP1+bSD6pkZNZ4576prN4s8Ur0Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759840194; c=relaxed/simple;
	bh=p0YCYNHQNa4qOoIc3EYzCJCfuS3g8yKo4ELl0AElpcQ=;
	h=To:Subject:From:Message-Id:Date; b=Xs6g3Y99K/ArhS+oQ3Q58etureAv/KJUbTVWk2ZV8H7EIO6/0t4Fw+q509EED2vFClGh/0SBE2S2GkWB1Se9nNl7EQ6JOJ/MDZq+5DPFqTxjUpykelsIv7LBtt9l679hms5QwD3NAuMkRAveRVqHSCkgt422ai9LQ9YQnqO1KtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PurkMRIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PurkMRIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C95C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759840193;
	bh=p0YCYNHQNa4qOoIc3EYzCJCfuS3g8yKo4ELl0AElpcQ=;
	h=To:Subject:From:Date:From;
	b=PurkMRIEEOCQWb/QXlz4NVAV/tqK7JJmCYdlDTOIwQv35eMHiKMKmQ1/1ywu0JZeX
	 QmhaK/YlQh+Pe+kxVuHCVrClvNioaM+hHtOCdnV3rkeIx6FtW/EA13sNQNnCILQ6Di
	 K2IUNSH1buE023FMQGla21idIJz8KVLluOv/2YTe0Sr3mT4xbb43jm4DT6Q1A9Y+Fd
	 5UqPxNXuKX3QO1LkMtk8K/bqCPR+J/upGSJyP66ttkwJ7P4PXBe3a+2vhWbZZ8FFoX
	 Iy/Zpz6zJDBKvRIn2UxPbhouldDJ/L+1A+rzvkCbhR5f6o5x2naT0nx5e8c9Z/uu+E
	 P/6O0pE3BVlzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A2CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984019359.32412.16537220276847780550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c71769a429f68e6c69c7f2433801b24df28c16237c3d5e1f66b41076fff235
Date: Tue, 07 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759840193
