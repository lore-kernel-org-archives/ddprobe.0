Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E231E3769
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750227594; cv=none; b=paL9JHKHX+YPcgrC7CNX72EB9WEq3bBi4AGgaxVO/u2JTofswDwgEmZkJ6BiJFdxltgYEQd74KIvVONwUBPg1KLAoS2n0RTfGig8uu2hk6t1MakVF6HOLZRbZogKcEy3RBJz9NRJYqgtPq5Qvr9So0dqNWZkgMwBVhleriGHfH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750227594; c=relaxed/simple;
	bh=GZzo5mGO2gkEpqE4Fgpvh2ZidvwZZbEKGyFUh9nl4yo=;
	h=To:Subject:From:Message-Id:Date; b=jabdqIiVT1daqv3DJHcfn0gi4DVlkxpQmR4VuezDDCLUTw1WAdWKymdSEnH1ks/nNA1/KLIKazvKrwM/n9rD/z/PVytHl2lBj2jCeIqjfy+wuNQORTVYLQ/ZZAgiMn5VtUAjzBcYQwKVa/BdvrZ8XbVscIh4LDXtqzTLHREr4CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTxesizZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTxesizZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F98C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750227593;
	bh=GZzo5mGO2gkEpqE4Fgpvh2ZidvwZZbEKGyFUh9nl4yo=;
	h=To:Subject:From:Date:From;
	b=cTxesizZUDVWTPSgYnrIxNd2Sab2dG81F9mW+INf5d4QLNkpJOpyYNehk05js3lsE
	 Ce8XEqvP4AEOj/iItc50STweiNCX6Tv0bMjZRLERMzxCy1YTUcOgogYPyYGxtvD1aS
	 0JRWuSdwzZjWdyBB88DwKXMgCsgL5+4aU49V6WqfInq8KnKt/lzuiFIIsWW23tPCHV
	 OQgDo6pi+H+ggp/u3h38/lVLool2By7qLeqPpRRsjzSCgVwqknH1xqs3xVee+qNmUz
	 n7IeXkLw7NQOKBNN0Xzdva+YMTQWBsR429aAKAaVOHQKYD6Uoy4BNGkVLC588f/gIG
	 j0lnyqTGLrgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91290C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022759358.7921.12907460902798959695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1803c60111c9230ddab80b4d24096da50f27cae59fa341197bc02b83e2b53b08
Date: Wed, 18 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750227593
