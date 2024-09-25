Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757314F132
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727242554; cv=none; b=Uk/ZOytFtC/SKb+5SMze2IKs5+mZgw9h23bAqysAi2gTHNF+TfKURYlOoAFDFFYJBrLvTQquP7WrtpI/O/lbnRLuxc2h65pvQmdcxnVNqvm3aUZ+LlzWWvjB5KrPEYVQt1fmQ/s3dPdGQcFv3ek4doUnb6VtYNuncn7WoNKvHB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727242554; c=relaxed/simple;
	bh=D1ecBdhFqAV+rZa3Infvo9PpbsRN/d74CRt6PSCZpNI=;
	h=To:Subject:From:Message-Id:Date; b=QH6RvGERYiNqJg2/Z5eprqtVEzgZPV11m9sMIZJDoWDI3+7gdYBvesL0/e1il5VsGJQVj3YlOTaR+nkOpBe8ORXN1uqL0N0M+/vt7HCzNopppUwdvbXtlLZpygpKWW4VW73WRApbL82wb1XhN5R6DrxKedYU7roIIPRhS6ly+X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYL8FfcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYL8FfcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD5C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727242553;
	bh=D1ecBdhFqAV+rZa3Infvo9PpbsRN/d74CRt6PSCZpNI=;
	h=To:Subject:From:Date:From;
	b=MYL8FfcQzQ5Gi5NrvFYEw3hAVkkLOPAIHtHT//jSHu1GQTR1HiHJ4OnnutH+/qxiS
	 /EqtoZGMDC8pL9FeqSIud34VE1OliKsivpBW8lNNKumW8uVWpnOzjFoAxtyyFaJk8h
	 PjX27nOh43/vlrgA749bPh1rE5DlXV1RteeYvPP83abypS0utDpt6QJLQh1bcuW8D7
	 R/4vqjgCvq4PIVcYIbjtzoxqsr0m9qaEol1qIGYCirirtvAXop+c1vtcq+1TA4cPf4
	 T1SNOi6mqdUpNGsT015Zi6pgeTOE6Lk6FoFZQ5tJ1F+DQDCm0sUVreBhxeixf8o8it
	 hki/f+CKdWKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F96CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724255359.29933.2575489920454523400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6926ccc62d16ea83ee5ecfe52eff7feb104e5f0485748fc4f429f8ce2e0b83d
Date: Wed, 25 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727242553
