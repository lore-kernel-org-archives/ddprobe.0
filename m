Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0351BC3F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759553994; cv=none; b=c2pjdj1l+1zbfe2A5AWq/Xbg0qu2wn6qpd6eDTuxeDmALv4Zwa6Ln+lFOtBq9BiS7exTyz+YBlVppDSjTx6Rqv3eJhb4S7sNWnXXIsynzw6JUsYEfiju7tdmSYFv+BW5eQrhnPodMeTA7q75B6DfhOlEIhK38WPTTjc0Sf1rbGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759553994; c=relaxed/simple;
	bh=IUST/YW0EN/0ruDG5by9o4EVw+Eo7n2ADlWqqT8GcZA=;
	h=To:Subject:From:Message-Id:Date; b=IZd2OjCHplCbEO9BV2ZL+UcL+7oY1M+LTH/q3/WGRcA8UFXmNGMAC6ASMCgMZb84uHN09Qm2qgLM4q19rcORTse+GmwCchVND8oPoFQGBjk5BcNoCXOgeGT8ZsP/E5DIVcEIa6DmiyASosjmQ6dVECQCLMSSzd739dDKihjGufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4PlOBT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4PlOBT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759553993;
	bh=IUST/YW0EN/0ruDG5by9o4EVw+Eo7n2ADlWqqT8GcZA=;
	h=To:Subject:From:Date:From;
	b=i4PlOBT94JDwl30wAUYGYDhyzMeonSHcNYHY2GYsBQMeKJq+50W0Vzm9d+hgJdK2V
	 NnmjZD9F0CqOzwYjZ/Z349/F0my3sQ+8qTM2kOQpRB6IgihIF9SmP/ArE2f/pIAW0c
	 UR52o5zkX+K5vS1tUYqrW7zOksaMRhBtHsRPsZZT1MiBBGZTrxg6u9DVnyOcx3FHTH
	 F9XAciQpBcm+bvNK2moK3h2kXQKp4wEz2lYBv0avDI471+Zialw5WKg+4lvcAADDix
	 44xY9Cxcm+lcSTug9Yy44WEfpYYKXEJVSU+0lsKARdgL4zHS4RTSM8OuIc/jn0uwRG
	 FqebvtUJwei5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FBECAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955399357.21194.2631556085418040453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906e73768948dd2459a7cf25f81ca0615a36bcab50ea4490140f8a5a5f47cba0
Date: Sat, 04 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759553993
