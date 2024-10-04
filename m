Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28769175AD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728014754; cv=none; b=QJ84L77r7bOVjJ9/wKySaGhI/XP4sqRKT9t+2gPOH2x6TuF1e0jglh9YvCaW3vdTklI6oEsGHC/Q1v5Ook6nQTB/saHXZYYPOX7i2FloqIcehsNypL/MOXXFzbBwfUmGZyCginaEXz8atJCk8+H4NefwrcsI9QZsSQBQqNGNDFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728014754; c=relaxed/simple;
	bh=HYCbTpXdChCv4eMyZZabJxoRnrWXplyPhUe+4yqHP/w=;
	h=To:Subject:From:Message-Id:Date; b=LMf6GUTn8MU1tU4mE8fhtj6gNEAhTgf+p2e/lhAjKof/Zz42gc1p2kBdrsWgWRpZ7jp648TgNiOoYNeFrD2NEwm2a9Rd4TgP8+NjGZyU9DnyrNCsRlXphgW4RsfKoZXKqOf2NsfCJ2p8eCz92OcUC09Ph6np4lcowZWKjwwjZCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtjfJTlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtjfJTlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB29EC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728014753;
	bh=HYCbTpXdChCv4eMyZZabJxoRnrWXplyPhUe+4yqHP/w=;
	h=To:Subject:From:Date:From;
	b=dtjfJTlL892acrx2G5U9cmeZefgiM2GioEE9wZHKqSFch+iCt0OCgcdyXwsEOFxci
	 TfDho/+9XWTutZTqwCanpRY8ahfYSc0F99u39Da5gR1myh6Kb0XzwGUSPzN0vjRHm6
	 l/NISX3GQgdvsutcej3Xud/Q2mOr5H3CnT1gCpKO0AJhv3hdRsE7TcSOsZkIDUtc14
	 48XYT9qkA+cW2UtE7gTPqc39ZXwit98gQwaP5niqDQ6OB4XYOjlk7Q0km8x6ci9KZj
	 tt+8vfvGnhWXUGS68xZm6/mnmH4+o6qr9gfpsb5tnJDjQ2POE/huzJ7tRmRLkWHLPK
	 dBmm6xF+VaNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1481CFA746
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801475363.31321.17839378646046584098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13b60cc288c27301582a1e315216469cc0beccf3eca7072cccdb99db63b4c7a
Date: Fri, 04 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728014753
