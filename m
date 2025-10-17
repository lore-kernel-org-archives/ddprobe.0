Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C2C120
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760665194; cv=none; b=eA9wIjDwzoVIXZfYiKI18VUmM8hPOPZAMcj4KND6PrBQWGvjUZtXm0PJWeAnja/vhpgj+T8uKUofd4c8LsfafVtvXaHcTEl9upvgCrPnZH7WMgSf4iAFZPuYxBldMXUe9Bji5DkuOIrNdstIxmCVZSAolXZnMT/SP8rnvMEWQCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760665194; c=relaxed/simple;
	bh=Y3zvlQA/eqvynJmaErmFGRc7nGXpIvKG6s0h77za8SE=;
	h=To:Subject:From:Message-Id:Date; b=NyHrnEdjArICKTItvpxIxTQMEhOOxNrxtBbBZXYaI6tlwPpgHFY5kK6ya58VEHTjotfpVyzz8QebCPdJyYV5eQRMJ5QdR0S/mhReNuoEgahGmlhAxP9u0E/da9TNXutBrgSLyKza98dSk3USmvvLYIAr338rgXtuQKf+Uxjx2wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppdVMsgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppdVMsgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE03C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760665193;
	bh=Y3zvlQA/eqvynJmaErmFGRc7nGXpIvKG6s0h77za8SE=;
	h=To:Subject:From:Date:From;
	b=ppdVMsgPRJznBIMhTfksq+UbM9ZBE/6AdCD0iO8AvyPLZLZOZ8o7NANIFHPOMIePy
	 vM8Jt6BkS1O6fLALkeCOL2YgXoz4sOWOgQPMcprkjBb8fJzAzbscFc2/WLB8OfbomY
	 MQslxk6lHQ1aDnajbbjBRF2cVg7scvjFh0qAsDF13re7Qa8BY96yJB0Y+ZKq8Bl3dK
	 NAQmrsXoDh43tfrhhje+FasTXN0e8+O7iuh0YWIuAWoxpt4lt0iZ3n11+l6BhNDInF
	 hVUMu+Anu+yMVVoQcMZ+qVNXVGLGVYfBFspYcLrsvkNkN3uNyXT2i1mmOtnShYLS0w
	 QQJOozE/ECNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F183CCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066519357.23448.1460160341546202616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c650802d84a72e8623001db9e3ac445ecc5b300bbaada4a4713b5ded4ea368
Date: Fri, 17 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760665193
