Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BFE34028D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775610934; cv=none; b=t0iOrcQBXYYhRy3Jryi74l1lJRv5EHsbgCovfltXAbGWqDYt+i+Wkgb2EK3c7vnttvGMCt8WsmPi8yeiB0x6+FKns6ZlG047yCWKj9AsjzLrGeyVsLiI8DPyKsCJG87sivRolyWvl+ElFES0AQsisgZVC/16nkDslEz+hwX59JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775610934; c=relaxed/simple;
	bh=T5U0k4PV9boVwtr0XLBVzMFhU250MCV14ATcIxAbYdU=;
	h=To:Subject:From:Message-Id:Date; b=uiK1o2mPlDUZ10+5XbL/ne29KM0NGPTWChGcoHYTjU03fUXZT7byZ4TPjtg2drToNSI2cbPyrCLqyAYqIp7KYBsGVabZv8cEn/NsLWzB0hT8wvDYg6daqbBP8B7flCnEt6bJmzPIj8onAcA9YH/crXN3g7n58YdqnjJ4V9oWJXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM9ZT8MJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM9ZT8MJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775610933;
	bh=T5U0k4PV9boVwtr0XLBVzMFhU250MCV14ATcIxAbYdU=;
	h=To:Subject:From:Date:From;
	b=uM9ZT8MJB3IPBjy8jwt1N1pphSEGk2Az1Oh/BC18xLzQ/llPvefJ5uLmOLECCWCv3
	 2tMEgOz5HwGwOcshCZq6fneGY4/UQ84M7ydx5EoALbd1jOTPmchYzVcMXFOZQyeMvU
	 D1MiZCWqqLGGsKvhIQOES7m1E24D4mqBOeVRw9OYwBNG66NolqhArMeRKrNkSxclwh
	 pc7GlHsKUplVswGAqwS8iYyFQsJBsSMdvfoEKG7UsN/W8UHN8qb5oODmoA8uifRVT6
	 eouAkQ6QWu6smWXj1A1vUA2ygV2Oig5Su6FnSOh73NZcdcLrP9oSBGzf15JmfNxk0k
	 29gc+elYgi5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED24105D991
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561093370.2908.13231633090402147083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c4e759d1267df83db49c661883a4810184bf10a598ab18f8fe34d34f5e7f2e
Date: Wed, 08 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775610933
