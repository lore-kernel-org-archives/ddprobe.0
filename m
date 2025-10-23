Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A9248F4F
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761198594; cv=none; b=ZWpkfR8VXOg5CuYxTti0kLVc5YQWQvPJPRksQyvsaVLgnARdjdR9w6+MrNORaTEpihT1JqiBI4zcT0NEIQhp1K1/a9S2G7mhLZ+/7fhvkjxCu9c5700P3qFxSXfxO52RNvnjl58sLilAbd5Zm581jD6yrYebCKKnReL06DSrr/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761198594; c=relaxed/simple;
	bh=733TtkgeD554i8POPObui2uzgDR5/dQ4TzDIR67bRLg=;
	h=To:Subject:From:Message-Id:Date; b=Q/OpFEkBXomOLq7mEGF/mO78Hq6pePVgkAkwjSxKAjoE+Qua8yDZdUz2GrOhrEZgz5qfLDUs6a9GGASkKAe7Br7la1gtw8h/zTpPYP3cune8a2Q7BJEO3tJKZoZDFTAP2SQ838lNar5L3C4jb9VvLcj4+CLM/o1j7XWXTF1TCy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEKUN6xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEKUN6xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1350C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761198593;
	bh=733TtkgeD554i8POPObui2uzgDR5/dQ4TzDIR67bRLg=;
	h=To:Subject:From:Date:From;
	b=dEKUN6xzsB6AfMXO2FV7oW55LOeZCU9Z7zwNPST9FbHuPqmUK4DyKK3aYZti1joG3
	 0O2y9XyzbVakuIMpgtXMkU8gBFs3FytXrhTcdvFeTDVWD7mR1L9h68LottMmfsY30F
	 AvCmhAynJz5DoAcUJQWMricQeufMbDcJEy+0yY5hlMIo81kOeEbmNb6QSjNER4imXE
	 4BxoGlV34ab3nYcUKCe1Lqoj1g8EyOQ5inPGHts2+Cn3ZiotgWufbDDReOGhnyvia5
	 cFkn1W5kBNQPlk/xyWUXOGJbFMhmgu5y7Puyxs4EoCcLZiuiN9+tYJMiHdLb3AMG67
	 5QgjOPNrxi5qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E3CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119859357.11912.9551084774105271264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3ff16987a755cd04359cc3e83637357a38ac9a7e1a9661f309746b13a5badf
Date: Thu, 23 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761198593
