Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A42747B
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746561594; cv=none; b=tBw5GfDrL3z+q+sxfwkCf7Wyak9SI4fQGEqxD0+qwTbAb8+GG2zcM8bdMxHf3kdynDh9SQqpR/zE6C10xONepMRDHCyIscII5qZ9hZWfygEOgNBwcezK97iy01ZOuidS+D+JTXWlGQl45Fy19THHp0bew5CTUi5SjyRKfQVOVYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746561594; c=relaxed/simple;
	bh=UCBtXW75mAJzOYygvO4FsrkLc6mZKHHMqYueuaKxJCk=;
	h=To:Subject:From:Message-Id:Date; b=HOG/EqWxIJgWK27lJBVA7MGbZC1W84I1VN4nY4Zef6fDz2wcRSA1pMMl8D3++MGxqL8nsOV9TTAc+be/nvZxGgJiE5mBUPOOYMfbqfiiAWYU3onURv05yPGxAoAhe9DnQP824chkduQlnBFUR0URoKp2yalm9gJfl4IlDLOulWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkxucqvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkxucqvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E76C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746561593;
	bh=UCBtXW75mAJzOYygvO4FsrkLc6mZKHHMqYueuaKxJCk=;
	h=To:Subject:From:Date:From;
	b=mkxucqvK+7TxmxGowQarEbh8rNORpLcom9PXZ7SkuxBliM4vHJwjso/LZzQE2nZlf
	 Sf/bqCXvYyMNWEpPOokVHLfSKWYeATkLsROqbcDP+kGXcO45OHvqvQ17O3sROKQXJL
	 unCuTj4Ih/iRAL4nmFL6jl0z2gexC23wGnvpvhrC5N+EcfoeJDXHym2PbNfmLVMES7
	 Q42t9Hju9J/AM7cuRAYutvg7UneSb/7znFpa/xYfmjfDtPtKAXQ2NsMoRUl9tgOBT1
	 jkMa/54A6ins1ZF+ic82sfs9FkulCKCaZqDl6C+lLYQC3FMYgMY70xyMNoMuZFQj2u
	 fujHhubuahVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53FC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656159357.16084.9856858286675422939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512dcfa175a64303bcfa642b58eeeae59ede3558244ffb1d1408e4e615ccca0c
Date: Tue, 06 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746561593
