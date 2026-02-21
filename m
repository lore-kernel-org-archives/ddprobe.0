Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDF13D76
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771711494; cv=none; b=mvErGCHo0PsY50pStG6mASQhx9QR/gzIE61o+QvWo/0zLVxnsJlXJjnitauw/+0pbh8vfLPQWhTdvl1u/6pzgfekTMeXtsPo9jgOy4lFQfihdOMxvbvCzeQBW39lyKjbaQmfgPtxqOYO+DRBWku992PBW3XgxwBCg3HOq+hfThM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771711494; c=relaxed/simple;
	bh=gW56Go609nhuD4hw0ZsYXOTS4n8/QKrOMRClcdDsRxU=;
	h=To:Subject:From:Message-Id:Date; b=mj95Wngd8LJ9by/UhkNUzS+W/BNk/yxwybaREzMiUsUujfcEUZ84OOTyfSpqfJw3WTem6r294XIQ9Y2oEi4Oj6rdZsQ3YUATeuNIIkANcwTx5uDafnIpY/u1q0/Mcjv95BQAyA/xAAcl6J5CneQR+C6NQA4s+OzW8b1QLS45LG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOv2Bf/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOv2Bf/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5FFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771711493;
	bh=gW56Go609nhuD4hw0ZsYXOTS4n8/QKrOMRClcdDsRxU=;
	h=To:Subject:From:Date:From;
	b=OOv2Bf/fFMUFjvIQ0IqOhzobxOX7MRC8bHq5jRQ8BFZ6Al6aJO9kDNvQigWM3fpni
	 o8DTHlMa21DY4zE/D8G89X5JNQw8FH/iDvVHY0UN7FX5DtglX8Wpaq+UU7Qm/smhHa
	 EDTH/GN5Ih5sTAEY38EeNgCBGfVuUZHIRN6RjhzAXz5uw7c1XsWs7Lk1VIMlufGSD/
	 1X/nNHrFD013NYuRoC6EfxPVwSaXRh3ggg5ygz2IutS38gmjFbAywWqrbhujedF9O4
	 AmZ/9lRyTY4HUHy+fNPa7SW+hSlRqu1PFmY7ryJkK3sjgYts9xE8QLxKvLRtzYNZR9
	 jSGoYdo2ZKoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB174C624A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171149365.13794.5848648621763556241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e150c3bf5b9f436f9f9c6393f5dc12e4edd25768b5c060fd0fd842b0cf7c1e7
Date: Sat, 21 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771711493
