Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D092F7F1E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782449254; cv=none; b=kWCAG0jRYh3jksvTwT5myW48OzWcnvoIU5A2LJwV/t/J2ny2kGqHvydyRjHQDmwJP6OY+KwDB/k7yScK0yjdqMbHDAytzYYV6/Ecx34KnfD8YAJ4CCXrIVyBISHbTgI8N9TglQURaKir3A4tGR1RrqoPlpwjzLHI009fB0h/83Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782449254; c=relaxed/simple;
	bh=uz8VNPqnGt/UOUUJ7H/Gm++l00lO9ICjXspdd1vhfak=;
	h=To:Subject:From:Message-Id:Date; b=ugO/S7/w/wSJ39PhRLcCyc/1EoLG5Yq0eWAj3qrKAkmc2tT0LnfmeDGTtTWNDIo95dqIXZDSNxb9UNdFoUp3za4fAuYIQL3twe6TX7zwrq8TlCIw8MYqvUxWPZfa6V7lIRTZERY5uY/E10w8TLm1ul6BA4peeFEeJVx50oDhIII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWy7Sa4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWy7Sa4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B33C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782449253;
	bh=uz8VNPqnGt/UOUUJ7H/Gm++l00lO9ICjXspdd1vhfak=;
	h=To:Subject:From:Date:From;
	b=jWy7Sa4dJ6MHcZQg3sgKBJlHJifHp1PeanZUxQlmEhl++dTbWqXuuIf4sHOH3mDpH
	 +4Gs7lWj8tt5n8skjxFuPy19KZlIvysCsib0Z8nC7sOfmR29fRfFb19ov8r0Hxx+7i
	 ZgaKutyM+eK09Yl7cN9/tXEvaSyJ5pSW+nulI1RG21ZTk7/cdYNKVardQgQ/teakCb
	 DqqI2xc52tuRqNBbe93jJkCtGoruncEAg9pC2qNPzj5GaKgeDxu1oox83FyojWd6m2
	 lpEkZeIuTLeaEJnRvXHDzfOyQR0RaqmqWNscSmFMZ8anVETR8452MnLtOBuROkjaLL
	 WEuTnITFfmpjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA267CDE010
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244925368.2262.7313758010367956423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20eef0dc6dbe7d2dbeee687dc2b9e0e040bf6c8b80194e44a95fe89d9ca92df
Date: Fri, 26 Jun 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782449253
