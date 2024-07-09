Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C84012D1E0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720508783; cv=none; b=YPmRDdQ+1QKHxwlsfzwSz8cj2+lW4tOkmznTWQBTO3sbAyDDJiVAZrtyIug1A5rJmLSi8H2Xjx8+2X3SkJlgxAtj/izLOT1+vycRYStIdWe1ph7QGHTa7weKwqasAZ15i5dFAYJ3jOjx7jgDYuGtBOv3HFcY/C46XWkajQqUHEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720508783; c=relaxed/simple;
	bh=dcFh0e3pYjVEWGESPYdDHa3I+fGMg38vtBd8BNZ1pzQ=;
	h=To:Subject:From:Message-Id:Date; b=urNB+fQq92Ai1cx4uYc68X/x9F/HaFRIt0VnPQ7qMYB+1hrVQs4s3c+Byl1K68vSvwtf43upoeu9bIwNExP3j9wMjfiYkOKNuB3d4wQRAHKANx8YAhJw0nN2KAa+M4VfuB9I2BSU3dnCQGHQM/evCBWqiz24KJ0v7w7M3wULkmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPVpxzL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPVpxzL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F62C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720508782;
	bh=dcFh0e3pYjVEWGESPYdDHa3I+fGMg38vtBd8BNZ1pzQ=;
	h=To:Subject:From:Date:From;
	b=RPVpxzL1x/o2sC79mErJzJLN6464z3kCNIJ4m3FMR8axNG+XOgAjpL/URv+aA4Q5i
	 5zGb47Fi8z+9zhG+dwGtx55qtK6yFdiKOXKE64yulMoWkb4kg2UCTgA9/YH8ne+KKF
	 xorIsXsnf8RD5CBLDOWKlIe5ixDemnlXsJNqTmRTPiz3WWqYAlyImcJ4jdKG0LbaO5
	 nwLskRBCVOVWLQUZSRkMSASuoj8byTLCz93M6eTW9/5vIBnMjoA5V8zUyOR/k7wqOP
	 IRytjS8iTxWKPO9fB1tV2u52OJVq6Zs9PbCmdcLfzKqaJCf38CZc4Q2TDzK1Nkx17L
	 rYZKxQ9qEwKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EC2C41513
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050878279.21355.8934079914642099203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288921e28b166d685faa8cfb3d520d608bb23c129dd1d0342d88c0b885caa5d4
Date: Tue, 09 Jul 2024 07:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720508782
