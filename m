Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1984657CD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791292235; cv=none; b=spXtXaCVRD0LogIQ/Cz8zVuNQ0R1wny/v3xO8ZnpPeSpGIAG+rqeL365XR8NeXxXP5lfe0fsz9vPoYLoD3VfRm404WaXPj0sYxCm9Gu2/HrB08DlM5wVDECBccVDBa/DneA2TJVIyDhCgQj7nEpqyG5hUtcceaI4DO/3Jow/cKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791292235; c=relaxed/simple;
	bh=qeW3bcdeoFPZMCLPlscOE8B0EruKVnriirVTCZmmnoI=;
	h=To:Subject:From:Message-Id:Date; b=B5Twddlepfzj+CBbXgG8s3KGe1kPlPhXVrg9mHYVB2AZSM8L/u41wiwknwY1IDq0Lf3J9FaIKtEH5fuPMs+NE5TdPmU/Hw5pO0D8wNwPKD8iEkxjmcgK5L4YqRYu4pHn92gExy2U0kb2A4IS5TqIlxYA5FSTSVAur+4go48SbtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvWCP2dB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvWCP2dB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CD9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791292233;
	bh=qeW3bcdeoFPZMCLPlscOE8B0EruKVnriirVTCZmmnoI=;
	h=To:Subject:From:Date:From;
	b=UvWCP2dBl25M4mU+T7KVN+7EEZVkWGeDlzP/YhwVeaZp+rztX0eSePIJsakEsJTEP
	 JQcPJPb4VCsR2P+0p4mbTeO7qz3g1QBwBMkVhwDfFEV4dv1J+DXrZGTFJySMriD8Y0
	 Fw60pN6kWg16JE57zwOGx+W9Gfys0wStHpCIWn3YnFOaXRwTwADSZb1GADXQq0IqcC
	 7iAiUsk8WIhibax6PNtIn0hyuPnj7nOsvBKfmOR3qLCgPeUY2EMLklITiX5khzBa0R
	 eg5aZ9d8pmNPSzAPdGnM86GkYvpz26tUbNaumSswUdJozMCe3j7MkSEgucBPaB4ut+
	 d0VLeRqI9GIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E69CA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129223371.7643.1528099723747093577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5284056e55549acaf155079b85042dccdc7b419e17e8f54a314885e1ffaf3a8f
Date: Tue, 06 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791292233
