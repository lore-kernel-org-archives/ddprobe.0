Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659821F5F3
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714533743; cv=none; b=f/gzJ8Su3h4SZp3amiVffIAOT4HU/y8QsZ7Zlqn+rduPq8sYyNQ4JOHUefHQGoBYzFTZ/Ahykgh5l3eG41SZhyvskPVvSeoblM6Ir7AO7jsPJZZIsFO/AojYEvUzgN1vSZBT2zoY1ZpAAVQIyUcQR5USHZuCeXh/T3o3xRtgJ7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714533743; c=relaxed/simple;
	bh=+Lx8uoAvhlzXS5QcfDJTArcwGdVpUb6tThj6Qus4wac=;
	h=To:Subject:From:Message-Id:Date; b=LB8s8J5k9pRQD4tBHTADhO+ybfKoYSmBYJtGqBT7kFm8+Zp3YnzlpFyqh/uL1+ZJc0VoRC3xnTqNxexznduGZJjnrwrJbM3a9jRoJykDKzYiAXgJ7A32ccKVURqD/cX0w+9Oguo6OkqQrgPDa3g51dNUlUrzPdZ492wNBrJTDRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s87rmTPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s87rmTPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8572C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714533742;
	bh=+Lx8uoAvhlzXS5QcfDJTArcwGdVpUb6tThj6Qus4wac=;
	h=To:Subject:From:Date:From;
	b=s87rmTPJ7cu8xP8Acf5GHi6OkNi4EGkanYSg52jRuHXI4JtegxR1i0Yd0EbvvE4aw
	 FTPSlfILLeNvfcrAMncJSBWmldg20EIgheZ7qhERw+mCMhEpE6GgHzS8nvc6s5Mol0
	 1w6ohGf45BQ9ka9KjwSTc4vDw7OCLduB37gJ+MAViyBydt41j3Wz0DHSLexcVqUx6J
	 nrimmarjko6xXUBByTdpToHOE/B6LK9z3ALw59BuH88c72qVjIfC/iTDOHLwas9kah
	 24d/adtpgR5jIGzQIFMOUwzySLcTl+kxGxkg2kXF2LKOYTne7AzV2sxPnfRDStpb8u
	 cWf6C3n080Jkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0924C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453374278.6415.8079562295077256958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990e4863525e6e49ab1f76162cc59c45fa49a857b07e1b5db0d999b03fbc31a3
Date: Wed, 01 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714533742
