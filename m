Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEDA1C5F23
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758090594; cv=none; b=KwNo4QZWLgBTsJRMAfoF94chHVPNBirwKNL3Wu4CUpQS+aCMpA1zSsjEI4Pdj6XIuxkK30l6182J4bllltc3wLrsMrPkgw5oJJECXoDxXlisYLKHQ/8iePXNczn7i27rgGnfwzu0PknpT0wZ8kqXHLarsP1yUTnrWX9ck3t4aEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758090594; c=relaxed/simple;
	bh=vkLQ62JSaa51LuzOEsjzCU52J7OTlfkRK223zOdqVlU=;
	h=To:Subject:From:Message-Id:Date; b=j0lzzQdD72b6hBhoX84cF7Dk3RqwXYphkekO3G4z0AW7JvTynlms1vcQKV6AaFz9Eijm8BFKvyeUaSM4d1Ar86TKjOU22Peqo5o6k8veEtmuWoHcZmOjeSKG/9gMXzG41v6gLDOJsNm0WDWx0DVY52VAeoIhKlQvolgv036rs2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4Vrqm/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4Vrqm/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB5C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758090593;
	bh=vkLQ62JSaa51LuzOEsjzCU52J7OTlfkRK223zOdqVlU=;
	h=To:Subject:From:Date:From;
	b=T4Vrqm/dJpDUtf7a2XbMWbfAvhHZoWL+mb+sQ3ZdrS0Ls4KaJ4VCMCPFByCxhlgtu
	 DdqlZuBP8aw4GzXg9+Y2g8bvQER+Jws4xfz2R4Ip6+NkN0WDD1UGYXO+HdLY7wwreu
	 LVEGHnw1cPboETiHeJ87DyxLSUd3ESy3CEUvo5i6EN7LCWTRTLqC06CXmGrqX+uVrk
	 eb6ivMXHUz/QkZW4FEMLmgRg9J9TGE+Xl9oy7jzQr1Xw4WahEhigmvCZqwu+rkxezR
	 1fwocqN9jp+eVilMia7ltfMpXZ/1ShcnrsaG46qC23b9pyOxaeHAoJyBVDkZyXCVtH
	 EFGmuU2B05kMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D7CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809059358.9993.2159463283561155210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc576f5d46cfdb14fcf7deb0bda75a9a1158904c2b49df628d26f7d582faa685
Date: Wed, 17 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758090593
