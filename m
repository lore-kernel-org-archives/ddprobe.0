Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE4D2F0661
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788127234; cv=none; b=JXbLxDK+d12FuxJorWu6C2HkBpmfshU2Bc00GMksOb0HJY7hFYgs9MWt9MIZooa4xGMNEmMoliCNcCwUrvSp7OhKrlEpd9pD0/z/Je7H8IC79qrNluzDVznSG3dFA3nXiwJzi6sFOSXygHk5GRwa1m++xC8YzQUkympvmgwM0Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788127234; c=relaxed/simple;
	bh=MmCy2N5a1waE+Wz3MNrhv6y2mR6OVP6Y65WfiR4cLRE=;
	h=To:Subject:From:Message-Id:Date; b=nfLAbJJVROS8huiF8uGkrrWC/coQu9ZM7qEapigIpz5Pt8TkdZk2NZuyfll2qxfu7AN7YQRzX7cTviS0xqfjVepRh3m16rgu3t4+B9hWZdoNOussrBUu06qaMXENFL9FVc+V6ujzZdQihMah2mQekIjcff7BwpZbjr+Fl6L3+Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRoO912r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRoO912r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D0FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788127233;
	bh=MmCy2N5a1waE+Wz3MNrhv6y2mR6OVP6Y65WfiR4cLRE=;
	h=To:Subject:From:Date:From;
	b=hRoO912rSslrLuAnXbm615FkF4wvsBbAIoOdjFcYioogIC2SnoAKn+yqFBIleJMB8
	 9XSeZTYUJnM+kURnpJxV7bN93waa2AFeUTEojHMJis6Gz+2N5c/D33vSiVoBzyRgO5
	 jH3pp+g0QadvGMI2N8GAfhVS0yO357ZuYuvkEJfL608M2si6vA2/iOUaC7X3Bm2Sfv
	 R+dGQZ1iJ9CoXgInsgwkiwAQGy6utVIGwIJhuYL6HZyovnlOzyislCXjwLu6aAVIIK
	 88F0tH/ll8/KQlei1V1NNK6CXFL8pOD9fMKQfFafOxEsWLd1q82ZbhoeANKWXlmcJr
	 YMFi67hcSvNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B7C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812723368.23539.16707845995227978755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2aa6427f9b6e5735c07a104879b584250e2031aceced976e72dca357cd9ca7d
Date: Sun, 30 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788127233
