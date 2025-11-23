Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D75535957
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763905914; cv=none; b=pSPo6aKE6hfkuhbNQzYTP3k0QkoH9NL/ovQYUtOnjzwVWjwhEHol/EKcxqUKMcdZHvlTTRbphHBkYQDNA1PniWlu4lkVy34FzAMSS04rzNzWga0iK28Qv7mWdw6UMo9IQlrtyzX6dzMKkmRQAWLLGlmd6xEw6nRpfAxhn3EWm+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763905914; c=relaxed/simple;
	bh=BfkHNFGTAaRbz8UR39AekXfuWmC3kVKU887ubdZZR1w=;
	h=To:Subject:From:Message-Id:Date; b=hOnyyEe1CpRiGBPuP60V0WEUBo8iMXc5GoktoxiOUAmJgOLVb2nXZe9RA/7VSvmoIJ0Y7Va9ujpGROA0PcP8o325wLDEUrf7Iy2Aw2t2bgHRiZO6so6YUlq9XR+250XypUHTU8LiT82iDCahDyv5mct3T0ohfeF3NYY86C4Oa1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZRtG6rO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZRtG6rO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5464C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763905913;
	bh=BfkHNFGTAaRbz8UR39AekXfuWmC3kVKU887ubdZZR1w=;
	h=To:Subject:From:Date:From;
	b=NZRtG6rOqKw/C0BedE5r5lZUo4Y/nBMTEUslvaP7D8mGUxHU09j80/A1FyySQVgrZ
	 FeWkL4i+75c46fgViNP9KXby48eKz6KP51PTuYowhZh4YJ9NJ3gjHqln/t0Dzy1QEb
	 dUBp8VPoPeIjGK7hFdfLcF5nLmKs+Ol/ORuWuYQWB77nzs1JvawhPXNwlLNI80MmDz
	 /jkDxGgclK4i6K3w+iJVdYezxv4nEQaC5fRqh4dXhzsO2K0nk3EZX+Bv+7bKY87tbl
	 AcRpRmAPKtojAa48Uc8LyK42yzhZUYHH1vi1aAMuwH/tFg1r6N5XP98dJC9E8TMRqP
	 YDyLf0TlRqh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1761CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390591362.24210.12289648349742604842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9768d724f6b07fd7796162bf46113a21c1b37cd88f3d0dd1d7018a87ede2ead
Date: Sun, 23 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763905913
