Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AAB28DB54
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776229054; cv=none; b=SpHplWdxgiRn7S149bgTRAItC6O7hO4e61XXxZpmTi4LsWiQXsRDagZEuknYUwOXzlu+GnU4LYMA6QHE3/1KabDR/I8G1vs0ryU+s1EsvIEP7gzPbz8hhcKznGeQmA1jc40waePe+ezS2zrGhqfYhsezgwWj2bc7waXS1p/im68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776229054; c=relaxed/simple;
	bh=vYzgvbmbvycDGeReqHyvzkq2MQ1F7OxjOmgpOIcP1nE=;
	h=To:Subject:From:Message-Id:Date; b=q/vaNSXUvI3OjLgqcnErzloN4YhMEdm71EvByJKLfg9GlzQBri4knaA1VTC6yv3nTvbQkXZaXklQKvv3gaF0NPA2Kv2jWrKA5QW3jdF5gZEvp4fX05cOVuq0vjjsbxYYXNcnj1NE2Cn92HSzUfA2BKEKMaOLpbL2tStJq7ilPAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBFoWBZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBFoWBZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80BEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776229053;
	bh=vYzgvbmbvycDGeReqHyvzkq2MQ1F7OxjOmgpOIcP1nE=;
	h=To:Subject:From:Date:From;
	b=lBFoWBZ6NWBePjtjOpMN5cNGSf5FIApepHcjp+tLNs9R1xaQO/mnbYowCPDJlVgOH
	 dGUAwG0whAGZSwhr5g8acP+kpUuIRh/8ka6omGR+Uge8LBnql4WH1xizphrKrR//Xm
	 2Djw9C9BBWFoBqkNrs2OCezLWk0QIPNybJecKUJ8QkacDxPCGxnGPWOBgAnlKwKrOT
	 0AhrnvZvMBj//4i/iOl0qhZRata9re9YE7h/2z+q8ef7j8beubobDZWKwY4W/1gNPJ
	 dm4ipwjgml6gNA378YCP203PTUA0QBv6ulostQDNjWguLdrw6yzRlwn0WYJym3OAvC
	 dpbc5t8xnQ9xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F7CFA0C26
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622905368.17387.9436205994617850929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f82508d4146941ff97b1030b31c87252e362ead802b68e1c3594966d3ae7d9b
Date: Wed, 15 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776229053
