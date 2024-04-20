Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5890A7465
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713590423; cv=none; b=sUtZw7aZN3evkgbHDsBkzeGhusLRC81zbyu04VVJhWxLqi9i9sVRqetTVyiyc4wz6TAnJYtSGyuaVFGv/JIE9dAJuTG5fOEN0ezSVCR3rj5QR9SU32dVfeWOsK8/PbRgwgVUL0EUo9VCo3qN4YeLBqOw4Jueg4LWXjMZqBTHdGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713590423; c=relaxed/simple;
	bh=WJdRI1pEVwmmTk+mAdzDGFYg7stsppNhasjwzJXMrTc=;
	h=To:Subject:From:Message-Id:Date; b=hDRgw+hULWTdrvXzWlFeuZG+7IWJd7NnooYng6OQnbeb7amw2i4p4PykcGej/5Pwnx0DWyxZWLHT8BwG92+sm3rUcDk2cnGUhCxwHIviUcgjRfrvXapS6+9mCrrBTypiFL7LRzkjIFH6PvF6Zi7Du8cmdfohy5dVGTqLUYlCzqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+d/ATEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+d/ATEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9115C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713590422;
	bh=WJdRI1pEVwmmTk+mAdzDGFYg7stsppNhasjwzJXMrTc=;
	h=To:Subject:From:Date:From;
	b=K+d/ATECGaRJJi1ML9y/Z9F2judOmM4/gCI4B9+fVGPedAa4TQ/oace0o8FfpqLT1
	 SJm76CCAuWOhbo32c5iCci25I1V3WuQpR2CkppxnUSbTkQwB41ORZHHRmkC3ycAutC
	 gRlM6ZOohVgnffdIAyFOMRyLt6nAWB0QwNF/V4VbJ1qN7x9EsSWBqZ5fCTAcoHnEOf
	 h7FQJ3hW8+VRJBN0T/KSUHNT4Np7/MdUVOWNZATAidd1ToQVq3LujRpNZ1g2do7JFQ
	 2Qf1MwsgXlFixRSOWV+VS9wntSR3dggBuYLxWKMEirEAkR8xW09cDu7HXUhFPoCbAY
	 pZmxQ9r+XK0Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C304EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359042276.659.14738242036346450927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce02b76bdd8b86041d34d8c6d1bdfe812855bcff9541b6fe606dfd98cf45b65
Date: Sat, 20 Apr 2024 05:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713590422
