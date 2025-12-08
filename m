Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2601B225417
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765202574; cv=none; b=kkceR6kSoo5zca1BarzvLlFnEb5yH5JEaC9Y0njwg3sl16cl+tU2jX6OIhzGKeCrGRR6HShu+t/3fp+EAehngLzDj9+qzZgBafb6FJHZBltPCmVOTNKO+iTebv8K4s7sqnd7CudqdsHhPXn/D9mWRN8AgjvpS7mi7YGit5ly9u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765202574; c=relaxed/simple;
	bh=46TLQAhYtk+56ZBZhVtGN9fk56HFjhNhGK/GZFmIFuQ=;
	h=To:Subject:From:Message-Id:Date; b=jBaohh1avzBMwVRTZribN3tfr7qiY7yc+KOZi+QyXZIX18x8QGtmI7FqSU8M0zV9guC9rAFf4nTWyfoaH4cmGp8U9igUbBk4OLqmt46xVyE7M9LRMOD3kULDBTA4UEX5EmGxGSSyCF6RalqnMvS/ZxfshQ31eAlsRYQ/URwcwpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt+FcCuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt+FcCuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B648BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765202573;
	bh=46TLQAhYtk+56ZBZhVtGN9fk56HFjhNhGK/GZFmIFuQ=;
	h=To:Subject:From:Date:From;
	b=jt+FcCuRT0cFLLJLA49Cbm9mTN8YMDjU7pEs4QzGTAHzzLjTHS6E6dazGWo9x7lvp
	 384vcM/hWydG6qLT9zRYdgDCUUo2FkH87pJk1uI5JJe0GHE70ejYhd/YRkFekPOgWr
	 42P0BkmOi4gkQRoOx9KppUOJ05Otj2J2jWf1uEGgF6QDXmfS4q45vEUwIy2W/EfpBx
	 sxOtIx/36AK3TaohiRlmL0pj97IqcUqX3trby1wVsq3hxCz7JQGDIOnYMCDiU13YII
	 m7MOOp5evTkAvb7nYPT/hjKLWjz1w/dsxpn+4CAcQOkmjE4RZj5ynyOk+b/tjQHsjr
	 KLhjKa74SNBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AA5D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520257361.30419.13512405748998509260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69a590d69ae0b03297df2137a6315806c790b73ab041f3542563a8b482892b1
Date: Mon, 08 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765202573
