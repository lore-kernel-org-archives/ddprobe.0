Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DEE86277
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767110034; cv=none; b=uztp1X5qwGjSXVv9RIVd0nIvBAcjmtOSKH/VpkFyt7dHp5lj3LTn731bthFMfRHUFf1OqCWhRMw3GJ3F+wg0HxDhX8leCkW1JQ6vY47d1gY4nJ+SayCRgE4a1FJpGypqTN/byxJCJSrtMWsoBnVgWEnFq9BnZHHo28ihEOvePzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767110034; c=relaxed/simple;
	bh=aeUMMUdF1ZahL9Xrm65Yc1+8JAl8ShQKdmhzV+MqVK8=;
	h=To:Subject:From:Message-Id:Date; b=DwkBWsc6rY5A7LRpOcf+pl+IzqYJrlqwNbPIBrvZEuR01IDd2QsJAXeRsA+FwJBXf1RYE1rxnauEpx1VQOP5wDyaYeOcvKohGZrsfs0emNFAihHJm9Vs1d3TJskAkYVhy6msjvqLzt21vpsbQG269oBS62stXxl3H6gRinbiyBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMqMuEL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMqMuEL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F853C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767110033;
	bh=aeUMMUdF1ZahL9Xrm65Yc1+8JAl8ShQKdmhzV+MqVK8=;
	h=To:Subject:From:Date:From;
	b=QMqMuEL2BFgTMktSerA3voCMdU9yEOa8e7rhwz9rS2FqdHzAG0p0lBlR/SpoauaHo
	 kFNEmTuMdBbf5x7XCEMd9UNNn+hAWT3FFmG6svD5l67pz0oui960Dy6d4RBeASefHm
	 nM3AUoNX+4F6Bs+4QJrzTMzMWmustCObF6AXTyGnAaT6PxsOLopFviyetA8aNOSJrc
	 SjsLIb9pUDvn+zHaB9lEt+f3g7DMxBjYJgx1yl0OhPlWpioDMBrgI4KCJvvIHnpcYC
	 6kZo+jx8+RT97lUhsWjTH08ZqOy+/1Sse3XQyjVhpPvUgBoDooUVOzxjggeZcVteGE
	 diQBKLtNXoyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F668EE4981
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711003358.18679.4786180447111942337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ba283a4386318ce4f545d9d38a70a213dcec44325246b797942195f97aea7a
Date: Tue, 30 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767110033
