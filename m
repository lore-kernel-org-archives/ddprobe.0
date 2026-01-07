Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CAB2D63E5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767783833; cv=none; b=LHCaU1Z86dJbatwRRhoGq6+AW8l98ixWQTY7Vhpx0KtqBAJIaR4J90IhOv+MuvThPdA0z5DvURbLv53Ad5F1PdbdB/a7Ii1NWfUhU539yU0VZF8C3e60rwaTp36KFBpzflEI4jZpQqYhNDva+C1twdo1qyZr7NIBw6qG6Mevlcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767783833; c=relaxed/simple;
	bh=acZYSqHgRPmFckKCq5DumrjdPGZ7aqWDherFz3g3tOw=;
	h=To:Subject:From:Message-Id:Date; b=ixkqWiao1282cbJ9xmG7RKk4X5NMEYZHeGNrsXXhMnhBYLx91LjyCOq/0Jly5dw6jMQB46djiJOIGHPYhyl80qtV/r6ma7AXZzXf/tZuXmygPip33QLFlyPiHX0nlN24fPoRAIdPIVrNv3ZXxZp5kr4aJ+z+8rAeSnhSeZ+rIyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJzzNaAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJzzNaAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F050C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767783833;
	bh=acZYSqHgRPmFckKCq5DumrjdPGZ7aqWDherFz3g3tOw=;
	h=To:Subject:From:Date:From;
	b=QJzzNaAntgiSX8gIKQhyrJbctIg0daiTq01dI+Vldlauag9Q8GTb2yEnLGIEMfoUE
	 ptXsjhELTaJXOKcJIRglGfThhvUNRJko/oh0hfygTWDuMNRXd+vFoIEBRb35AGPMG4
	 in3amLHDK5QBOW0Fdq1Q6/iOS6O8Q7WqwM+x4VG3BDsuIc2SUBsIokzeBzijAbAG4K
	 SiuKN9qK/Z870gnIjrh2LRQz1SS2HBclnlirRB0YO0jXroENNsgfl0tfwu/QSPdW/k
	 S93zwtSev2oK2J+o3Lzww9ZBwBHu2jrQ90slb3gfY2SvxRRuxjplbyF7pv0lABCeLV
	 FjtiBxY3PjNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BBCD5852
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778383357.987.12726897921713553124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34d8ffb0576b9eec15326de2280a0a1760d819f2e1ffaeb251791d86409ff1f
Date: Wed, 07 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767783833
