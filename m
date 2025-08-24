Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F2ECA5A
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756000194; cv=none; b=nKZRjMt31SohLVFZvEZyyWR8d3mQAOILtfYk8Pi0QS5VzbWNSlTdJQJ+R6d9YkfUCwgM0WfKzYXpJx5vZos8GGS9P11SXkPxr1GV6tzpH87qoYD4CJ4SB3Cd/9Eposyag7P44m76k11pPK6jpzDrppm5Y/usMqZ1lkjwI/w0+XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756000194; c=relaxed/simple;
	bh=b08CkSp6a4T6rjkuBYzwHrJT+uhVNJYaBpKjz5gXT2I=;
	h=To:Subject:From:Message-Id:Date; b=vC3MlMfcl3jWrbvPOUYyofzmUkahnqIN6YWSrwoHetijpGU1ktLKI78XBo4BZoq/hawI/amdGhMbck81QpZsKgUjYzsjMWvAWJRw5itlpl/jFsExVBABSnsWxpxfSM5S3YIPMf3EqPFXmLZSIdEPheBab1tdv7pDcJ6tdrGegJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgK07mbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgK07mbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1755C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756000193;
	bh=b08CkSp6a4T6rjkuBYzwHrJT+uhVNJYaBpKjz5gXT2I=;
	h=To:Subject:From:Date:From;
	b=hgK07mbQK21qouLAIuhIpoAZCrjFnx0iw3olHTmx09JtsXEgj4SwIrBNwpkOadkOJ
	 ZpwPtpKizyLTcA085+fXn4h8m0Prwpas0/Lhud2qtvpgqhC1zdBHi0uv5I/EY9Pro4
	 S0C2N0aHVvfrzeKoc4Pe1363BaGD8qmrJIwWGLWuYZPoojAJ9EpQveyihevOYCURWD
	 qBQ+HoxHtxzLREeqZq4+e//Vh+EBUDmUbKbN43LS/JRex3k/iqgXxNiecOj/IO4Z6h
	 bsdPifJAqUdhgtCNFkQ5XCHxxQ2hbpWUn4mBYu9vaIocn/NLVF9mBWmOKwoHYC6dY8
	 49Enh3xvBzqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92248CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600019357.18537.3924895919880721367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ab20f62d2b11c8e54fa7a584405d3510e0d27106a1e6112e5211490e1e0529
Date: Sun, 24 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756000193
