Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0E1248F72
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785808234; cv=none; b=aLO+HvHGP0kVSZuxKaLuqar3CgRM8pA8jKyLRCYROBcCqpUrnK4q0OZES5fTVZWqf3UNUtOidlF1/1aOblpVRaWsVFMM/IjrYRId5JRjHjkhbUqEd0q2476Q31VxDA69V59/iTzHPjSztFO/Sk9gqTzltiefJMRwvEjklZlJl8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785808234; c=relaxed/simple;
	bh=83QWjGvS10dlB0c+GrhJWZbnsgMsil+nYf6QHY3+Qhs=;
	h=To:Subject:From:Message-Id:Date; b=QCp89iOMY/P/nZXoVUKyyYkz5SuO1Ec895nGNxM9M9CsY2g5D43RzZ6dXWuEXtMnYWK75HXz2Di1Vlxb47RpE68nxXEqQu65pUcefJykRUZFcPzk7juA1zMUHecUoYmUM7fWlIvkipIMITikZjwjtGl6RQ0F0cSNqP1YlZHyJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOyq252k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOyq252k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83EAC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785808233;
	bh=83QWjGvS10dlB0c+GrhJWZbnsgMsil+nYf6QHY3+Qhs=;
	h=To:Subject:From:Date:From;
	b=EOyq252kjyPl9GkwxUTT3kG3ZNXgZ0U+d59xuAAekjUWukcoyDf/f0RgEwvVN00co
	 6r3u5eVWwug/efSugsXgr3Rss6p5DHJqR9aBNKwS6xb9LNZCb78DNZUoPLRyOxPCQ5
	 2t15vI7AHbAy8hdCGflcQYABhBrEK+wDZyhS89HV38BdHqC9Kz2hLyuG1zlC9XaRF6
	 e1oXTuRzvgMSLP4oh5TNBIi8qYmzQKcbJfEyZGJAHoUM2Bom+0RtRvdkXwFq8PRuxS
	 6TOvyRF3kat6mIumSnGvlqYneH6Nf6+jcvB9YtelQ7XobZzh0bd/bSq2h/BjsjYVSI
	 KEL+u7DEViRsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF409C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580823370.4450.772071076523561600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb883da51bd5e1a8fa1ef986a6e55fbfb9a422ebbe8fb08f4295e0070b635f66
Date: Tue, 04 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785808233
