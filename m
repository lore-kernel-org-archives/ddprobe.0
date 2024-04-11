Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644573A8D8
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712869763; cv=none; b=om0dMWY549TgBxW7eiNj5z7R99g6hpdwHyNmoqr8A5cQCy5HbSO5ikfrUFuQk4rIIazkp3Kgn5txXs1EgcK6qBX4If6tj6fEn6gCrvx4ts6YSLvETay/VT5F7MYKO+Tb7lQGUnEbMHWXoZGim2Xyo+mgnHIrPgOmFnbabddcZV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712869763; c=relaxed/simple;
	bh=2oQmDdgV7sMlvJbA1zf9HBbmiJ2ZS6q2tQt2VUBZZKg=;
	h=To:Subject:From:Message-Id:Date; b=IUKmhM71q0wsh6PBc5NsHAoLQPoZW+ECddBvXr1c4yAw9ORCG6oauZcaOKkgvuiyZvXFRTbC1Rgd0pa65CDHCbOnHqgHnVSeFDYuq7Fstwe6yUxmM9M6u0Y9qGUCc0agBjbA4GxpapagCZO9hv0Kc20iZIQ3KP3hvEj3h3RhLQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGrcK661; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGrcK661"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE214C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712869763;
	bh=2oQmDdgV7sMlvJbA1zf9HBbmiJ2ZS6q2tQt2VUBZZKg=;
	h=To:Subject:From:Date:From;
	b=eGrcK661evoKmo2jjJEEbTn9TUq3Cw0uksZPvkv7B0N/uKanukFMvsx7qTHbRbg3P
	 kGiZqugEqKIErlDJDw4iAJk2PNPAMpPEv28viNidj8STy9igk5lt6ss+d2mIcuvnrs
	 HBziGmVB6khlN621xL0BcAjYTx2ss5P4mzizA9hxIRpEnNgLAsd+2Fb4nMZqiU1iub
	 eVGjRxATtEv5rzc8gk3p+IOtGF1i2JEoGalzrWshyHNFQpx8HCd/XRgH2KxaayvNhl
	 Y5ZKvS5rlxfF2QPgOqibe+zpoXyyuuu94iIwpJy+RtkAR6m8dxyGNY4xwjSQpxOkMT
	 DBmrVkeAjkrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D235BC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286976282.22732.3056239944008145634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5d2873797407e29851d3fe0be2b4e41258d67d9f25c5a6e81bbf24210f8b61
Date: Thu, 11 Apr 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712869762
