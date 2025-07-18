Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FFB215F42
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752840594; cv=none; b=DPIRCtc/Al3Yhagmd+mSOrD4hDn1INfstjhS+gPaaI4GZtzk+J+WkVgEzOrNDlXgfI3zThT4WMwj+3J83Sp5O0gVY+OPG2NBGfor6kYO0zKZTsHrs4VYnX1O/iyCgdANTAXnVt7bdz40+6p4snhE7FIiYQAqd1er5rt8y9BuLm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752840594; c=relaxed/simple;
	bh=f3NwKf7hbrcKwUckDcduKewBzEQRV+3+CPN+vcthJ7A=;
	h=To:Subject:From:Message-Id:Date; b=Cnsa4zgO6kPzT1SSO6tgET0xTHzyhuOvBhMQ/BGil0ETijldJUr4jj44GMWrI/SA53cDlRyb44gzrgwtzBbnChydqAMqnhttvrELGF0sdyvQduJWoE/uHK+jR1v+VRqn6NiPvi1XcLT1q6KjvzhaNyXxNoXHC34x38b6DHntKaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLGOgXXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLGOgXXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F86BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752840593;
	bh=f3NwKf7hbrcKwUckDcduKewBzEQRV+3+CPN+vcthJ7A=;
	h=To:Subject:From:Date:From;
	b=DLGOgXXtNiCpdX+gKB/1Zsue5ZzTE86S3KBsaa8FmAetpCp2+Q1rNAFjorED86zCf
	 WrxoXSd/aoDme1pLy8P45pN9rrB7cJEHKMT7jgCs9vwZqTknQuEG1OqLcfxw5Z363X
	 NeybTWkW2PvazYQqapwPH2tKAS1svTJiKUkvXwsstKyUqtyRQOXJwBTF46ztpGCtXz
	 GofwHl9wX7GJc8mdzkEv1XRWUc+TlZXRlxD4mW4vU5D8QTTj9EojWG7LdVK5woK/aC
	 8jbgQ8kNGpkkueIw9kBE9HCnJvGKsllmRlpFpSqjjZv6P9F7rhJjEyGihoXtoTaQkl
	 53VrBSMw9c6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DEC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284059357.11305.16657856753301497298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f989cde117dfa97718f4c64a89f264f7f751d9ae10ebc1916b390d7e68800b
Date: Fri, 18 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752840593
