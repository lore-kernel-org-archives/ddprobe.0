Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A97945A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723083355; cv=none; b=ia5bGUQ5dL/ALk1tB8Qy9GjCjCFjE7CXHFLnxuMNfkrWjpHOB+iVYDA+jUOfOAcnO8FPXGAf9u4NY/duYLwZZFmT4/CSPEJHOBcU3xoURb0v9sApDNIwngTB2qjEENY00QQBjdnREYJqRDHFmvMz7/KaIQ240AbSF6dQuQ7ICpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723083355; c=relaxed/simple;
	bh=vJtrfiXMvq4zeu+PxeMvJ8TNV+LXejeUtRU5947VrZ8=;
	h=To:Subject:From:Message-Id:Date; b=hz+sOFNCcZDUYqRTxaUlEUH6nJ/p//nPHswAxK+kywEeV0HnynMk1lACAQCDP1Lj0GInz4AjDD5TeXKiO65LEvOL5RFGrc51o7OPK7pLK+qSXKQypWZtKdXd/Xo9CH1TElSeYEAK1qe73tTLeM3O5QRvDHAmZBJL1QRwD7IgKUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTSF1nW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTSF1nW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3C6C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723083354;
	bh=vJtrfiXMvq4zeu+PxeMvJ8TNV+LXejeUtRU5947VrZ8=;
	h=To:Subject:From:Date:From;
	b=TTSF1nW8yWOtX42ouj66kJZVUZpgnVj+1Xt4VLsssR3wVE+wlb3eFssvNLMuIr2uP
	 4nHbyAGbWXOCCFPffvTn/lx4qF+pAgHd/vpTvPhH3Ig26fhNGooYIeUDrsf7gJMJsA
	 1hDi4sS6qNTnx1qHCI+aNTRsghwTfGx0u9VC286iUHFWTWyeUdioevZ5c/enx54QuF
	 scwNT/gTKx98v8cOCq3ipalZwzIWBzSAeefbG+zeKN3cqwbv7Wz245QRASYHTIwfd9
	 oAJPFO+iagYAnEB3vGsKwRuzMNsqp0YyQubIzR49nuPP9EyFu9qZRvB1P6rX/mZBU5
	 cQJphCUk84oNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92108C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308335358.24483.17668653832153752345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34c70105f2590829192acd87d0734c8dc2b817b38ef93ed2248e42580db3e77
Date: Thu, 08 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723083353
