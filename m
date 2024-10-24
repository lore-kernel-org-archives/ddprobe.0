Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5578222B655
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729803954; cv=none; b=cMyhUdrorPm4B0aCHalPJVt7KoTyyBqI4VAOnP4sicXn7ux1eH05COUiFcSVz9pKF8CE18twMdBnQSEupaNxYTlNnzEU8Py62BzWOkvRSN2mI2X45h8fbJu11YmXUMMQPAb+ig1s36smKHSVOiUtTHNBlLzu4+e4uRZo88GOtRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729803954; c=relaxed/simple;
	bh=shVgxkvlnojcPoMISadteB/23yKihXPlOwlqChujnJs=;
	h=To:Subject:From:Message-Id:Date; b=tqnUWHsKwlrSl0lQMjEwS2pioHYlZJ5utjAz+7+T4KB/KgkKVABri2Cc0n9fgBZ7urphMBsEQ0P8VMkceZmsVMLtiZyizWDdzTsRX/DFwbDp/sNXveqcLwv5yPq3l20aoC+1P7FPz/MM20vjUicN1XTJHrsSgCpcE26gib0Wmgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu0pe+U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu0pe+U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FAC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729803953;
	bh=shVgxkvlnojcPoMISadteB/23yKihXPlOwlqChujnJs=;
	h=To:Subject:From:Date:From;
	b=Gu0pe+U0A+iDsZ9+aZa8lMDDj079hbLnHXhV7rAbXBnYXEvP9OSOaRgLDV3mJP/QX
	 Bv2aBmcUEHy081juRyOkAZkntmFi/Xdvz0sZ8sZNqxygXjhjm4VH4FBXiXEaZDxGZl
	 Is3YAnZWIqA3J4eCts2Nvr//91uugubT2nHhSNK0Z6N4m6Su3oBmCg2mfN8h1NFarY
	 x0gtweeszwHZLAQW7osfylZigQGMLswQxOeZ5xoH3gUIHirXXfdudK7oFt8HNQQEiX
	 kCxIxpdtn/8+boJjW7od2ECtGlS/BGudVON3uVe1JdVO6qHrky3VXoiCFBNskYv10o
	 kIjww6Csc6gEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D34D10376
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980395360.3561.16836050143172755532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caae987639f78dbb5c78ea288453c71abebf6824f23f521b6ab56ec7452e91f
Date: Thu, 24 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729803953
