Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A82E208A0
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713850223; cv=none; b=DM37Mr+Wps+HUQyjQSx+Ib0qbWY+sn/ajTpbbrUj6i8pMl6Ut8GdmuHtAv3hPFYOK58uE8J3VKJf1PhJsX5jocvcTiwmJWDTYI/u/msdBdtFMp+1/JD47whj0T5HizjBOkBxccojFf6hgeQncgeA8tkdEjCUnplnQhmdw+9r5+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713850223; c=relaxed/simple;
	bh=yAXOErmnk5/xtCZntLtduSUKGkAyzWKk8cwwUORnzC0=;
	h=To:Subject:From:Message-Id:Date; b=u6YPuIjDNLAMfLuoKvHsGGC6BrsNWgClYpy5ftm8vgDrKhMXr71r5mHpxYpqdFMR73oDFzqZrSYYjrPkepgM4XsIROWGCpfLGomG3Nt2IFt4JY6rrvlQXGE0S0wAs5ndufAyyU8BlrSHuX0+h+VlkpObLY0JheQ+B1spL2ZZBy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOHkPYz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOHkPYz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D1FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713850222;
	bh=yAXOErmnk5/xtCZntLtduSUKGkAyzWKk8cwwUORnzC0=;
	h=To:Subject:From:Date:From;
	b=QOHkPYz6mXNbmsAZ9BMrE/JeouiUX0QV7WlRD/HlhHqUhrDq90qRpZDUw79aGFacV
	 TzcTeV8zdzGE6D186DN5ROGHVcj9BUywoYb4A1eU8Vr3QG6ET4zsaNlhjC0reHTUOq
	 6G1UlAjplxT/6RlagXY9WQRwWbeY2a7SPlcRW8Uj5hwH/YqfgVAKoImbfTjfxfyZ1s
	 AR1Ta0WSB+p0zNeU/hqsHxzF3fVunZ+WvWoct75FJrhPkmc2BWWmz4eTTqIanFox/n
	 YzjbByqQFdTsEiYcguyNgLe2S6ERaBFJi9ruVUFKWzWohdspDCWjSZe0z9Rol6eBAI
	 /JO0Lz6YL6/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9BAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 05:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385022280.27128.5074026123370715091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c73c2b5b87673888c305773c8e05cfb78a8896c94f2a0bced376733f039e55
Date: Tue, 23 Apr 2024 05:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713850222
