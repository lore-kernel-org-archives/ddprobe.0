Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A945244663
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764600174; cv=none; b=Ye6Ee3sKZhTN4b+qTf1YEr43sNI07oa/qbHgynwfPbnLrHh3DkHLu1sqHGOxevhOL3Bc3jDnkNgIG8qCKN9IwoObdSZkYVqZPPSxFwk33d1jUqNxxg/gdTtuQeo3sZW52FlLmCWvS4wk+i9IipMUQ3SOaOdj2r7u90yDvRCI3iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764600174; c=relaxed/simple;
	bh=xG+SQ6YcQxymIw+IwJwVhlBDrbX9vIGj+N0tD4Cff70=;
	h=To:Subject:From:Message-Id:Date; b=WyN5irzH4P2f7f+GLsE+xE1juT0iygLx5TJ4PZx7htISCkWHP2wB449LQhis+k0dsW7ZKJyppyrd/Bessy9xWTcvb60xG7izfN3gc04kWHJei5yV/IffTcx3gYxmkFIEXcq2pmPpQ6p+yb6HoCFpT4GQYAEDkKPndAZYeS7Muuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kkm3RghY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kkm3RghY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764600173;
	bh=xG+SQ6YcQxymIw+IwJwVhlBDrbX9vIGj+N0tD4Cff70=;
	h=To:Subject:From:Date:From;
	b=Kkm3RghY091oHJjNqi7N9b7B5PIUBvtLifH5zefHQUPNIC/t6p7Eyo4KfPaCs42yt
	 jyXkXSzWfk05MwzZ9BA+8P/G7ICfM0tlr41O2NtN7iBw+yIfzuMb/AOS2NqOv4/NAx
	 PrkRDMSVvnfuJIgQTe0neki0yv3gMXYjgjirseSeepMx+e7qjEB2qMsk+/bsDGs/7i
	 96vDDYbRgKwFpsIrfyiMyAQ29lHnySJDC54PvCwk9coW0JAlF2WhnmMC7Y13evPK6l
	 gv7sYdYQFdFXFNN+FA4CLgMmZSqp76L4dEyhM6BMBsMuyP/meJswTx7cIT/bj52vLD
	 6GiHHTWbfC7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7AD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460017358.32403.9462901919125030558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d671c338996b0868f677e8ad1f1f72c85a89180ffaa100096911b9c96579310
Date: Mon, 01 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764600173
