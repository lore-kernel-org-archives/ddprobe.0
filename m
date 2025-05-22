Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209341EA65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747927794; cv=none; b=hIvwK9uWJnibHvDODFdleDUDPjSDquj9SfyTTTsYL8s8rno1iBpoNlpxsZ4JCC/2qrpWn94f4V8gQu/NBUN3q22UzJ+zkCr7r1WU2TGLXUdnKSO4oTWTTCmIHBKHgstZU0JJBNbxkBzTDFNqVYGcV6gZ48zFNX6hTZ4TXmFCiog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747927794; c=relaxed/simple;
	bh=m7PRBNjDdB3nfvrpB5dfnPwqjbJTqZrNlnJaQXKzStk=;
	h=To:Subject:From:Message-Id:Date; b=c1maKZf6towUZE8rkPYrw/zUSU9esAP2LoeKCwL832cfMsivc08xD9Ho9tL7TrUjescP3Zyv6oechgxYoY6qhbtC/4J9sCe8wRAc5BuAxuGWe3gnmifE67LrSG2tozZAB8vmyD97L8mvgMxkF/nF9Eqo5zf1GoIi8ofmxOaVKZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hv6QInOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hv6QInOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F943C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747927793;
	bh=m7PRBNjDdB3nfvrpB5dfnPwqjbJTqZrNlnJaQXKzStk=;
	h=To:Subject:From:Date:From;
	b=Hv6QInOT9VoZJUCiyDwLCoF8mwjPazkTIIbzNxmuZBpOQ4P+M47emeHCzKM8/G9hY
	 S1B6Dv96pyx9inIu75+YgCq5k+8XgogYh+yVheWaF6g5aqu848fcEPRhWYn7apSWpF
	 bXiHHQi6FrY2BljxEdNHBp0rHHP5We9iQyDMutUVQ9YARE1B8SDqALi86zEOn1Xocj
	 DBSEIlIYjHj/OoE9h+xhPmATsrRAGH2lcslVl9puUjZNhrm3Z9UWKPSX8f5U93W3ul
	 1QtKMJuQZZwnJWsdE35Cqru3AXjcV3YU4u6LFc/B5ziokMtDCih4IBvswCfSZIHBvy
	 DlX962zbLb8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F669C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792779357.10096.5651060280122565875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bf0c532a785079eeb60499c9ae85fcfe65aaa2643c50c9f55c4da1cc7a2608
Date: Thu, 22 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747927793
