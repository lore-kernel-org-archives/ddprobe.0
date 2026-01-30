Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E8F202F70
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769781834; cv=none; b=Pp60UJWAS6jAndWFg8Ef+xIXboe23R/j/GqVW7mOt2vOZ6fYR+d3mc4Nwxm9DU/iGNsvbjMzRYmw8HHDdL8vwOJ4tbmAjd1g88uwrwyLYT3V8sSKzSk3ebj1jZWFQgsCX4OTv1pqHOwObOm6oDQE7UuO/w1vmt0UeQ5UaPGa6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769781834; c=relaxed/simple;
	bh=BOPWm1VzGozr2V3We0tcFcW42a4VkxZgt/PSOlJo5pg=;
	h=To:Subject:From:Message-Id:Date; b=a56RhAyWiGCeVizXWtaOkthNSxC/2qisf0lsFukchUoE9MJyAtFPHC3i5T9JqK5XCgjKoP4o83lFXWTdJxTqU/ZQg+j+OG/0a408H+97DmUHiQyg7jMiAtEGLiudA1+0XHlRdFs3GgxkjcV/ZVkUVYEFwLALSsZNJ2HSxC7PtCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRb+8qkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRb+8qkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ABFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769781833;
	bh=BOPWm1VzGozr2V3We0tcFcW42a4VkxZgt/PSOlJo5pg=;
	h=To:Subject:From:Date:From;
	b=jRb+8qkXmxAQInnt8xFWGOIL7vil2I2widFV8CRqA54AEPQ2PkuD/IfWAS+yXzRSw
	 ioVD99FB6O6MBkZ55Nf1Ou2j3PRBjlKusblrKs9Hd+tDeRnaFVE2UtGTI6nfVSTajV
	 BNEYd56KWtsx7HpyQpwq9573WMAhhoXhBdbEe0uTe7OAysXE7xpIwfnyXYJCx3iv2X
	 JmaedcGZJTXvx8PU7+e+Hfk/0/MFR5uKhMnyjt0VbxrzvX3trO0752ivtp2NYQR4Rj
	 knxwbOPNaV+AkQJkO3mUdjM3IeRr+JVqnG7ZHWrt0/omTvN4e1t+d7UISKaUSWK5WD
	 2zEz5YqzqPtuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D10E6BF14
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978183359.19113.1706274988439988647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079865b61ca0d648b8838ead85c6ae7708e5045be7b7a156aff7708bf9ecdcd1
Date: Fri, 30 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769781833
