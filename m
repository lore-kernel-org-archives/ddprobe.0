Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CCBEAF6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738128356; cv=none; b=cASrbf+CJhkQWZWTbI/NSpNHx9HknV9KOAzHItv64zsGCDyuwYKTej+99daXCOhknIquD9j2WZZ9w9Kwt05+KXrYL2rMTJD24lU1j09T4kGibRtQh9vb3jo9gAkoN5gEA6e2kH/y9LqbxUoqypYIPTC9si+/SHl4qxFektBfdoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738128356; c=relaxed/simple;
	bh=rKHfZz8eqd9P1OmO1QYugtGc+LYF1dgiZ7Q7/ufajvo=;
	h=To:Subject:From:Message-Id:Date; b=VJg4lfAZZWpA0YVEEyEq1DKDqfZU6gBGyewsUrIUEXCsJ2Lbcd88ESd2zLiWdVleC/lnugs+OZjTBlwr7B2Q95clk4FOieP+mprdI9x7lOEinvbqmf+xz+sZXpdKNSOhKTVEUSypVgsJL5PrFQVDqTR+3kJlq8THetR1PzHdkwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGCUXEMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGCUXEMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B708DC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738128353;
	bh=rKHfZz8eqd9P1OmO1QYugtGc+LYF1dgiZ7Q7/ufajvo=;
	h=To:Subject:From:Date:From;
	b=AGCUXEMD4ggZF6oHLs01epCF6QFC8NCWFMgkfaKKV4+tDF8HoXAsZol+yLzE3mx38
	 gKDBAm3r3qz0VPVZj1GsaoUUDwddHw6RNXdg4DGWjj7Mri1hTKiMamVEmrCdXdNwMc
	 rifZB3DwEiK55AReqxeSONaTIbVql7iIYhtDc4aYtNkRFgE7AI5aDgcFOVVho/mH6Y
	 LLlj7YGmfR+7O1M+/afXQC4vhb/tMiiWxf3bswRcKrjoVdV9zMaSPpzTENnz2kz/S5
	 5+Ulkw5HvtKGZepK98qcbMQzWOP5ejK0Ivuf9TVN2bpVDSU3TG85YCKTosdE3wvpXV
	 0ZUoz65g4nVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A021DC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173812835364.28670.8253289719674393034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb1861e97abd103c28999af1bced24b37efe9de64a5bf21d06b185897eb169b
Date: Wed, 29 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738128353
