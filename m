Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379602D057
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737846954; cv=none; b=KOLBdMyvdO32juc3xwhvAD8uo7wYRCl6MlmgaFZrmDfBmd47Gq3Eyc/xKnAdRrPUolzit73JxghbIYVYjPh+ZdSpekjqH48QCj+rvmTF7tw5qn5xZl0QhxEX4ng49hA9oiBzr06PztVOyjmrBDnmGful1YPnGC4zVLB+hBuljmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737846954; c=relaxed/simple;
	bh=frfSF71d0p4tiP/Yo4SvQJuh+MaPEdO6kMgyzft4XBo=;
	h=To:Subject:From:Message-Id:Date; b=aUQmTqtUx0Cm9I9modUUjVLk8XtGn+rBlvFaa9hZQx4YyoJR0azmtAe+sS63nBD7u36nIDMAusfH1/tByU8U58KH+weeyELcYpjRglHaZA85V0Lwz0ezsOblfFAMWlHnFZNzXPXjryAQ8AoSDaW/SG7iv00uEQ9NX7mnEFu4Bxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWe3bz7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWe3bz7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C26C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737846953;
	bh=frfSF71d0p4tiP/Yo4SvQJuh+MaPEdO6kMgyzft4XBo=;
	h=To:Subject:From:Date:From;
	b=JWe3bz7Nl82nYOrISklV3MozsJVaJwt0eJFrx25qpCsGFHY/ahT4Mlsj1hjL4djSX
	 m9XnEp1+N3tXVcyq0sEr2/ChWsjJz0avdzpmxBmXyl9K4GAIt24VCfbBryDN3n5edt
	 qv7qVzXUtEaK/GL0L5qb3mPBjpq6IY7JZmtuistb0rbKrbuGEsPqo2HFHZYnAQYwO+
	 pRQh9bkBcWqhJC8QaVa4WtWFmRfTKljne71ElmTDg5r6GHVi8AmXgLr12m4AM/JfoY
	 +L4BZG//h0qMuvX8nsDHGYb0/CBqqyPzxtgmpaFl+wr8HKjS7CDScDeVokx+o7hCoq
	 ScCxkQmHtDeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E16FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784695357.8066.9274134538108574752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61311b98eb46328588184d08362a240aff6940af4bb5046623c52e93dc8632a1
Date: Sat, 25 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737846953
