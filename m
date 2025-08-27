Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157532C15BC
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756279794; cv=none; b=EO8ZDM24N5wIYYGbxvvVg15t90T6ZhRO6uAH0LW+AcuRESDPBcHPWp4lvGFblAdXhOs785mPzCWfMXdR++oGCcVcJUakxAQsoiorNQpFVcYUqJJ6nz8qXwDdTpH1g/WvKbYX3TOjmDNTWcrDCaMEG7IzrA0hgLgWhTCbFbf3LEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756279794; c=relaxed/simple;
	bh=bf7vg9hkCdXSEObVyngZA6hxLHI3hNblAVQRvccN7gA=;
	h=To:Subject:From:Message-Id:Date; b=QaxQtRRCnebOiPpdefa+iddXDi3Ej0jzfZFh+piSb/iwUWNmZTazXUHdXXKmQyclUvtC92X3mxmYQZctiPcs0ZUxXyYwGZXQPTlYfVIZC+6nMaSufGy7zmwaDtD0fH4SI3hoaueGg6YK4tMd4GrlrH+afWeoadl4MzC4vJHvME8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABSCO/Rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABSCO/Rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756279793;
	bh=bf7vg9hkCdXSEObVyngZA6hxLHI3hNblAVQRvccN7gA=;
	h=To:Subject:From:Date:From;
	b=ABSCO/RxmT2skRgSjXG5f8jUIm6GVrvkAC/uqLbHiI0qKPjUkS5BzGnWPEdsTbxiT
	 XfZFl560X/JP7YCTZPcx3uPfipTTen3WlCNidsDtON6aHvPi1OWxaPvNhdrQKWa6i/
	 aYlRTgcSfXJBL19EwofaDpv2BkU0aHSF6kDXqlFQfiNq5VII7wtPOoJt7mxlxMx5vR
	 MNIK2nfJhMEHIqvEtEvPE6pfR8YsWpl485HXGK/fBWLhTbH3VGZkbLyLhkMFzuCLp2
	 F2FX5A4TPApGFB/mIe1V3Lq2gYxOls0K6/g5Pak8kmfuTU9b529jBTvNKR5cI4kI2u
	 NiMye+k1CocZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E124CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627979357.11021.9890914134465957929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cddd4831adefb5bf599758e9dda9ba49022dfc1213d610aa378df735a90e035
Date: Wed, 27 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756279793
