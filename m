Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BCE3126CC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756477194; cv=none; b=JHf+3lzeh6WfWDw1Ih72kN2E8YFXyqUemHCNhXZ54I2Y0vcQvj9tT1j16KTd52frBI0KaAJ/4H6fDCasMhg9dXij8KgGes3/tj7nv+5Ar+RFCp47OWoZ3PMOvY5gUthRm9q9ghItTMyHlzUONvALMi6xo/ZQAmWWn2GTfzxanpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756477194; c=relaxed/simple;
	bh=g03quZVHw8uoxtZLI8eTpszscVAtYZxFigkXttXrc1Y=;
	h=To:Subject:From:Message-Id:Date; b=P1JeYjpEvZqNZlgMGvRc50s7WCQ//AwPJ68QA6qF6hmeQ4XOfnqoPYijo8xRWxo+6yttMvD/a+qX95bpxbz0K3wB2w+AOqq8u+A0tIiTdqHxIphucctE11eqzPR2pslYrabjmpa3KJLodfkCbOLQPHjRQcOj2UWcBCope7bcxtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGHR89M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGHR89M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2205C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756477193;
	bh=g03quZVHw8uoxtZLI8eTpszscVAtYZxFigkXttXrc1Y=;
	h=To:Subject:From:Date:From;
	b=qGHR89M9kxInpqqAwYf6IR44YZLnlqLxd/qCUpCCL07d/E9LVXcaB9IkhGB1HlBxC
	 RE8KqO/MfoR5PvZlxZqXD6hWlW9dJ8r23jwwDNlG1dDETkPbd5NgVfRLAnUtDcW7Xl
	 53S/Mou3GylWxjV/ZpGsgwIyZEMOzSS/uspdHong9z8fNsW3WQSsqUxWSMoyjC3/g8
	 NKn2sNCEg7t/6l4+HUgEcurktTZX4lLxfcACLcsexy18bXz57zGGYat+aE2J9AZavP
	 vLNB4UpkLCEi0rT7mBgEIvwa62skgvnScj//9c2tmwTbMzJ11VaEWNbfru2VEcFFcS
	 A+kam/J9gIakg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002CCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647719358.20561.10524654368683549664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c3922ee32b5b1ed364b1c8b39ddfb8b86e2839977b1d3324900f3c45f3d188
Date: Fri, 29 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756477193
