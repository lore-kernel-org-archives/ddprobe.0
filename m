Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE772E7377
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779999754; cv=none; b=k9u/MPsluUrttoNovpkr7gKTlXhT7vjPqE/J9kHEXOkZVQ9Vqlue5KA72YY6rLC766D633m0yW5PKFNs8Ykdx3ZXZCodxAEpHIDl4g89sfIXI+JZP8R7T2Qh4Yr4iL795BkmAELY3RfTZkjaOkyUvWcIILgnvh984Jv8ExEsbjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779999754; c=relaxed/simple;
	bh=FK9bdLu2gEOTzLYyVoWF1zuwevrH9dmRGfNeFrGayzE=;
	h=To:Subject:From:Message-Id:Date; b=u05KQPeo6f9yphmKO5ma8qwOe8uJw44k4V+eCrQx02gJ/N8tK8XBbxiGEMxPj/06kZzIPS1znKDsI034tb7o5T2GegTv69iWCwmE8mdr6nJRwyzt9D6QBnHNClYfWHIpuSfuSeeEmSQn//PsfJ1b9FWAGqnxgQhzsA7V2YyTwio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp+jsh6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp+jsh6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4485C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779999753;
	bh=FK9bdLu2gEOTzLYyVoWF1zuwevrH9dmRGfNeFrGayzE=;
	h=To:Subject:From:Date:From;
	b=tp+jsh6ZiYTy6cZuiE3rfwToWAhz5Kex0Udn3zilWiP5aJRJ4EyjSXjQaUvDEPgaQ
	 Kqco4/4ST+QCSHnwkho2ViyZH89439FK2zm6UVgstGvXjYmPVmlz4F/oXk6cNL3e1Q
	 csCVa14g2Cg7HQ64QZlgRgMbANAWkId63Qj/D34sgZ84Hz/MWD2+5Q7YZkAY5q5o84
	 Ejpesr1P8bsuteFaE+4vnxJKTIA38P7Z7MIr0RNrHPWJLZDs9nKTB3KtDh3ixZtY1o
	 b12cz6d8Igf61mCP7MSnTKl2JyJRwi8JoEBI9cD9AhsCGqiEP2PH6Pjra1C5rkzLOc
	 cczwjXf89mqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E6CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999975368.10903.6870793453992711173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3839e480e6eac938b1527bb2596db096798ac8bcf72569b0a0852fd77d5e245
Date: Thu, 28 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779999753
