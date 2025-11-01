Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2102A272E45
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761970194; cv=none; b=F29JlC2xbLEoeU6qo3qCbbmWSRosHfXxyFisg/TLgtxeKNeahJ9ZbarVjC9MsP5Ud2+IZ5fCU8/vD4w5ROiYJITMTKzC8p23rDST0oDb3j7nkBKKRjcZ2PMU6YvU61uea2MTqeAZ+p2AZXGbZLVKZyKp7Eu+id5vnHnp6PCOjjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761970194; c=relaxed/simple;
	bh=/iJTRCEWMAplW2D93MtPFCfeYOffUHTRm1C+OiIP9Kw=;
	h=To:Subject:From:Message-Id:Date; b=Fyjib82bWDxGCXwSi+NPG+kZ8Dm8OxYYRcXKkkkgoOKnvGD6H+zCDsLLieJMcUH751Ts6gnK4W+gtSfKJtQvPCPA1rEzghfUsOjmHVNdWfugyvcHI0kuUAT+21ZOy8a7eJjRUIa/i8XtPTUCb1cInk12BtV/pHV1S6fzFgnd6kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIjgh74w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIjgh74w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761970193;
	bh=/iJTRCEWMAplW2D93MtPFCfeYOffUHTRm1C+OiIP9Kw=;
	h=To:Subject:From:Date:From;
	b=KIjgh74wgvF0mOPRPMav7i71wtZc30Jb990u720KSZWAifUNOvz0JR0HZWk2uUjx5
	 z+mSfC/a7XmsTPYLU+qwGPjQ44NG08O7LDP3uaRgMeFM2cyD+HU5vGqwQUEUilarAG
	 W+h7xYZ37arrBRGc9T1mmDMkAUjC0YBpbdlamvjNPzIRY2Mdmfvhs5pxwz9kDrp4up
	 PKsTT6itF6zPK/Z0j73o9Z9iMnYKmROqvC5SC7GtG8jwJYYc6cK/wOORMa0tfp/so7
	 eqPbIesbVO/Md/SsdFdDw3yCRh5EHN8rSacBHF4PzwcCDbSZGhLdlQOmycfla10Br9
	 rNWPhfe5z2zBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD8CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197019358.5547.12915362571222767648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1475100eaacaf0e6317e3d06ad74b524c449533ee1dd72954bc570f822a426e
Date: Sat, 01 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761970193
