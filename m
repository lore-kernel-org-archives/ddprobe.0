Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F8D21D3F1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747739393; cv=none; b=BpO+A6+Kl/x37q6rNcJOiDKVTAf5L1MAk7OZZj8NTXYep4Bk1V/ZrieSoPfJ50dF8Fe5CzNI7FkptPMubnS6f26hFMfF63bckATCWnx8uMWcJvSInjRQDA1+vZTqFlDdh7SDS39DVmxbg8wQ41xpAEBxUEOD0x9RkvkRNE51Rbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747739393; c=relaxed/simple;
	bh=kEpLOogsOX960mcV5PPEuTk0T7584NJ6B+RJJDBfitk=;
	h=To:Subject:From:Message-Id:Date; b=lNSy00hIvoUYFtV+KnCwjL2mP4FI45jDei9OOar0NPhF5oY8nJAMHZYpNM3YmBpv5SDQhf/S68Sl6AG+pwzxe0++PLCMRLQ6/Qr7x5PVpgufyA5rnnsq1Mqxb4EeKVD63RpYUrv4J+Hk4xL8SiWfpNkW0CCqC+bMpPntwNzYap4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQ99CKVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQ99CKVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0C7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747739393;
	bh=kEpLOogsOX960mcV5PPEuTk0T7584NJ6B+RJJDBfitk=;
	h=To:Subject:From:Date:From;
	b=bQ99CKVXcLVROJkXIPTGZU207KnpipgacGXhSkuyX2I8XK3fxcYLgOI3MLILd6N5o
	 mBIq4PoA0qrORXWz7B/CzCn24Ns3P1FVBWj2VNe9sEv5FK/pinYv8PrqVIpJpuaWbu
	 0AxObbhs2IDFInFRhfD7+H/d0v6vO5K2kEd7TUX8L0YZnBTOR4rYojaKJYeG4yCYkV
	 EDp9PyJ5ynHN2tQWa6G1y5nhFsNGZEwx3BMMSujkhERBWUryu8U7+O1Qldb6pX7ToC
	 mqL2cwU4puClBrbyquv/pHUxT0DHjvLfM51z5uyCGtij9n20IUMdpTm1QyCI3j+5a3
	 nIdyJrYAipH9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F042C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773939357.32555.14377790746065720107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddfb79609f7f30c6461af382c433ed15c45dcfc149a3315202e8d6e813bcf6e
Date: Tue, 20 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747739393
