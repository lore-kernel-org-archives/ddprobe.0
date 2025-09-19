Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8771F151C
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758244194; cv=none; b=jVq0o5BC/ps29tZmoq2LVovyJJH4oZcgntD9bWXn8azTievr7dFAOnuVWVEB5O2OIeIWk1iIALAR+m0GwwSqaYzOwbq3mRsReiYwNGHTSKmJjHM1vHl/dF/+vbDmCSoI/2Xx5+j2J0LQqXaz8OsMOHr4wLJgK4jtqOPwyAQxz/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758244194; c=relaxed/simple;
	bh=y3xNZRSCAHlNIEwzXIzfuqa+S8ALrK3ynm3bFdYuyfc=;
	h=To:Subject:From:Message-Id:Date; b=FjRBVgTIBiMO5ES7Ghl8/iNthkatOR4s/0smIEbIlhOSLqJd/QfT8bPvFDKu0Jz+2X3AEmzb2Wknp2jbUkdBDQCILBiJ7ipjB/XILSGulsB8QYxPLn1S5wyS33PdDiWGiUlertOBptelLXBsYGA/UWDjYJyulTBrRc4F2upJCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekSmYVYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekSmYVYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A39C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758244193;
	bh=y3xNZRSCAHlNIEwzXIzfuqa+S8ALrK3ynm3bFdYuyfc=;
	h=To:Subject:From:Date:From;
	b=ekSmYVYG7vr3xPZ8cni7jwSdjL7fznnh976uSielW0nGBE6m/MoE1EpqYRQ4kO8xk
	 Tu9k0YzzuMN9+Em3rZhmRnI9sAk4i0QW7YAAmw+/jz8A7GboQb39C7yqTFb9Bh9fUB
	 VG9t92yIxQZH72Bq72goXmfqli9ykAIjAXz56mXlI48DtG9srZE+KXkQQJ3TVakjDQ
	 kARXOw8aorAT8tfqbBFBxq9BWaa7uNMpQaVwJMHf4TdxQG19J+16I88tva/T87zWCx
	 VwOtstAOtyl3wTHHOdCS8gbJ+IkKRVuNiut5tU3Rh63SgQsk8BJqX3P5NYTqn2ZUQ6
	 dlXPvPUPMXRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FDCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824419358.1957.16917175051749581032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468acb7055bdc8111d86f191d9bddb32be6ad5cc3cc66d214b338029b4c85ccf
Date: Fri, 19 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758244193
