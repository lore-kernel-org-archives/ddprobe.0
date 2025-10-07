Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384351E5710
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759858194; cv=none; b=OkTVc+rwQV/RZXRy6x9frUTrg7igBIj2HLHgkjGz//PdZKHEiW6O7/V4pCKPs4KlBw7DQIwuGj45bL9RVF0oT+qao8TgrXdIdqKfMHCl1uJdRiKj/LKMp9wKf6FXf2Pcpf+kvENwOoRdwvvMwmpYw5TLUCQ5zWSzT2Nx/Uv0L4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759858194; c=relaxed/simple;
	bh=ygi8gqFTPdw0CrlGXJ87QQFCd0twAzGzASup8IB7eOw=;
	h=To:Subject:From:Message-Id:Date; b=LuLklH0Js1bJwkPunzADRI3W7kylf3bXv7TLsYf1hsKCOtKrX03ht7xHxMpRtzqKvjp9WmvGaVYvw/uHShs1vALzFaC6C905rXIAzHSool+QVwpCp8R3qPct2vSn65c1UERc/wUaqZOZ+sXR0ZFhHINGp+pdsP3k81RVbxfarnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMQxXGSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMQxXGSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1157C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759858193;
	bh=ygi8gqFTPdw0CrlGXJ87QQFCd0twAzGzASup8IB7eOw=;
	h=To:Subject:From:Date:From;
	b=ZMQxXGSVatAKdqvkAoKvUoakqA0RB5L0fZkVtHuq7lTweDzS/HhpyOP/dHoscSBsd
	 f1Pict3kNZOQ0cVI4Yml6gss8VNd9wvx2IlrZrvFpQIQ39gXSW+By+rVDqbM7BHkxB
	 661l0dpnAwYBTNSd9wZ/TPtN5bGXnv0tXMpX721NWcuEVz9X/AFum8MB0lGPTrh2lf
	 hK5Xiw0EW3i7Ai1Feb54pR/ig46HTJfJVt8vX/ixu/cgtyTQgP8P6WaE6b8HXCeQs0
	 Z/8AWiyMV5VQ00XBj/N/jY7MyFFxKID72gEbQQZof6FTKQu+VaRLchTpp4PzWC7iyH
	 fa7ryYAEboOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98407CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985819360.7589.1835047179094712629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977a096cd54b7bd9321b4696303a4f204776073aa505f0908cc1b169ff690cef
Date: Tue, 07 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759858193
