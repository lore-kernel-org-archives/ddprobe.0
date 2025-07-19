Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2069D881E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752914394; cv=none; b=akbX5RE5Dx5i4bOs9xDWtqpmzT5YfT/wegXuC+inq06WOHzWj0ulu6vkmaaKi0sUWnZTu0kK/ACtYMr5i74X5UsuTI35NkOcu/aiSkKvUnpbOSzdksXYWT9KVd/ap50ySau550rUP4FPCsXIqCjuEnzu9a/v6Zgh3PCPqLjWiTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752914394; c=relaxed/simple;
	bh=FUU/rN/flvhTQe52ro46QSgqd5g3zByQ0JpDx+jW7zs=;
	h=To:Subject:From:Message-Id:Date; b=jk6T11RlyaazTu+zqaQ/ypJv6l1y6h+uqRs/rZnelzYQfoZ3AKJKNRUG/yhEo03i0LpIOPw0dQy5VSSy73lfICEGja2/eIfhjcQcjnFjlilMQ7UZ4w310yLn8qQbzSfqVaMG33LvGBSucyalZcT11zujr8KPI6CdDgH8pTX068c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTfiNlRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTfiNlRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5EC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752914393;
	bh=FUU/rN/flvhTQe52ro46QSgqd5g3zByQ0JpDx+jW7zs=;
	h=To:Subject:From:Date:From;
	b=BTfiNlRZAJ9QJ/EAW/vN4ZKGxZnFgjdQdpQ3fmi9/H4SVPuZUnl9oSzOdMc5TckI2
	 yKj2pw4dB6WHUPmy4uWj3LIE9ooODn+b4ArKvEGUrobVHXsLQ9ElaHclVgV+SzlEzo
	 lybnU8VvW18u7ER5nv/83016b8F21jI6rXnLFrNbByGWvaD3XPViNRxIFI1vSv3xd7
	 XTZyj4VHSItKVL+3P9XwV5Mc4amlEWkalJF8MpvxfQawJPT6EG2pUL7Cbyd5tYH1iP
	 A2zViW3SPu4yJt+Ms52tP0+MYz+E5tLwULkSLZi2mPXo4riFuCXBqYgURZBXXZ3Gyc
	 gmTOTHIaVT+pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70BC83F3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291439357.14738.15016607643268455734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db7c281560315c709c03f1180aa9eed0b754fa5253017b82c5a3ba470d4fb33
Date: Sat, 19 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752914393
