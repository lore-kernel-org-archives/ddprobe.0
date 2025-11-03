Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF76277C81
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762159194; cv=none; b=aG0nkGhddMExiucvQssxaYbXDqEz1upNp2Li1FxRrFUglU6ETRRnENSA6r8KMzefVwstif+OzXvfilKYisQ0HQOLLGGns/cD7iVd8KHA+W8gqS8CQpJqlF/VtaPQ4aeSH7FyGwH4WAuVL7qslrUaNA8rWLHKYUSfxjRLLPYOinA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762159194; c=relaxed/simple;
	bh=KoeCUnaaDh14UehI+zEY9RJa2qo8AHjNj81fQhRASH4=;
	h=To:Subject:From:Message-Id:Date; b=mofS6voh8HdVgkAwoeMXeAmXzdoJ+DwzyLuvpqV+64qReL5+msZ/MA+GvFnEMKh3IaZBGpAhkNh/UyoCtWHKzH4bkePSg1ZH+I76B1c0L/1E/xYwXRyJjfU5v/CC4TwBuOtMWqnVa9mFgHgP8R1ry918IljpXmXvYLty/f/Q9AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOuqjXja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOuqjXja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E29C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762159193;
	bh=KoeCUnaaDh14UehI+zEY9RJa2qo8AHjNj81fQhRASH4=;
	h=To:Subject:From:Date:From;
	b=NOuqjXjaYrZUG+g/09SFBdWd1Kiny6csFFS0C8HYFyP/D1RGugAKBN+vVxp0S51av
	 noAHrMc7T+U3YRW72AMpsKvFpxsJ9ZxAadN02KkYP+BS5xtW3yzpUV9G+iT/fxw+Ct
	 LI7glCnTkO0BH2VLgw+BPjrSVU46MV9+B/E3cD2LtBJX4CzPXpw8AtD7D5lUbvAltK
	 w23fgcl/cAYyjWTbD1ESdNDQ5azVg9S1uLS0D/4fl3roLhJcoi4dxqIvCMwR1LZeBe
	 2ptLSsEbqtMO95OFOyK54YzMTd2BFn0iOykZ30iyD4nxXkCMXf3KYyKYNU9cyjEK6b
	 +G/YEq7jm8uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEB6CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215919360.29887.14150900663178398617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27b535be5f596a233b0a6a7cbff06c55e07c02867e09a15baf6e2ad3c9c43bd
Date: Mon, 03 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762159193
