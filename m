Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E42E33DF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752379794; cv=none; b=i3aE96X4dz2weP92XvA7lHJS5xvNx4MO46VskqcgfHtHF1f56mkRO8ArYr/Y3cdvU/EychwTFCzflCNOKNqrDd6TxhWMrkhS7ntsgT7/mfzLZUGc5cfn970JCa8IPb93nJyb1NLRK+5vU+TYvxTfsgjD/R3pWBH4WQpwtdGRCoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752379794; c=relaxed/simple;
	bh=GtghH6dGTCir4qTvN6HhgSgLHwGZAFWxYx0QyHO+L/M=;
	h=To:Subject:From:Message-Id:Date; b=OpYvv1jI6GTfUQfB0cP5eojRZtN71u7txE9Np27avCH3ByqPmuDzRW8L1fTS1vymdR52fUo1z5y1KBkPx1AdOdU7usJU0zVWUeY7fmNw61ZEyqgEBuVvHQN7we42eyeIBT2NRWG9JvcJxvA6aw2Y2tKaCyBRKeyUbQe6YLZa1tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdiNiDOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdiNiDOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752379793;
	bh=GtghH6dGTCir4qTvN6HhgSgLHwGZAFWxYx0QyHO+L/M=;
	h=To:Subject:From:Date:From;
	b=BdiNiDOn1ZwAyHpiY+K9bwHKSHrSIKBn2L3d1x5GGtayxj/3KYPVQLd91aM8VE9vX
	 xj7dohfzUBVSuQPQwQdC0Jhx5A6wE5/0WHYQpi1/pqIIMGY6PFofQ56qJI3tyCwS9i
	 w/ulRRg2gul+OP0W19+OfHckmlvvRC3sYPYfMv1VDvlkknyCixfXNXTUpUgJEPrpA8
	 sMw8ebKJDadRT8iVjCMSeLFbH2a8fUqcWdJsM0Kr0ly7JOSSgm8wC/jVn7WQBcLQkB
	 JZYcDnkLFL6pyC/ZeV8yayXk9FkczgBSYo5VRIyTTcB2y4HX14x2cOD1ZFHG9FxTkR
	 28gok7rwxSEQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91851C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237979357.5355.1900875535084231045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9353cfba35df3f9ec97f77909792b4d69e060d92cc30b6f5421781f331bba0b
Date: Sun, 13 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752379793
