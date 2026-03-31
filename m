Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B6D364E83
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774925094; cv=none; b=nd19PSBi0to9wFTR35jWSOyfD2CwEVMWB9bcyeWSFcbWvVUAUI3bOLtUJjtS7EefzozzcOgSHU73PE4Skvk2xSE7F1om+h+3SEuoKB2SNuBWMRgOyUlcMGiYf6TibmM5ponksmksUS0tKtDMJh0x1piv22EZVW+GigjojABzol4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774925094; c=relaxed/simple;
	bh=vLkscmyKXUCP0J1ozKXOPL0P7WKLwtKDTFsvUtUXcxQ=;
	h=To:Subject:From:Message-Id:Date; b=Nuid1lGbqIrzWf7rRDR3rutrwTIdEq+7Rwx+rmo/XOXra2uesrYP/+/RAS2dK+5uGBpQIY8i59uhy+8P49OnBf2dXKQNLi3vJ9rdfBztcjnTZ2lWefmwUw5tRJBMVMaxuE8g0vqGCRiL8nnQUF3+EhZf/DEt16jQRebitIHKLgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuIQ6veB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuIQ6veB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774925093;
	bh=vLkscmyKXUCP0J1ozKXOPL0P7WKLwtKDTFsvUtUXcxQ=;
	h=To:Subject:From:Date:From;
	b=PuIQ6veBg0bm+SuEMgCyxiHgx/aHw5aT3EakqyxuhJsc3aM10AzTB/7B6MatBblrQ
	 2Pi0rWO7jvuulFbo7sJBD1mkYNnsr2UnSi7ut3MfkqTYv5S3dK+ZOgxHJYxCLWprlM
	 bHaoUIr4CQFizdUG1ucEUhTwDkscr7LTtYgPVjO48FP9xM6TrjtZZ3K3sZ0h90F361
	 ff6eaKoLZ1qXSkxpQ0ZOPbMJf2UPpISdD7vcZhJixDqHd0o+p3BI+Z9WpRC5yu1+AC
	 ElXQajwK2fULFoZlgFrcdQs6wB6mbyAhdOFTvKe76AG9MP1j74n0vWCrA4Xg1wz/Ul
	 cYKwfZ7rfSo7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E341061B2D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492509358.15474.3635617991255700544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4392dab7800b723b3563dbd2098106260e6772e595ee2e204a5b8523e0d735c
Date: Tue, 31 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774925093
