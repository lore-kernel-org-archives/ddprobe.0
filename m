Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB67020C038
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771463093; cv=none; b=ReIVYaz+7U67Kqz/cEldsOeWkx63+57fuGzXmL4pyWHJ8s4oXoeN1eSYIjtJKQscn4tqfj7B4lpwSO5hy5KBhrja4qlCq07vG4A+bfNbSrz0NiKCeQ0qt3yV1SqMoVW6zdu74xJVesXEOcmKEsh3bD0EF9Ade547oar5T6JCzVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771463093; c=relaxed/simple;
	bh=2X7bJvTGYCQ28E6Vq0rQXOJz/wZTSxXVnDTML1jfeio=;
	h=To:Subject:From:Message-Id:Date; b=KsvC9PgcNppQGbhnEK8jWUfSa20LdtkSoKC9aN8vsUzS2CG2u7p74aRgoxYs5mbhie38mHqSPy5vwdGlyXloK2JrBjU9vLya2CHPgkEwZ+rXUgqe8cKLVG9OQLuNG3RkcKKBE+dacMbcPw3RZI8DFoJAHLcsRQbNX/8hEoj1LmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kdo0DegH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kdo0DegH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC88C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771463093;
	bh=2X7bJvTGYCQ28E6Vq0rQXOJz/wZTSxXVnDTML1jfeio=;
	h=To:Subject:From:Date:From;
	b=Kdo0DegHlVqCB2v0bX3gw96Yk12KncLfItKxyVlFFUofqemBVhPNu3XUUzEkqG7q5
	 axV5CL6JZhKyTHksbRYXW2ooU1kdj4svRiGWyd5MZatUHkR1DpgRJFpgAiNYNB37wJ
	 hiIQT6I5D6ATYSBp3m+j3+MNt5brsHWmL7RQewVYDSak/DRKNI41roUUA/E7uMpsLR
	 YtWWFMAEj9zbyK9TCMQgcPA/XqdahLzX3bapS+gmcWopWkIzZ/FVrcIlbFh6HRlQCJ
	 sskIntHG6cB7tUVgBrO2MKOdonrCqfNRcmCvzol7hGgSlYNFgmkL3pCsQqNJhryRrx
	 JXHxNsIe14C0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF9E9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146309360.9597.4969707125565636220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab9c74c949681ef97d96f2b84134fa7797a45203f0d6cc371cc9cf7a56617e1
Date: Thu, 19 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771463093
