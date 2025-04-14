Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F83D2563
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744636194; cv=none; b=YyLRUF4EzW8VWqDaORQdDRm/OEF3t0WzeDedsmRjtCyk4haEkYJtJC3OYC6novOsHCWcN0katqIHWkp0JbVnYBqMDCIcYbBVKXBICDbP7UMvfSfvOevGgt+cHIDPvSHYUl2Y5RLjS9p73Dw+5oTxHYeXUZMhlPrQrHL1qz4mkXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744636194; c=relaxed/simple;
	bh=u3q7xBQfouIlB2eER0egQEEHsUbqWCtQ2b0tfY1UFHI=;
	h=To:Subject:From:Message-Id:Date; b=PtuSUwZQS/ihM27NACX5dTz/UksBPXUJoPctE64hxNYPoy1tEvE7PObY++KqKnhk3J3jxZ5qi6f6UtZYXN/NQLwi1Ukw+nkUf1irvt5ncXH4hOzKa2957xiXJeIqZM+/xV2oPsOjadVCl0w/MroaZACRPha+ad4PDkdsljqEbcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrL3V/9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrL3V/9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E3CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744636193;
	bh=u3q7xBQfouIlB2eER0egQEEHsUbqWCtQ2b0tfY1UFHI=;
	h=To:Subject:From:Date:From;
	b=QrL3V/9q15kaVZGxzi0LYcNrkARiuk+LstoPH5SgBQ5p3w6/xPIgXyE1tZ7a3h7nz
	 X1CFCEsx53B7P6K2bKK4o1J0oEu3RD7vMXOwOIGkvop83SOaZpF7EbRpWmZpFHG1MX
	 0xlQrs/vBilsbpZ7L3KAEJPZRBUseC8RJou8sQMAQ4KwuUfyrua5ouCMtHzSNzFFFg
	 uSooCGaR6JhtOMtEEPAgLgc5LMLDvbJQD91EKwsCD0PNu0QFKUfyHlZV+cuQEMyu+B
	 M4IiWQNKAoKZqZe/Zk5PEylI0GZ9y8mPxgX0756p+QS57qaWxOUddShoKeKSBaiBnN
	 X719Gpsn5X0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92347C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463619359.22489.9885727577096798714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91f05c9d846bf5d2c990f879175363fd5de87f8d157f7e1cc20ff1ba34b4c00
Date: Mon, 14 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744636193
