Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7B3242910
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789550434; cv=none; b=r0WP6i2AK0912qCNuayF9y/45wWT2bTfHZxkY4346yqGa+7BiAWL8aLHid2Ob+qJhC8a8TWaaaIffQP9naff6n1/WsgfYOCav/vjZ4OrnRJJW8QHOOg9bbFq+zMjypGo3kzNcEupmxCMxIYa/3eNuUwpU750Fjp6y71beaoIDoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789550434; c=relaxed/simple;
	bh=xQBY+1/UXhvF+UV9lY4EcqwwX12f+bNLD2wB4kch2Po=;
	h=To:Subject:From:Message-Id:Date; b=YMzu0Na91W8gScOMjokTH3jFoyxTvO3mtUrdUyKbP9oFWaStPhPpayhnQDZEsEEGjNIg4EKN7FkrC897cmPSR0azPFIS7opr4XwrmOl1ualrsZk1p3NbBHHrtByzBf/ok4TKbGnb21kBpfSvuEDyGMFvak9QYkmXZGnllK1zQcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRMtToTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRMtToTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6931C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789550433;
	bh=xQBY+1/UXhvF+UV9lY4EcqwwX12f+bNLD2wB4kch2Po=;
	h=To:Subject:From:Date:From;
	b=ZRMtToTqelfrDQjCGwwVD9AR3uBzXMeFcAtdoXoRkdtIT2ja4DUqeNEMcc6E/l4mT
	 1GbuH6m1MOZWYBRLvESEZR/wpYMA5gfb61YRCJgl9LKGhEnaPqrEnGYzzJMZF64nB8
	 fKwgoKXawcv2dmGzOyCUP+xHLGfO8UUksgMkvmgzMRRha0xt+hFQGFbLXA5l6Exg2I
	 0gR99it3Ws2hOpihufJMQC0S+rxOH+/yN5hrbTMGp4euT7Jt5Zb813MF/ZNerU+6hg
	 uU7GjNvoxklev1KB1fApkZPoHR8hYTC1eB9QXySXKbEuIMygtH1UWCOp5k5FcWon1k
	 03FlcCodUsfqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EAC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955043370.20470.13887636764295988724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210da2e6af845de06f9356f2b7e29cd196f462a505d43a55f27cac885a405653
Date: Wed, 16 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789550433
