Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D44830BF6C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763766115; cv=none; b=Ei8Nc90QqVLIFIdzHYC3QHC2vIVu6G2tf5FEDD9l9ADvVP6/5DKZmq9R9Bob0NdJHLy7BMUXIX9AbnkKdUE/VHBd6h85Z7EUwlRSx+b1BS9A/cbSpvafXkf/992TuUFGgu/0iI81P92RZmtIS78Dnhv8yFyyFfdH1/cDvGQdzBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763766115; c=relaxed/simple;
	bh=eq7LVKi756du7Nh7JvKheck/y8kGF9OZtSk/XI87Jmg=;
	h=To:Subject:From:Message-Id:Date; b=QIC97EZQ4XgNrOEP9hd6TauK8pglQbtV1MYAIVHaYI0IY/isuJQR6dlicmnV02o4oFtYVaX7f5n01zXRfy1n0ON2IquPa0EDwRLqf31a6HKjn6HlrDZplKr9E/TDHefdjr2mcXrbRdqxPSB9ME0iY5/+KjFSNzS2X8z4mLj2SCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xzk+yChO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xzk+yChO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A159CC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763766113;
	bh=eq7LVKi756du7Nh7JvKheck/y8kGF9OZtSk/XI87Jmg=;
	h=To:Subject:From:Date:From;
	b=Xzk+yChO1j0oOwmI8UaPO5qCEeA5XO6g+ZuZUAxd0BMPOFkNhRBL5qGIae7L3HmT3
	 17eUBSkeCU743OYU7WysVDj4xehewQcGtCw44XK/dI+CyBAx4xX+1a9cj3bQAGsgG5
	 /xttygobhY95QDcYVvzwSioHVujIM8kxav6gdlRsrUfatXlXw+meSJBm1JlSW5VZ2+
	 yLiJF+s8N6sCJZyOcThSroLA0T4II8POEmRl30aWtnGLVuXVVDQchq6Xn2orNN4tSe
	 xzF9QKaKepRspHhGgB79uxRZTDk50Ag4UaEO1/qeVRJSZ53s6tHX/tBPDyGbtqRiIF
	 gh08aIFMf0bTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FCCFC510
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376611358.15056.7515352259767693713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed13b1579fea1cf05f1675d15a3d93397bbe56fc8c2a8b6d2c005dab010d87ac
Date: Fri, 21 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763766113
