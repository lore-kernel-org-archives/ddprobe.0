Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1621E1A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767296634; cv=none; b=CDp979fE+ZzoAWz8ODob0IWZavOxvnxapYgvw0GkW0jC7ygLJvyOGeadaCH2/mQzqfk/+SLoOZICWvpe1l2py+/B5HGlGygPVEtX968I5Fdn32BuQLPcYidrerIZieTZgvzcta4vwVWCaB2XZcuXrbd9/m/2gB/fLuXs63PKt/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767296634; c=relaxed/simple;
	bh=7H4PaWElZ7wvyVBSZ4+cDD9TsQJlKT7ozj/RMWovCE8=;
	h=To:Subject:From:Message-Id:Date; b=WMeto1iLNqVkEax7SXKf7VKdG5pn+MpGBBPQoPOjHC/gQzVH1PxwA9TXtYIqAr7PPeoxjbkE/auRDLASz03bYC2hzapjECyWJkbsHbtorRF/v2fNFO1DU0OMFRG3TQBggIE5TzlD0sS+loZs788TFzDVAJty3BBzsnr6XE/YWu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjD4sk6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjD4sk6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB773C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767296633;
	bh=7H4PaWElZ7wvyVBSZ4+cDD9TsQJlKT7ozj/RMWovCE8=;
	h=To:Subject:From:Date:From;
	b=qjD4sk6BeiXAR31juOTJZ+KHn2htkY8Xc589vNICMTxqI3yTj+Zcbj802j48R4MsU
	 sxD/SIKkAQUgcGoyn3RN2c4hwGm6lzXGpqd0XJ+9ZL/xRliogIWVMBd7DPwKNgt37f
	 PaDmw5vw7LBBdgWqoUYpzx7TeATHbz1BSZgtSjXLILpiErdcvXRxEkqFM6UHKJ57LU
	 3BJSx7jaiskULo4W9ecgNgxbqH/BbidpA85McMtITRDwDmk2eGqFBekvLk/MTsgdwH
	 WRGTknZ5lEj9M1DRJfP9aAxWu9a/0CgxuV7dXSQeVleGKl0cYEP6FNLA8lPjdlyMOE
	 04JaZjPelzg3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E9EED630
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729663358.5146.3061878313213789555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0486e4dcf8084bd7abb3a08ff6fe64be753934ce75473ca7dea1cc873372aba5
Date: Thu, 01 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767296633
