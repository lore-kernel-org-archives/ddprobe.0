Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4132919E98C
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734635754; cv=none; b=TmFM2z3bdR2lCR/wYtdXD22eJaheaQpUXSqEnX6/Ofc6cs7n5cW82lKGjN6M0Hd64dVwu0QzhjxFmrSe9dumU8ZFwfW2SzXOYhKO/xVNqGKcjVc64PrSYLYTaw8rsy78tr7YnLyVTMgSi+bNU4zTFtNnQdp+DNFSp73hVb8mx9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734635754; c=relaxed/simple;
	bh=o1hMhWtSTXUYDpa5F5yCuQqQoS9x8jNwinIaGQjCGj4=;
	h=To:Subject:From:Message-Id:Date; b=GizYiu6P9kuA6hYkuJT0nGqB6pAUc5qWQ8xR0yVdvy7kACigxj/O50XDwOYNKcusuf+exUHZit+vNnNVW47Dn0oNOOkgho71fQ72PCZz7K0PWrR1riSsgJLSXVIvHOgtbpDjctDajnHpMcv6MrihbLMuuG2HEnHrCAUHUUVhMMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5OXftUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5OXftUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA609C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734635753;
	bh=o1hMhWtSTXUYDpa5F5yCuQqQoS9x8jNwinIaGQjCGj4=;
	h=To:Subject:From:Date:From;
	b=e5OXftUDh7Fb6P+kDXn4/uv3Fy9ZGJ7IczdIJ8LONFkOSlmgQ7IwPf/8+iw4gtJib
	 x/TqGxGZhPHfb1WqsjQwcI2BEK3Ex2WWebh+ikkSlTHRXVMd9y//+2iomdl49VvaV2
	 wPR6CgQ9QKU0xDD7esU3JAK4p5zSAMRTFraZoAISZUqOD/QhZQHg1vz6RRFwosZMue
	 eIzpsqhBxdEv4HW2zBOIOpNTAxXp4QOmunH/eWCKV60P6xRNA47oCtulCf2NAPaIwh
	 gj0F6Z/HigJ0+eI0gixhN9uvJabsibKuWpzzXgOXB+Hly0iUyrsz/u8oKNgRcs3Eic
	 BGFS8Q2KmRQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98913E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173463575361.24471.9018025293076918846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4eaf4cbe80fec07685fcc772427076377b25f28d88707c1f688f2a69df22bf
Date: Thu, 19 Dec 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734635753
