Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCCF3491D5
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768888435; cv=none; b=ETLNyHlu/KlBk9BQL34AchQgjrTOv9wV9inhEYz8aXOKOSoO3YHM5MwDhHUYAh+oKuFMkZt9xOKXVlbhPr64hmOUyK25diGd6t3/UTlM4Lnb8WQv8l9Z5S+578aDFJnbh1PC2Zjsi/Rr8P4Rjng4hnoZYo+ujht9/gywF2Ms9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768888435; c=relaxed/simple;
	bh=D+cHDfwrbqetlkAm8yOr5ev/ZxJIJOTHu6An0wvk1Zg=;
	h=To:Subject:From:Message-Id:Date; b=klrRqrOEC12x4uOJq81Pxf3KdMK9nPTFlqf+bgOiZ01a75buLVhdmYHu7agyQotJ8bf0heSGTQYrlcA3LSrUZ357z72A3mcfESFjzy67tsryqFPoheM31VLZ29sbe/7kXUJvn+zRZLSjNbPym4DwbRPfJBLiSCPZwGVHmH3i6EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG9gvcTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG9gvcTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BDC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768888434;
	bh=D+cHDfwrbqetlkAm8yOr5ev/ZxJIJOTHu6An0wvk1Zg=;
	h=To:Subject:From:Date:From;
	b=oG9gvcTM/3bojXOBO/cd+vlkmPPfCBF0U4WRhKM9ffXzlnzVvgrfDfydAz4AcL3sj
	 suhG3wlV76+ybJK1MHkcgt3lA03OBWbtT9ao5aoX+4WUD8LqpN+sNVM6f0GYTrGXqm
	 GRvbTQjUGj9t28ivpfkUrOokP3vkOCY8L8+ak9FvZYkO06qHNkHwFNxkLh+NfhVYnM
	 qCGbFCQyc+GZiZpl44B8e6D7JPI66dRy9HCGpcjlzPaXR0chLEWBhE4VcD6DFE5H0n
	 Ilp7iLTGWKU4Q8tnRDu3rdhYblkIK6kc6gDBDWRx+1tigBa5NkntjQ/q0dUF98Mhm8
	 HB6dFeYmthy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91066D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888843358.24088.15425891237843807975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c91d233201ed513a92b348bf15dc10a2261eb70163a658d582cdec3149a2e7
Date: Tue, 20 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768888433
