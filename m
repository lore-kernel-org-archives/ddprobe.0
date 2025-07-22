Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B2F2DC347
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753180194; cv=none; b=Nv4YzuyCAIK5VK0hyB1ERcHnJtqeZbJGfoKpgeVeX7YWsdujJ/LTbjzhUwlLTYxilMYxu3/OfSbO2l7k0ot8BQGo7NETsmkWfCW+WaejS13pQmSw3qBIvgpDbtrpG0UqPzxpAt0CxH/pU9g3E56Uetq6PZ8RD/qT1ebluiALdCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753180194; c=relaxed/simple;
	bh=YI6IIbUTac+iNGsfkmvS2qAGCgukA0wcNvhWX2noWUk=;
	h=To:Subject:From:Message-Id:Date; b=l/93jAaS9+EirBMnX7LiiVJf8iWHitSsbntW38sN+MPx/mMeW+a6zqc7ZjhK8VWgGA/Ejfs86Puc5pxLCGQ23g80RjyGPaPEPSEA7y/QudEr6vxSO3yld2m/A6nqTcW36BgHHUTQCWNkwwOR24Z30OfKdpLf6qNnq9aiB9wwPVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgNDyVak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgNDyVak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B30C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753180193;
	bh=YI6IIbUTac+iNGsfkmvS2qAGCgukA0wcNvhWX2noWUk=;
	h=To:Subject:From:Date:From;
	b=sgNDyVakHOShC3QXpmBwizG5hQpy96bBn1yLdlAVzlzqUnyQsiH24RF7KFMLiyXam
	 DYNI69kaqVvnXseqsEnRSqd26colHVrsR+GJJiEQZw1+DOOGYiDKYTg8Th4i9KGdOa
	 1zWOp7/D3opyDAZgnONBhqI2q3Oi4uxYt1GK6Vblg6/qs+ZWO+/tXG/Q8tdZ0nY0kJ
	 7gZoCkPGg6ePJTV6lJcpcMy9eVXlgZEKi+FEHmhISVsCJ6NThEmjqSBx16BQtYCjmL
	 7hgL1BUa4oxZt2v0I7VaKkhKLZNzv5xABsn86SO6prc/h7OWqD8tx/unKkVcnG5r+c
	 XaDmh38scDCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F35C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318019359.20801.16332122586398073206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577e670549ff2ddd94af276a518bc4d793a0bc38bdd2bec091517556c64f5585
Date: Tue, 22 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753180193
