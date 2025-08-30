Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BAC1EDA0E
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756597194; cv=none; b=LnfUMnBlW8S1IoM4MG/RDcRMhMNDI+A/JAU8hFxLi0ZjA8+Cm05Ae/VJcn2e0l69ISUfy14hjL1zxFP4XeDbdySDCymVSXjGOxwo6pczOFyrHz1aqoEp8ztAttfxiAAIYAKPWJ8zQbNR5p24euAKD6WCRoJZfkDGt/MICJJwCL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756597194; c=relaxed/simple;
	bh=1GSkLfkLHcdsSYPOMuWLmF6bfsLokvODa7Rc78cFdbg=;
	h=To:Subject:From:Message-Id:Date; b=NT6LITDYtnUyCJV0IacbRFo5UD2PQmkPkb1wtWZMWnykvc09ngk2EgbunAoXUQkk4P6IwOv2TmfMI7a3tMPeODs1MZhS0CAYkXNVCOhbX3xCdMYUQvzKDgoJHFYNnW3G6sKl+zxQQE12jIfUk6aifrpvbb2nF7XDfWsvat03LfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOZ/d3Lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOZ/d3Lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4598C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756597193;
	bh=1GSkLfkLHcdsSYPOMuWLmF6bfsLokvODa7Rc78cFdbg=;
	h=To:Subject:From:Date:From;
	b=BOZ/d3Lx4q1qFYdnVEi4ZwNERivTYsYMCL0DXkynsCtYPcReBcizm1C1Q2o0+mIdc
	 PAPC1YYdO6amapLc53bdWhe3Pu7vB6S6gHFZniE22ZSkvWlsOAuAu0sf8mZ9sjql5n
	 W4OW/W1JLE4CHsGGHE6fOXsqCeqT9k6DwOzOpDXKgzF2lqOUyT3WrcQ/5y6+fBkKpL
	 SF2pFPjb7MCvTdeMJyZwdcW6Gj6KUxnnNQHj7+P11KUjhwyxwBnaGaV1I+XX8ZBmp5
	 j8haBYZ3fYLCA5To6hYkdReWl9eppco54rdxMAk7mDk+rswxWPr4Iq45c05yl9PKaY
	 X/6cGras0gwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABBCA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659719357.20165.7183414192849488143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67777497a402ebb4ffc0acdd600d335d4d853924ca945ac1f638fd1e873718a5
Date: Sat, 30 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756597193
