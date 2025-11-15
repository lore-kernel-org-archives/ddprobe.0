Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1983A21D3E2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763233254; cv=none; b=t7RG/uTqggkPO7yV9t8CGunB4VSsg0YjHVTAeQLAPkuuU1mvlrLCb3u7M4J8OHZd50niuO3IR3qCq8p5Ui5kiqepzllNeK9eEDjMB8jYqdqSjQixup6ywVyWg9azMykubS1YsDqVYsmh48cz4LwrN7Uyu0qTkQ9xnLdeM3wx3NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763233254; c=relaxed/simple;
	bh=klipVBcmqM3uLz9MJA6VesaIs00mQHkG/HthsqcOz80=;
	h=To:Subject:From:Message-Id:Date; b=R63scEE5AOEOt1Xy5ay+1eyLt3zOEuHxcwzR/r3xfBDrdQHQ19m4F1Q8h1aDt9FHrH2A1KQjgky9UYXjYmg9lT9/g6cbsKSBIYWvOoV4AlXBlEPBRdwMUyF4cQTipEoEcXAh10nxUqdC6LEUbcuFE3/6Z5ZgJDwP4DPDszTzofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQoukkGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQoukkGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BB6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763233253;
	bh=klipVBcmqM3uLz9MJA6VesaIs00mQHkG/HthsqcOz80=;
	h=To:Subject:From:Date:From;
	b=kQoukkGKyi925jjCvBGGbnL3G+plgZtwTE323YGqY38QDKCyM+TYPDIhVy8UwHp5Y
	 qbCVEnSpOJDoM2C1ZkdhD52mjdus0QFl5OsZY4NsefoyGi2nA6dX2wvMacdwTJkxJ4
	 j4vSQfu3tiRFp6baBouXhyHWr3DaCSOg40gR3ycRaYKSJe+AkAHKYOK2c3MFDx+0Vc
	 tEJLptUkxs1BWgMGR7uyNbHgc7tBXoe968I1GxVifHzqjGHMhTs/XA9u4s3lFJVjCc
	 9efRASN2JYxwUBgAvUEZ/FAhIqMX1fg/HpFMeYprDlXVi9exz2VkWXKg4fI73p2PPK
	 zhnVVL3sEK7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EBCEBF71
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323325360.9832.7331307239175380982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4544f2dffae9a5b6ccddc81de1ba1cd29c168cfdc496210e9f408c94d2086c39
Date: Sat, 15 Nov 2025 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763233253
