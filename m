Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D629A5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736920554; cv=none; b=k8X+mt9pIV4gOL3e/ISUNs57eAW4xVl8P9Grem68vYYCk6JBsyv1JnZBOqo4bohbzKgIycPVz2Ubp23YyF0OJg2cy7oXY+yi/F5J9rAvCaXEReqqg82wAWZ7hQbORHXfsxc3qEDk/bLNBS07euHjQNL0HNkiArmJN4qs+8nW7bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736920554; c=relaxed/simple;
	bh=nBgjaSX8bmT0/jAtmK829EN2K950GP735FDUFF4zVAA=;
	h=To:Subject:From:Message-Id:Date; b=OgIiWg9x3uO4Xe5c1j6EccCSZFFWkq2nbKYgpfXphZOpTsKEp1AHzA9+ZktOnCW2Cf8Q50cA96r51TipNlRpwHvsBkZvLSVCvGO780QWu11XE4n8qmpSJWgplDCEY0VoCilpGILJKdy2/dgfXwl9MYE86G1hcuPUOK9XiLwmLp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5IcnNzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5IcnNzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736920553;
	bh=nBgjaSX8bmT0/jAtmK829EN2K950GP735FDUFF4zVAA=;
	h=To:Subject:From:Date:From;
	b=o5IcnNzwbwcAt9WGwCFGeLfq8Hyle7QEsYe0oKEljP0SX63u4ziknyQyRMZzLA7fy
	 So5yAR3DV2r4n/8IAHJGZGbhWidZLFJ2snwV/b8I//fmGFU0JGxtLxQ2lViR6Yvkfe
	 HWWI71181TymEwDGdELjBb2TLyajhSVJp5CFWkF5A8+iKFhcWsjMz2ps1LgOZToYc4
	 fpEexsvavEjRVohXpeGXm/uvNEOdPUr4G4a10So8DcAfWUq6to/eQ9DqcvcxmUVSnk
	 H2gOUFhpRqtYudPq+zhPACI4T5rv4LYx01Ps/PyggHHvXEcDue3Eezf0gdYDCDAHnm
	 VnWal8QiUH7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91329C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692055358.24407.14343702888570318350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c677336032fd27a37ec2f74c5a35e16e97884c77d0a254a8beffe5f91ae518
Date: Wed, 15 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736920553
