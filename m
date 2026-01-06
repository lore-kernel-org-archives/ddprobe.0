Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C13330C611
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767686634; cv=none; b=BVRXfoY6ll+xI5+qflKEHtkVFZWiSkcyhF6J8N72ip5eHe27xcaDRmP3M56bYUCai8pZahk+z1AZi/5T8O3ae8KObOTC60gh2S1kwozjLyhPtbsAJmjFNcFkxpm9nMNRtEmukfa6BSXtlo7gP1ooYtxn+VXc1+WF6d6T0SCp7CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767686634; c=relaxed/simple;
	bh=Lc9OoMeYTVBEKIi36OD3KxMQO8R0oXCs0k/X7BH4v4c=;
	h=To:Subject:From:Message-Id:Date; b=cbmYJ7PHjOQUb4OuUPIhIwvzla8TUZ1B3ZWTFnDbSeY7rYzrg0V48LyICAYdMx/B7rOlGeVlMCwnuEtB2lct1s9jNCA2UHLfk8FDRm3OJ8YOJHx/aOjHTSspz0OwnDtZGrihPem5vW41Uwrur1uRj4+YfAWSDvE4hHN2S6VLxP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOEo7d/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOEo7d/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175FC19422
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767686633;
	bh=Lc9OoMeYTVBEKIi36OD3KxMQO8R0oXCs0k/X7BH4v4c=;
	h=To:Subject:From:Date:From;
	b=gOEo7d/ZMsWSRv7mWTl2vI/bGxT7SoZzosJey3hST8GW3CuM+ufbR5B8csdCBbKaF
	 yI0NPBfy3FfQ2WduPPXKi2K6Dn4QIosUsfSIEjY9noCEBsF6Dmr5S+ZFbK9O1z6E0r
	 /U/3tYVjLT0WLbVQgQwDMXcyjeUXBdPw2pXwX/3RCaOnY9tRAQRwFQFnrIomh/Eenr
	 mEUI/Zfi8JElotp7i9yAqt7rYZHZxSkFcQH2Tic3iK8HUt5iNQsx/EzJaBIl8mTefw
	 6o/COwKKlLSLr5woU64Xhz5xzrFxtvPscOvZft5usu3kIwqi2sH99cJptJyc6/aPcN
	 ra1rUB2KQGveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEBC47BC2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768663359.18755.9281361077372625512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d276ed941d3f9cd76634ccfaf78df7dddd3243fb00a8f0d149e5f4c31b5733
Date: Tue, 06 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767686633
