Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF80F1531C1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760064593; cv=none; b=WqannzL6JC3hkPJAzFeh4pxI6i65oL+k5lZ/ivkw43K927ln9neebtzcfigR54J7eyEKm1cn2pU70BzIcyyJwDWl0ryyh/cRv9pxhfGLXUFDzJV7vZ+5vSq7lawNx7H7kiVs5eKNFdXKopVh77srQh+eqmRjhBfG49FmNwzZI5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760064593; c=relaxed/simple;
	bh=RGsH5VZEMcMuUfWHH9XO2xWV4flU644abEhI4Ws6580=;
	h=To:Subject:From:Message-Id:Date; b=tmDJr27TKxxnKG5l8Hgv8bSE/KLJw1K1RFYP+N6POxsQGtuiH5dVXA5jTHU3TvaqwMjvwBluUwkJvPccLGWIYMkT8lQ/2x9ZOK2wPWHhT/VoywTkrigow3Li/kVXeGJt8rQ49WAbpum1XnQBHGa9qfLKAaw2OvR5oUsMy6pfsq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J40U+ffd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J40U+ffd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF58C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760064593;
	bh=RGsH5VZEMcMuUfWHH9XO2xWV4flU644abEhI4Ws6580=;
	h=To:Subject:From:Date:From;
	b=J40U+ffdt/l6skPiaY6oYdlhvnAPxLXG2Zltsf8NQC49FnyhSGNecSUd5D/HclGjk
	 TQFKdJUjeINbBNH62ynZKZk9uSxi2dkR17aFgSgGcg4e2lg64xshpZZ4y2oOZs1kux
	 avuGshKhqmeCKhPi8QPFRhP8voI3MWWBRpBo5nEFwgAjnBeb6xwJEfpnFTID5Qu2uv
	 dPVUrhuKgpBNEsBM/rUiFrBd7Caf2eioMAwrRiiZP3UC8ixYv1l4C4cKQROZN3CpOd
	 Ai9ZQc3UWqozZnPpfllTDBoTx7lqH4DHifawXBhi+UyP9Z/L5vkTk0+6hfy3JqfRNt
	 ekufUgZycGBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9ECCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006459357.16151.2087483440143408147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e62f88f96bb0477f2ae595b5a1a4da22ff98704da748725adfa0150e2258041
Date: Fri, 10 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760064593
