Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2714763A9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736039754; cv=none; b=Qunh7+Nhiz/6FnYf15t01kvOVO1i8jFcLOzc4OVlEn6kpFxzRChkX8bKGr390O1Rg4IXfpbKvaS4+ClIcX4Y7+pPEWFbG0VZ4RLP4Kn11NR3nzcv8l6wGwFy5yX2i3D4dN4cbwsLeOavjhyUcWY4tv1RJ2zVmkAhg6iLnLz99as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736039754; c=relaxed/simple;
	bh=JZf9+LFSMEQI7pCYpZZ2MkQz4MNdKKnuBil30CfhfZc=;
	h=To:Subject:From:Message-Id:Date; b=GCRURbrTS40apzOh4bIBxLQUJi4xoetJTmoxti4RDgB0M0T81ErwZmJ8sME5nXTs/PS6JVUDae3Inni3OhtJLxYz/34oKx0iLo+EJxWmLXXjb10EnSWxnxrBcUzulHC6Te0tvpXr62y285ftsThRi141am041ZG5GwBVIidpoqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS/dVcM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS/dVcM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8FEC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736039753;
	bh=JZf9+LFSMEQI7pCYpZZ2MkQz4MNdKKnuBil30CfhfZc=;
	h=To:Subject:From:Date:From;
	b=IS/dVcM7sARSZ9NBZmAOyW8RwS/plZ3GsPkHleXGmWx6TEZhbK1QM6Nj3fuSrjdmX
	 yt9kwVuDne2PWUi4JkqXcmQsMXNey8E0h3HQYqVTDcr0OpQjl3mBNhKZtbDZk3+0+9
	 n2YusN8unkpljNf/NNX2CisHigSKmulKWxYh3faAq1/XPTaF6JG02KQWnR7lPeqPtI
	 gFH+lTlTq8wxF76URhngdJb2+ZVsPs9HcNY6kAX5Y6AF8+JpLSUeNAb1p8dlqEPAE/
	 pk4u0DD63UJoycpaPmbTfYUrISx8q8yuWIwVc+f7vuht2VhAoomI7WlyWvyDzBL0dD
	 cDEGmnpgWYcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EF7E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603975359.11523.2781597525415950766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b00753f6fca3bafe6a5624a387b5bf7693052d62921a3fdafb454cf5dd30e4
Date: Sun, 05 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736039753
