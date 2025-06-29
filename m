Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211B429B0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751183994; cv=none; b=ajXybp7xP3iO9akiRCxLhEy93ARGSi/gakNHfegnPLSUf31p3szlYJFbnqjlQR0TolnoAXHKSIUgMbssp5D4Mv+p9ZLz1/sWRsjU9IS2wP+LT3DTGvy3PZvTPKic3zyGDkC0HXPIWkVOkoDLgB3tgSTnF+Lnur8W6TTxIcSfL48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751183994; c=relaxed/simple;
	bh=KJUwR6J4nx/dDoNHqUta8Gc2Xo6RiHiqs0uKZv6nwt4=;
	h=To:Subject:From:Message-Id:Date; b=Z7uBRK9jriuWSNJCDZKg6WVjPcssRD/6La2gf7M/PW8EWnLMkwftdWueQlrqeeRE8A7mLWJ0uuHatGBxqnQ1kD+aSlaBh1O7euJD6G4qv/TyVKIOaodwiHDz8OHWjmYqjfyFtiiBOqGduNl+MdHu6lunOSKIwMiktkslJ8oqQdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phpnpxCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phpnpxCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751183993;
	bh=KJUwR6J4nx/dDoNHqUta8Gc2Xo6RiHiqs0uKZv6nwt4=;
	h=To:Subject:From:Date:From;
	b=phpnpxCtG5bWf5h0p38SWanIEPqKYyr6f78B0MYEnYPuBPfkaxuVgUxr/rbt51RcU
	 U+fVR8ghncFFMSu/YRP/KxpCnDam2YvT/XwtHaqO6k0rGEoDHkY0ZqOnG/1LKlywF1
	 cCBpolg+pZVfvAFwt4v4QIbPCh1oZkjyJPDk4jECVT0YFn2jvO+7XjbwDTTevWZOYX
	 xW+jC0FjzyzK2jZUQ0W03G1TttjajKOmtjad5AaBo0HVYawZKJLVIg5P0e+NwpCimj
	 AAZnBy+Ra6xOFAJs2MEFV3aJh8NwOxEduzva6e05ZRIo9+hyQQ5dkjLJMzoSfK9WHb
	 8hqv+OeO0rJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AEC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118399357.16133.11589578504121217486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747e3bd9fda1743dacced4d4550e274a91fe951220c673f55730c5f3d2feeba4
Date: Sun, 29 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751183993
