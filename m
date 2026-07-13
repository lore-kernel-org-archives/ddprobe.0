Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A30D35202D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783967314; cv=none; b=YYMC2LqrREDUGWCiBTNdRqYs4eX0/gnY18cut+/8TENYOnsL4zN5e3AA1lQNEPEsRidNP8RTJy+LfFbeKmIigdTUzwKesMbjPIh0ocFdenAjMhtXTaavsKfZU8W2B6qxcSj4aILVYpUSkaFMxGFJsd8r14jfgJey4XGT9JfbeAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783967314; c=relaxed/simple;
	bh=q5Ga7O0nSnTZmg/ELYkt0NVETvUPIvL8lHYplfADRkg=;
	h=To:Subject:From:Message-Id:Date; b=Pnx73punSp67magJo0Z6tj9/Y9/2Vb2WMH7mLQDZolEn/kTLyYJdiyWXvIY8T9a3qqXMMxT6qbGIo7CLkJlYYCK3bIRCOQvnFFIXo4/pXVzGUmxRhJ//RRjy9CSjtH3aIXDQcov40ecwXCgr6VNOo5Np0VH4nVO52+Mr0gOUF2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0mvx5uV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0mvx5uV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAC7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783967313;
	bh=q5Ga7O0nSnTZmg/ELYkt0NVETvUPIvL8lHYplfADRkg=;
	h=To:Subject:From:Date:From;
	b=B0mvx5uVKmFRnOkfG1RLjG5Pf7sEe7CkZIbAOSlcJc6uE5MfNoBiSyzVbqppf5S+j
	 DeSD9XHj2kMiMDH+R6Bo9fNLINYnfXz8uI/m7a+cRpOs3w9q6s2luoWGi3bAEBGsRz
	 V+m3QszV+C9BoRddiouM950+wwIn86396qRFlGB0A1vrJBAkw0QfXDqlS7ehZkEeHT
	 mT6mVoluXxoGxfR45ty9IBo2beoU5z6Ar0trs/cfziElPxEd83G0vtlnMWGEbZgy0Y
	 Rw3YBMadYDsHA+xmvwyBovR/sSfwu0UlO6Kjtb04x04YpdFm8iYPdI9O78kgVihEPd
	 Ph+LX5bMEH3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396731369.3825.4763342767365171202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fd403da783af569bbf47cfa7e9d8326ce225df9b50eeb06cb11ee10fea14e4
Date: Mon, 13 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783967313
