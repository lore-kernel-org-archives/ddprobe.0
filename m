Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487C014A4F0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784180914; cv=none; b=dE+h3vz78Zi0KCUS394O5YF6PHhskBI/43dl1HVssVNx9T0dG5BHTKa6jDqNXI/Key9zi3Z/as9wGFr4lHe2F45WOAkLkkwsod1RnteOv2XktjK3eEJ/6A7g38cl8iQRy/W75Hisb26R0bs3dolAyUpwEqRRYkBAU5hiej4UYb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784180914; c=relaxed/simple;
	bh=u1M2JDOTvwDGfKhGsZ09GFCVYlT5Ba0KSC0fOTsHIPo=;
	h=To:Subject:From:Message-Id:Date; b=Rmanh3E16qCblPw/Iuq6L1IS2uAJvK0jGydZiqwUVvsOeuGc33rJlMhnSu9IqM8rk8Gi4TZ71sUzMal3Ik9q8hLb+kcNveeQBXqX/tUQkqgYOgbyExOb9b/ov8nyUty3wOSyqkImESLZj3rVdcxAz4RPvsoY+DMpUh2a6NqepWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4SJRLrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4SJRLrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC400C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784180913;
	bh=u1M2JDOTvwDGfKhGsZ09GFCVYlT5Ba0KSC0fOTsHIPo=;
	h=To:Subject:From:Date:From;
	b=k4SJRLrGJY4oWIhWl3Q/PHqhHLaHtEeFchbWtkXYqQvTLMUW6ujMPf5AlZXDnVWRw
	 PSkIiMK0o5gMITkILu/aBi2SOiZixYBns/8gblzxADvqEw84zBf3S4v9A4DVF2wBNR
	 cALo+ItIh1CPStq08QAxSRhylU1XXOtuKWi+leEVQpcC6J2GX3b0DTKeqSbgVixhkz
	 6y/9o3cdADceqxJJpb5N1kP0KhRA4m/6ZW6Zcx1cX2MSAUBvv/XylWqstLJc7Ko53g
	 QXx1/d55/MfeO0hXd2OdZZC3oDUct+znepsZ5sbdW0dSqLcGrzTO3VbY80aNXdZQ3A
	 mrLaWyXzuspVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B2AC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418091368.12585.3324779607109072969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d32ce21c0d32984c503a4ce883d00b8b9d76d13ce14bace80677e65a3a3aac6
Date: Thu, 16 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784180913
